Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1361EF0BA
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 23:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740959334; cv=none; b=Mfgk7W/GXooR7+qDkdHg5eKza7JOtPKVGLYmFxDtT1dlsB64bJffR5SWH4H/CfDN+00yvFxo+fLhnzOvQrhkRzo1QAOZL8tngn4SiKwjwtY6jrSVUSOMlw9JS/FZmxqIVD92whJ2o9ASlWizb/EAmUYfEvVm24+j6+8VqVqqm3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740959334; c=relaxed/simple;
	bh=anOsrALJf6wVN8U8kradzuWPZ9N5bxi6Cj2NugAeTsI=;
	h=To:Subject:From:Message-Id:Date; b=KXQx8+fdkC3eJYcDUKLNPJ5cjZdm00QacD2IAdsO6OEHE7tPLyyfxt/yI/A6nzhoAg5iZS8SbTSoWz7OIV1Bqpd2pnPTgv0Rut8ZPSmMKDrN8yWjhgSH0m6yokn/9IJ0GOFN2vCZGF6THtqykEZUUnzCqJ33+J1s3hVRBb/+KoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mzSE9LAq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mzSE9LAq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB279C4CEE2
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 23:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740959333;
	bh=anOsrALJf6wVN8U8kradzuWPZ9N5bxi6Cj2NugAeTsI=;
	h=To:Subject:From:Date:From;
	b=mzSE9LAqKJ+BBtNiWKChO2fLexnf7eCJyNvnPc5fxp9VI770+74hlxspVL3fGZFMF
	 wOsF8bPOy5vOLW/5dn1rzpb+Y759BEx47FfZSJLdO/WQogIT+4q9hDOCpeFTQugWFa
	 Ub0DdYqoS4Z7vOsWQMmBgTF1ss866W86sOmxh11hpW42nY6SugvYJQB+vdtoo5vlc+
	 10z5EyMZi4v5s1pQadznONphILgbNoHaYNCbLyYjZalUdJIt3//pEOTFHyGpJafQxv
	 twdbIaoJwVdyNFLqvyZeOIHSww4ucTNxEJMfDIQKvxvkMMESI/lLKWF7XKJn7KYAoo
	 wVC9xgpF6in8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F2CC19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 23:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174095933359.9842.16502548569167036847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3511a4b1fb80fbf101e3bfe082fbe104e1fde114ad29a7e1a2c6a4a3d04a3a3e
Date: Sun, 02 Mar 2025 23:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740959333
