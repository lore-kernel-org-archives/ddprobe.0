Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4996AD7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721901354; cv=none; b=gxHAwTAd134YwzvC1mYkmwHIOIAFOwxpz0BXjdDCOlMtUj42EbURbT0QXkFOsbiVksLw6XJyhlb/RuWqwGUyyvs77//4/ii+Q5yYCzf3clivQRN3mjFZSlKo7YDjCRUmyxrjea+6yU88xf0odl4aqWPQlCifmQ2D2VTVbzoHII4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721901354; c=relaxed/simple;
	bh=DUyIhpBiK5XyqFFieCdcqtCY4zHEA212TSIxlSFm9Es=;
	h=To:Subject:From:Message-Id:Date; b=LE/WpHSJChcoerQCt8tFu95Px5gMZbEju4kxVgbxtZjvti3WypmLcfRImR6t3FBUtbJ0jI3RcNDqYdsDks22Dm3ANvZNzJhPzVdo/0++wdb28VIzW3g90E5CQZDXn7AX32Tg1kDkuwiCHqDyB/VGIAdHiLMI52fLkzbAs9bSEME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lu1hFG9T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lu1hFG9T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E72AC116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721901353;
	bh=DUyIhpBiK5XyqFFieCdcqtCY4zHEA212TSIxlSFm9Es=;
	h=To:Subject:From:Date:From;
	b=lu1hFG9T9mpj5OZ9dvNL0DZHeKl4RH+lO6uPyu50vQeNIHq9HyWDh3uJgpIawKYYW
	 A+eEEDmOceDududprTjk3ktjUX556oQGMl3XQRBIOt70/485iSjomrdJ4nYLSORkxw
	 Odu/bKcGbvAmvyjk292EUZL7WCpcoQpTdhFX4qg30kEUvMYMV45/taEfFAeCxXOB+x
	 6kdHNg93Ve+pfEgqUXABhPeKyq8EDakfnz8kMsCVJCavVVYvMOTnNoZv8JDEhutBqK
	 6pZloutHHg88BBVBXUkgweMbLB3fnnJIDkZcwfb3bQCa80yQwmf7mIdlLpVG85m4pf
	 Eg3UCi8Cm0BoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F56CC3DA5D
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172190135357.3942.1369918583836430664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76c4a706f6f0edb7cfe9141a5b43d2170ade4475d9b269aee6e55ef6f2910330
Date: Thu, 25 Jul 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721901353
