Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339E31F12E9
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753538394; cv=none; b=CiYyt/8lsdj7A8tnOcIHySBdHTiinxHtjBDCCRBlRIUx8zu+NxR85z7dezdT/Mxny3vKgtmnAlDrHCDXmY9sph1NTfjDKmincgHwR/jg8qX9fIdxpTOFsA+M7MD5emAzyLe/G2P5Ofx6dCA5W8WROb3eRKteL3YjS0lL/x2+7t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753538394; c=relaxed/simple;
	bh=MnvEGMNDf2gDZJFLIBa671nAdPAwa9BEq8Et2X69DNA=;
	h=To:Subject:From:Message-Id:Date; b=FYOfl7Ljge8DCOONp+eNY9kedPRFx02rsa3v+EIfXE4weDm+1F4qKy6PMOwxgspfpDnWg+u+pJ2HI78nRRLVo9w/FzWLCriCvxztEo09IZmcDDGCf6+6/PHmkaD143/zMCBUEapx46Fj93eqASWf4N5P4Tbw7uj2RWotZBhXRyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pQpHwXJg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pQpHwXJg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A368CC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753538393;
	bh=MnvEGMNDf2gDZJFLIBa671nAdPAwa9BEq8Et2X69DNA=;
	h=To:Subject:From:Date:From;
	b=pQpHwXJgybV8JAVVdQL4Q7hjrclHgiunqXLZHV08nPdktL0yslxDzC/fxoGwahMTI
	 XCypc0wDNRzdpLCOmy7l6EtOD5xyOsgpodScC6MT0BSwjfl295ZO/VTWBR4lUMxAaD
	 F/boqSTMKHCnxyoJUeGk8qRMtCXULpMTIIwN1GMmQiFiEKI7iYS0KhoceDz7gkofY9
	 D61GXwGXGFYFhA9C2fGtd1uvvW/XR6Q+N5OXzqnEcIflHzS+0CXeuG4l0XqrnpUUak
	 BakWlgCpRCp4vTSVdAVQvOsoZyH0KGBASm0bRvJdPfz3sKv63M3hk1wHLrwjg6lbbJ
	 JxUejUpuGZIng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9493AC83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175353839357.26714.14013357626468990989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d053bfdeac21ba4c9abc020fd378f6b906a021ae470cc91925b0c1fb82ebf73
Date: Sat, 26 Jul 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753538393
