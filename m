Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D2D284662
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789997434; cv=none; b=p4yiIm6zb7d7L9Pa3+vyMzOYFO7OzpqZ8cMwbvLxk9gT7XlW5/PZyTAZYx54OUEU4YTQ8i+z1m9Hl4Y7gERd7FugPTe+sRwfPlh3lVg3dIS/hTGu+XuvQfPb8IarP8aHanvyscwtsdLoV8Va8kyZ9BQtZwX7JuxZ8cwuMTVeJlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789997434; c=relaxed/simple;
	bh=TUEi5tjWi1jiu1TsoOFndBcB2wfds/9k2QbYsCTS8qg=;
	h=To:Subject:From:Message-Id:Date; b=YEUtRfoWI58GmzxEbBljy+ZZFXVTPpwCfFsJs6+qg0bn8cRAuoEqGDNcy2XEgwccOafaBoOLaI44xqd+DEhb13UGVEn/9PEPz1p2KO/6QgvENKlrtwliPFwJqQ0H70dLw6E7uYh5AyiNzwANJDa1JQcoK48LW9KlQjVKGm3/YFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSUd61bB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSUd61bB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60F3C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789997433;
	bh=TUEi5tjWi1jiu1TsoOFndBcB2wfds/9k2QbYsCTS8qg=;
	h=To:Subject:From:Date:From;
	b=tSUd61bBv6LA81/giXroNrJnJM65VALMVCtMaQrc0HNvfX5t3HSGaHiZw+yHYXzBY
	 Rq/5n3V788Zb0VHE1JJj9Po/G1q+bSp/cWsYXBbfVYyRIO2ZCbA7+uWjJvpqH1pAVB
	 HvQUZdHs+GEDJuDf7EWI/juLYB8y0eLICQRrejYnlB6XXXERKlMmp+5ZLXEVs2sUx0
	 SM4aNbyV1rgmREf4kKM9igso/tCBT4rEuvcbxKyIZcbQb3eAdaei0p8rKX72HkxA4Q
	 s1HO40L4A7jtjeM6rmaKcspwF92EH0AaEMfHWlkrtebiLKmLsdqtJCsPauLnjBwDmo
	 6rn8mgJcKZEbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CF3C982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178999743371.8041.17185919871019037225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe7abfa06368af0f6e36f682d140f0cf9356bf3889790522721b2b9c68ef68c9
Date: Mon, 21 Sep 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789997433
