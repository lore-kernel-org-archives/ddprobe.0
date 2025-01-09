Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBE8B1A23B0
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736423753; cv=none; b=iHQ7ePMzMlgB0ahbhFXW2kVCLyE+sRtd8E69ujacNnKVl51llZBV1QuVilMETTpBi/r2SSEFDc3q3upC+ythP0OMxBjZHR4V1pTkSBtsfC343OxBhGSaTQP+inMChmzEMyX0ux9/iesyV8dNiP7tviW3SrGzbUJfLvXm6baUvWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736423753; c=relaxed/simple;
	bh=A0S5PWZZSTx3mQY3ydwTujQ5rTeovwIErt6CRl4B0V4=;
	h=To:Subject:From:Message-Id:Date; b=n5E5j8Qr/euQ+oxmar/gvcp+dzFdl3LXCipKJFaSfb/SZ6IFJ3K0RbZGryZv6zCwO0Bf5HAfVcAsqyUVGW1jW122fuxr6/8iOVg7CyecBxhOmEo99iFHB+RWhKA5ifbGC3Am1O8VJ4qAr79qEd/pb1POFEjaCVkm2CfqdGjNPxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wydwych3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wydwych3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A197AC4CED3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736423753;
	bh=A0S5PWZZSTx3mQY3ydwTujQ5rTeovwIErt6CRl4B0V4=;
	h=To:Subject:From:Date:From;
	b=Wydwych3tu5Q4Sl0XM6taw1QNue6MZam0dDWPFP+vdpR1vFzbzZJ0s6sgYc/1xgmN
	 MIpq5/u6++ZDEs0cXGZ3K8Ya7n7iTjAlJ3gxA/UQcHB8Am+z1Rk2xQMV1WPUoFeBVh
	 w6K26xrPAgAFHIILnvVVmJVcnqqDKRNsW/EVbKBuF64Yn6oIsn2m2s4XMU5sHVLHNQ
	 pDTIT/R5HEyg7RbygQ7sdXIx2VHtwpLIV3cFYEOrHJfwtFSCAm6spW47NKXO88gPTA
	 XNADz3HttsQ5Bv1WVJyFTI0AdfHlpaQd9WLN/ibPmTb4AYZYQk3kG8iYRhhGzyzOoi
	 tsGLM9+BiWWrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9167DE77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173642375358.23916.4652773908360163517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6417383804e3c35e28e3663c858ab699ea4e4f5e542938fadfc4430a02de462b
Date: Thu, 09 Jan 2025 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736423753
