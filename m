Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F55E56A
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 07:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765179174; cv=none; b=S9T4XLS/aH5J2sJxg6HlSyCZK4eip0WXuNO8Nxc/iKe+8SsjNiqdufjHNfMkWsqrGQMjGRSji8ps+8iQSiAjYkVJjpWdHS5y0HcZutVwOkWBSm8OCgCOrwOL41ODiYysmuS0Buoc4QJwfA0l59whC0dWsmA1PQ/ijEQGFms3Wpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765179174; c=relaxed/simple;
	bh=4amccsvNMrCVL6Nn9TQaI/Oedq5U1ulmdR6EQPfD5ms=;
	h=To:Subject:From:Message-Id:Date; b=AfuxGV4xJzgUmhbLPF2k2j/M9i/VmCk0B6h7/68Vh1wHgVpJ5LreXbov3T/vcOGNasbr3igHgv7H23uPbtMoqnlAzUsqrHqDGZUncs7kl7sW81R5gYknPi9L8+VrMra+B7HPgnDkvLd29B2J6kflm/JfHdijRF2fEOaTsscX9oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnJr857A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnJr857A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A482FC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 07:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765179173;
	bh=4amccsvNMrCVL6Nn9TQaI/Oedq5U1ulmdR6EQPfD5ms=;
	h=To:Subject:From:Date:From;
	b=cnJr857A8K3CoodCwNX/9koQn1IIF3OEsZ8BAJF6p+GFLLdmGRfxL/UWCRvm+hUDw
	 ZHCpoQ7b0/aJjvro4J4JBgB349b7U28qPFHEL2SxejATbWIyFyI/5Gfw4ifAqJJZWN
	 Smbj5FVTK5h6M8NKa0j9BIIntGXPxrUu7LkcBYuEyHOWrjkLrO/OvIwSjlIjecTCbC
	 +9QDsf8J9o4fLM8u4ANCF9SXDvde/+HsuoD/TKM3rtzHiwuVPsLW10jFLSINLtGCCX
	 w0ZE3Mo/XD4/ShGgHUomsbV3ulBPe580S7TeV4ppmKR5Rz6xu3UaZDGgBWVPDVfgzx
	 2A5LaCSglM6gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B94D3ABEF
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 07:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176517917358.27343.18094381704107500541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3797a148f2c6baec9d6bc2b684b714f8c9341348daf0d6f853c59d0b2ec7f981
Date: Mon, 08 Dec 2025 07:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765179173
