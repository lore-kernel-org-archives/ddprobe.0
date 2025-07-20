Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEBC7260A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753021194; cv=none; b=D4swZxeXjj06EIKJuKhqzjZDvGRRSivYsn6VEGDFClxQm5ncPBbdmyidk/ax/GS3+8ftuLQibbtz/e/0IPvX4SgKfAGBurc2spJboeoL9TUGVO+DQ7l3ltxcMHzU/3+nIeuIvTH/CELig/OiGDjHLcbmtD0eGCBlexuxv3AXTLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753021194; c=relaxed/simple;
	bh=+C+AoVIBk04wVLBaCPnjrejP7PUVwtdtvB3ICJKnHeE=;
	h=To:Subject:From:Message-Id:Date; b=sMItoD0mJYePFL9otd+RiuPbHoQAQi/DjAQJB+ovkLEkHteLqHwEHsdwQnR4EvJlayzmDn6mbYny+5F3nNRWFIzHVVmFNn43o8M0ruMA/Kw2DJwjFzDKRCpWNUFbjzy/CG3dvGYobsC9hjCuo+BRCLjUd/doCsEBVqEOYdtEHmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDmQWoFS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDmQWoFS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E34C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753021193;
	bh=+C+AoVIBk04wVLBaCPnjrejP7PUVwtdtvB3ICJKnHeE=;
	h=To:Subject:From:Date:From;
	b=RDmQWoFS0WogLVIjyMaw5v/UGBPnmywcwSxKCCOD6vsJZOFbU/OwfsclDOPyyeBJc
	 0Sd+LAP2ousctiGa+w7ad9elNE1RZ0leHbY0VY9FQTzoklG/+sIoXsNyYecOdC9Flf
	 iHNfnYx4/OBauzjLgbsjj3Uk41R8JXQ/i+u20Qu/w5Dqz25l/uXdqgZypUZETd+sgc
	 IntdCP57gL7NQ1mKJ5dyDLvbZrvWINKkV7zfNUvI84EhdCR7OPh63n99J7E8keCisI
	 SUvvKTwtUJJG99gT8XC8D2bGFlD7SYq4VVJyLCkOHPvHEMUEZ8qjQhFqMfG8t5bloq
	 BzlXqwj8yQGPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9651AC83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175302119358.24336.3386446403000264877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9963f89050caebfdb906797ee02c5618a05a6ba586001531babd3a4d10b39109
Date: Sun, 20 Jul 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753021193
