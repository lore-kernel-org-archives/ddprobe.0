Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42243356779
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 21:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782941914; cv=none; b=RhbHoRIxihgzl3i6mFYxEhdZ0747U5xcfzqKw5VF8iQYGpFbfJ1JJr2n7bv3DdsPA1w3tnmUICrZnuiSLxB0VkTenZgHLT9aNXLiAomhNnWCEyMmkW/yapWCTgj30VGo56Uv78S51jqGFsRh8AQm+ZU59l9nEJ3KbAWC4/7N0g0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782941914; c=relaxed/simple;
	bh=hx70HDzdULiSYqggmenjSRxevM/jG3yyCIDaJnP6HG0=;
	h=To:Subject:From:Message-Id:Date; b=Qwm7OL0vrrU9VsYsaPc1lUJ9NmzXVyEyTMxcMmKBkD23v5vHV/OL+tatw3ew4nQdDqf2wO72j33VObySIS3b3UpG1KS/Dc8wUdpbGILUIRwyx5WeiZC6K/gm3yrJXEctiyaMO1u/6s/7imBufT5HkCb9eKQQVT7c8jEn8ze0B68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TAa2fA0Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TAa2fA0Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB34EC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 21:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782941913;
	bh=hx70HDzdULiSYqggmenjSRxevM/jG3yyCIDaJnP6HG0=;
	h=To:Subject:From:Date:From;
	b=TAa2fA0QbiFS0QqXObcyFaPKWsC5yrzA3dYdib+tbVIPLSNG8uw0I9+9VIfwXHAPI
	 8U0BNQ1tZDKlpoUnYcbbAN4ll1hL6j9rabXs1xFarLY+j9McNvWnS/bOtA1lbT5TG9
	 y8SrXx1aeFRhgUP2sb8KGZZ0OK98ZpfNWA5ZqDBEAmke7kYOo9lJKKk0lno4lchXcT
	 NCRzM9BAvAScAF2b59s5N3uWW48+cMvxYCLyIcAp24Cw1Vi/kSUWj46pQoik65zhHl
	 aHqnq8VyEfErW7d0NoR8MUmqF5cEXyZ6Asv+LYqCxz8TVYCL/gP4PKQ4sjlBVvrOC0
	 KXdej53TzGuGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13CDC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 21:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178294191369.18808.4482143529232095169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c0618627dcba46be73b5053b21e63c680a4995c0b0ffae9cecbe67fb481935e
Date: Wed, 01 Jul 2026 21:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782941913
