Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DD218FC92
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745509794; cv=none; b=EKDUFG/nv2/pMdvPhxjyWyjUFiuv+nlTWgeNl6TzIcDgx0RRKHzbNQe0HVJlBdIjFlu8ASWLw8KOWqcBfeMPGRwB68RPtsZaCG9RTCvvVNRJHZkAdvgW+litAgJpkKxxoLm3RtU0OGXfbsg6u+ztXbEE6ruWeOWekFglGDeGld4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745509794; c=relaxed/simple;
	bh=ATjtGZIx99AgobzABSHT28vdePkWllFYgh8fz/KgC2g=;
	h=To:Subject:From:Message-Id:Date; b=Kz0/q9V5v/Roqxh0TW8Zf9IEtvmEnie+JmR5KXVZBRezzBBwC+38Jvx7H8lybVYNWX7erUi+qJ2rmOQ60zffTS+uAM6BoePtaLGfuHGW9ZNwmYM/E8hePl1oDYOsoY0Qtza43eRKNj7qPswjncJxgQ/Z/1TVJ9VE2IirsYNiPpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOWyN1Ek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOWyN1Ek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6736C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745509793;
	bh=ATjtGZIx99AgobzABSHT28vdePkWllFYgh8fz/KgC2g=;
	h=To:Subject:From:Date:From;
	b=XOWyN1EkgXfzMotsoNM0M+sHme90z/4D7o7+xdqA8GXP+8lnvduyfGpa1iq+p0cdW
	 ocnLe1QVrZ7TNwme5iVAXWb2JFZYvO+0ZDWCyCsFGfpeBEGPAFPAawV7AL/MdQpPhn
	 eSplmyBTco4AgSCG/o+N9VfipPPdD0JYndjANENmcaObzzY6aCAtVvjr5uNX1l5m1K
	 8jUtoNMiAcRJI52UyRPlMcSHeCDvHZewgptwd20WnR9weYg2XJwN/ySTEWyqxtKTIJ
	 YqUPqBiGtzut4YmcRubXjt7sOBBOxBgM1h+RidqRXuEhurXyM0HN4+82vocG9qQnvX
	 pX0NdE80N3wpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9449AC369C2
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174550979359.11322.9716486531796605800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0aab182a0cd3abf2ef2b69167877aa697a68044904d6d0ffb28356471d766c4
Date: Thu, 24 Apr 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745509793
