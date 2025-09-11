Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC8F2E7BAD
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757587194; cv=none; b=iwhXRGWVycpnIVqWRoErkS67SKvyUJPbXCV8HlKp9pegWmKO2oXkmAOPYla/41ObzrqMKHVrjH6Azonn1uN1JtY6zl9CQpW0GXLwaakbqbXrCpyheX9l7iJOP26eNdYmmI2GxLwIJn9f+a9ma37E4EmOQpegWN7j5GNnHL8zolg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757587194; c=relaxed/simple;
	bh=MUToEhP28FkYmjK8/Leu12CZmU0ga9XnEwXJUK/eJ8Y=;
	h=To:Subject:From:Message-Id:Date; b=j1vrhKuG4TnTzONHqGmUBrlArBUVOuQzpj+P6r+/wkJMipKdECQtG5LD78yDlanmYCgZntmJDO+nUk8wE24IbU7m62tWQip/Kiz59V/3r8nzm5eHwvEFBCiXA0h3CNBhOYpdcGLlX0a+XtjqiSghPaWJafYzuMQKCVa21saKXOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ea05QCVd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ea05QCVd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F65DC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757587193;
	bh=MUToEhP28FkYmjK8/Leu12CZmU0ga9XnEwXJUK/eJ8Y=;
	h=To:Subject:From:Date:From;
	b=Ea05QCVd+ndjTmSOv21vLq+iVOTN1TgeNs/Qg1vNSYniorfqzkakJViYhE/wD1n8Z
	 b5+02Ss/BRW0Y7ikGdo/fLVV/Zfls6diviGWf4pATZi5GNEVh9dzSnMPZzit2RvTvm
	 EN7wVcZ3FmOq1s8fwp95obgqhZnCwuRTak0FrDVBDT2a/VEwhiAFmZEWzWAKxgSHJr
	 pAXXTkyo5C3unorDiM08UMA4Ib2IcOHJKYWF7sklBW1qEWISdcBORb2j+gvw1XHFBD
	 owto5hGDjD38pbpBfOIwaMpS/wNuud6/hFAA31IECXRW3haz25EDzJRdptYvmG+x8r
	 WN1iLAwsdv6kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9029FCA1016
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175758719358.23554.16243165571599815834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03c604ce3af914ce22e8734632cc11f9407cdad152f64fbe5e0f730cddd213a4
Date: Thu, 11 Sep 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757587193
