Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5428C2949E0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791307834; cv=none; b=fFcXlTUjyZ4Otf3IvoWPAjzhLH8+ngr8UxLvrUlO5a/F6xeJIfkA3pdq6gt8CuWyLJkPh4mxXoH4RTy5gTn+pjI6lPxOXTBYLcBvIah7iQdWTlLtyIuRwqY1fkzS67O8UTg/gcfTuw2xL2b1qpfRicEPzcrueWmLasx+FhysB9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791307834; c=relaxed/simple;
	bh=olhtCmpWaEllMuQJ3fTDlduYr9Me7PTR/Kwep46wlq0=;
	h=To:Subject:From:Message-Id:Date; b=a8XEVF4wKgYbb9B8lGSyzEVGOfUR7EYAcL4mGBicuzFFOELxqdlqKjI0wh6Y3SWzkGVtgH+8hOMWI/sZWCYLw5a7q3nNZhBSKewUsM1fSp+dmfTTY3XwKwEY+f0OSdX5P0yVCc8/lTYZlKYWXjoAL7kYm2gSkiAEyan2lT301Ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pr2ApJC/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pr2ApJC/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC6BFC4AF60
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791307833;
	bh=olhtCmpWaEllMuQJ3fTDlduYr9Me7PTR/Kwep46wlq0=;
	h=To:Subject:From:Date:From;
	b=pr2ApJC//nV8dHUTGhxxeJEr5fMYC3w1vw2V4rKygOZ3D/V/zV2T0YPayO2nA1Uha
	 7BRNFF/KczXZoSBg+hO44QkdkCGeceNY+xEiDn7aIFXb3oSrbvyHm82H7nSOxhimSw
	 vgPqDsyuWjWZbZJdL/Q/h0na4hmkBXCLfXZy8uVQtZ5LMUMsXa8Dt5RRCF1SShKpzd
	 TMEP9FFeQwR+jfdOSJevix4/LwTp3+7ycRIEUCRidKQH2w9EmFB9/gGlokLIMq6f3d
	 4j+idReJG5kKaHjH8hhdkIcIou9aiOcpGdOm0/zCXd3nVdfVqxJ1Ljxx0/nmgRPRNm
	 G9mHSbQYakr1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0FCCA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179130783368.22807.1179743863038862977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac0da8452bc0f991cd3ffefde59abbbcf2451024571e54734432fb905b0315c9
Date: Tue, 06 Oct 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791307833
