Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D7559B71
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743475794; cv=none; b=Vwluy9OzL3P2f64ATEygiN+NVdr6x4t0oRbhAX3VPfNNWsrqqN771/cXvrUpA3/nBP4LGkuXhW61RSnWayZK7bJAPVKJd7qzH9Or3M5wDXxLsv9y3oY3ijRZa9REZQloYlPWgIHSlzgO6u2sJjZ2/A4KhqHiWPMRaoSzrwo+v6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743475794; c=relaxed/simple;
	bh=CKpI1dJpbJazuWQ/bzcytakR8BUHzs3J6Hw0pqYpv7Y=;
	h=To:Subject:From:Message-Id:Date; b=DkJnDPF2OePmfgJFI22KqMwskDIarTE8QUnjElWHefUyaCa3k43IE3uU1guZfvaAiaGNXUrQ20Rast134ctvrjqd8boVBgXCotpkBIo5L3BVzmOGW8yOazTwOZGmdNGxv8XV1T7uGgMTjHp6iqSgAWGwM34wMtxNAC8dMwBDito=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSLvquL1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSLvquL1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21D5C4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743475793;
	bh=CKpI1dJpbJazuWQ/bzcytakR8BUHzs3J6Hw0pqYpv7Y=;
	h=To:Subject:From:Date:From;
	b=RSLvquL1J+aukg+cSPcgv9Hs5jgk8CJbTLpKJxUE6HV9YEH5pyRlzNIP8LoA6/Szz
	 ffs4qRVyvcPvs8t8v+5khZhbmt99B5WtvZhHhdokPAOT36toP9hNUmCB3WWqw9WI2k
	 HMtlWFEHPvm/dl+Hf8r0NtoCdlg0wv6rZxI/JyMyBX/vcjGaM8jMMarJhrsMLoVWPw
	 Ef2HBxgCEyd+lGUZYpyjpNWATscdI2lamn0hIxyiA0JngGU2KikoF9ZXsT+Rp1eZgN
	 JWNDhEMDLMom2gxfFeN3g2dgix0buqK91CQ4rewqC0A0y2RHakdziyTWwnEMo0kO7w
	 pVf667zekuVPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931B6C3600C
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174347579359.6858.14233700159905104741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 352079d7bcee0a32fd0dd486380db2dccd05c223ab4cf6faeb21353a9a872a00
Date: Tue, 01 Apr 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743475793
