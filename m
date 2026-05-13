Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222CF391833
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 16:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778689834; cv=none; b=fE9wJw4BER8fncW5U7IcHdEq10ApTUhj2Ye2l1H7A7XS0AHIOuLglO4lX2I0r+sBqSN70QqQomZpkB/pA5dvt1E9oRETJs74eYrE/caa+ihbOHZRtK21xVEBnox9Ncg6W9eqRybdlcfDhbgk5Nq0xKScWyMSFpn3DffMhrxczDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778689834; c=relaxed/simple;
	bh=pmQKr3OlLYT5R+EI6JZR/km/EZdzJT41RgTWDg+88e4=;
	h=To:Subject:From:Message-Id:Date; b=c8Ymq5nONdmTRmvoD1ahqRPHdTJZb9xfXWSCilur8R06kzXw9Ic8eY7WtfR5ML6d7R0hrdLWR6MXRF4LIbgIZ50zkYjaNX1kOtLiSfpHihHItl9czqOgh/aQwo5BSszusE0jF7XMAd1IqCfmuoBlEQus03SmOKsWMdzyyODYngQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hd+XXSLR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hd+XXSLR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8DBAC19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778689833;
	bh=pmQKr3OlLYT5R+EI6JZR/km/EZdzJT41RgTWDg+88e4=;
	h=To:Subject:From:Date:From;
	b=Hd+XXSLRR/YqmEsnV7ednJS1ejWrmgEdaq6kHNNNv//8dsH4ydsuUehsN+fStQAjy
	 t7GHkXRiS3+0/Sit+y+KXSd7rTe4MQW4gi9Gy917N281dYteFFlbz2ciSEH5ZAfuG/
	 YckzY3tsUJG97yEhfnDNmXBwN7rmuhe1lqKG+wwKluQnWiWshuqwjxXOztclKRYgIh
	 dhXFo1uLNA+GOxu28cMiOgVtjLxUWa7Zviwffdp4FWrLyG3VO8kUSTaCW1XKODP54s
	 5dzWLeXUoWTjOGdqXlzGTwmIi4bZfoJnjZ0fwQxFhF0ucRQ103NAi1IJvQqyeVNC0E
	 8LrDzJX/HwJPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1ACCD4851
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177868983369.18283.6010088128928989169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 088ccc370876c70c5b4c6ac801a248cfcc17f85206e5b66a00f98fe99c3d8450
Date: Wed, 13 May 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778689833
