Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EE72F5080
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751474394; cv=none; b=mgif3+5fWH4DUX58nDusT3ozHz9pn8B07GgMXNtICCL5i7OHD6wRcrUX95rqrc8PdHp553V/LQJzIMP1Y4IuP55P9NhrRzWJQUJXYZ478XyMeEVrTxh/uUCNau9P7yxB74U2uiF23dyFRRQnRdJf19Fs0lm8jJTYHlwxDi/Atx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751474394; c=relaxed/simple;
	bh=Sw4FyemXOSmh/HrM3oBDp4X7shpBAvtM5hdr4qJmw4s=;
	h=To:Subject:From:Message-Id:Date; b=Fhg7TS+1FnorFnjM6sv8Mn+GxE9tps10w1NOPWc+CkFITDyQqK9yq10RBWFRIJfMNiAjXYA3V7ATUAF6n/9iD6ph4BnnQPsiEYhlnnwXLhfNfajMJeV8pgtftnxL81e/Nd+oOifZAGyNN0nyz+4YOJziw3QL4fljxTZa8ucPMeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1L4dA1R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1L4dA1R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A818CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751474393;
	bh=Sw4FyemXOSmh/HrM3oBDp4X7shpBAvtM5hdr4qJmw4s=;
	h=To:Subject:From:Date:From;
	b=p1L4dA1Rsh+BEhgYQ3frD9yfLOQ5ENgR6Tc6OfbQ6mwc1fcL1GqomOo6M4yQ75RiG
	 hM2fw1otVNwOu1xExNAgc/maIurDVyL3yRauArVCAHczPUmBX1qh0i/k/bUFamF1UP
	 /+EhUWJ/P3oApIRlrqhp59GrHD+AFy/+SdQf2Kuu9MdAJ6HPzXmoEVixlXdiTHvr3B
	 GgelxYhUx02frJPgCGM3+A4c6T0FCMiIoIkite4yDnk5sOurpoz+/IssoWRshYLrDU
	 53XsyGNAVRXpos/lRVxfg90RnvcXv8CCwlNu4QV8fL23Ys8twMcCCy9EtMCEqAddem
	 8BhsUVogmR17Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D2CC77B7C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175147439359.25060.18231523740932385813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6532869959e4332e2745824d211e0d18f3c4903fb61c91d06ffb5bb281d8027
Date: Wed, 02 Jul 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751474393
