Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 566B41BBBD7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 17:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719941723; cv=none; b=hNrfg1VzoKH4vxeXCyWK/3cS8d3efAaOJYs/JAA7E+KXriEqCERz3HjceyPjoqJ1GxGAbqYyqQ46IG+OrXbgiT76kaafsGmv2Y05qMLcLUqxblIZTJnNwVj2Kfde5THT3KLFXJrzPVpK0HWho0IbICVFSKIU++8INg7T6I7+ZSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719941723; c=relaxed/simple;
	bh=suL2Wa7rJTYA0lQVtPCFmFtgnptIFQRjNNSCieM8phQ=;
	h=To:Subject:From:Message-Id:Date; b=qPtuRYZLOL5d2OFVsVT+tdVH0JvThC6XPMoALAxqqjK62UYHJlzm32AWQr5oSy0yAe2Pd6YK1ZFVYikH8uXdwqm7dDdkB+jgSQP4M/qAaV+m7xzjofGuCQLntHdPZaylGcO8+Min81asHm+Uncz7PtnV6Tqi16EG9ox9ZlMUTsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=haICPB5f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="haICPB5f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCAAEC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 17:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719941722;
	bh=suL2Wa7rJTYA0lQVtPCFmFtgnptIFQRjNNSCieM8phQ=;
	h=To:Subject:From:Date:From;
	b=haICPB5f04VndGWmAqHT+bilzgX4r+WqnoR41K1Br62BXjE4psec1eksb956N+ov9
	 2QcYodmHemuFd/np2cq55vsWW9sRayAreYCu7kvQ3i5XuCKDi0J2UMs1g2gjwDwJvk
	 4idtXWX5wAdUIQtDPXCEM2CGqRK4dQ2yS3rmOJ7yjzrTaCvUha8Mdmf/2a0gJZCmWy
	 1WVZKI/0g8ed2CCCKaOtw+1ZFBdjP3zORQOiODPsiajUB3PIEXmTddfunJ1vNdy6c2
	 wFUZHV7mxaADYw9wHaMqYgQbLUIg8Iwd/l8b7KCW9Zsehhn2XPqhIOYOrb1lM1zq2W
	 cYVs+rXXpl5mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC48AC30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 17:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171994172282.4730.2832096418704660012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0a03e800923fee710f742c750d9e298e8c14052e357e209f7cfa41e66688633
Date: Tue, 02 Jul 2024 17:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719941722
