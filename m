Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312FE2153FB
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752734394; cv=none; b=PcOrdf7X7yMynFAm9+ysUNYz5n6CNzkm6KLHeJWbcsF+GCW3MQ7aHeN7DuM3SRig5e3Fo95NGpQ5iDnSVRXaRR91wYQRbo1Arv7OxqlqlIyLmzQCsctGwZ2s9lGvgifrPukTB0NTaANmWlLEyDatar8ALw1HYi8AYm0Zbzedero=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752734394; c=relaxed/simple;
	bh=vJ+LGRgoa0LtkeJ1d/0+QDqudqhNysxqOJsppz3ZJy8=;
	h=To:Subject:From:Message-Id:Date; b=IOfq5Bilymkab4i0KMl829f3YzBcTEsnyZ2AjQZbXhbQ1+eozJTNM+A2d7irzfg7sz9AmZR7h+x1MPI2GhV/ylSUImkoDPwm30CIgxUa8X8Lb+bpwenIvg1HRtkZbfeXaeshVjt/XQMNrCDOmldWTJ5hIjd6Elha4l+IoON0a9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AdREU8Go; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AdREU8Go"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3915C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752734393;
	bh=vJ+LGRgoa0LtkeJ1d/0+QDqudqhNysxqOJsppz3ZJy8=;
	h=To:Subject:From:Date:From;
	b=AdREU8Go8uTx7Nd4OTLjCc1ssIs1CuYpDjZorZzsKY0Q0LyjZ3ybC7Mt6qVhR5F3M
	 2834w/sFy06KG7uLPu6ihGEVNPPIrsjj3GY2H/Bzb3AO/ZDrivb/XuUf710jdVE98v
	 vz3ECXwpup1qpvVIjUcg0OxzFMxRMDr1hcCAEbCkO/rJoKO6naaF/N3/Qflre3kKnF
	 BaZWdS6lo196lbeKbJ4ESffBZK02LleguLpF/nPz+kcZgA4jA8H8mxOVK29BOxEB+Q
	 3ensTPJym3G1mDEScIycl5N6NkVrmkf1RYAR+/JDzFnYtJvu+dtIW1kKafik0ZeKRW
	 r12zY1/ydth1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9E1C83F34
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175273439357.4635.14482359212367276103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c643ec30eb99a8353f5039f4726b073e7f3b1a5707de5c75beb328b3640b8360
Date: Thu, 17 Jul 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752734393
