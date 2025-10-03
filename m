Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1945C9475
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759466994; cv=none; b=gltffpuPvluCiTuPHTLt176rrHIIJqtq0gXzaFu3tLQQsgNnS/jJDwsWcRoffdfqCoiSQkmi57o7aQ2VZL5nmWpki2r849dn6CwVTi92hRu5qhw9lQ46MGt7vABtMl5ADj1+KoAKjpNOPrtQwPQu/gywPV821/H0rclsXzhjEqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759466994; c=relaxed/simple;
	bh=8BB+vTOoOs+HAmfjn8J51cavefTAP6qzZXMW2DkT/04=;
	h=To:Subject:From:Message-Id:Date; b=uDXFhjBI9A+Qwv2x6segt11VrV6tbuN3Gd1+s49MsX2mMr9Lonbhi7skqvv2ljhRFoeGCfp9ZARwZ28Oh4RkeiGR4wTSFPBG4AQuAkGW7Gch3LrTg5nr5PqWfcaQ72pznus0HEeInu5rWld8Xh1t7guAm/9/DE0uybbATPVyMX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MN8f4toX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MN8f4toX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FA8C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759466993;
	bh=8BB+vTOoOs+HAmfjn8J51cavefTAP6qzZXMW2DkT/04=;
	h=To:Subject:From:Date:From;
	b=MN8f4toXx+t6DNBzrPVTHusnb0d0TtkGT+4zQxG2bfMYdobVgCLV0seAkVgMOg2DQ
	 kx3XGCJHizuXsvk2FBeJ2IwGqiT6AJH819MsPTHII390GDJT+jfyGelXo9CtX1XBSO
	 KWMZesCowM3fX/BiqYCPS8qkkjeVhhP1i6C7AVBCpZGArKYh8JVooS8VcETVC0qW5l
	 B8cII1noa7SX4AGeMlxV4lF/tWfCJ3OIJiWHS2l7sPoFE34q4VLGcX550BblXofUWt
	 uz1/mjUC3pnupfz6EynHHAOWmr81BpgrI01fSFk6hotI+zqFA9fz6gZfa3AHWzGaiv
	 tCm+cBNaXBw7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9191BCCA470
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175946699357.6660.304276038792305973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01fa37c1a038f37806fa5de404f0587f5b881c21f53dcf732babbcdf23df3ed2
Date: Fri, 03 Oct 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759466993
