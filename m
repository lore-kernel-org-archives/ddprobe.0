Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A8021323C
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750955394; cv=none; b=hX9s8C8nLfiXNsPzE3FsR2tK8V+6uLz7HaQpGxvrCSaJQkELdFlAO+7EJ3Eq1aOmGWFZoMIaApjpCAJ51FaPRE2VCQHIUgRuyYL7qxZX/vzXfoXe8IAXknrlRuUUYu9CV2vh/SpKz8LFQWw4COJBkH1X0dMoSyIIwuiec09FVYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750955394; c=relaxed/simple;
	bh=tcVwPFNA868lyFS+TI1d4HMJQP6ZG9niltRtiebbVik=;
	h=To:Subject:From:Message-Id:Date; b=TlS9xUKri3zOKj3ztx9N6Qixvv+oRm6M9Xarl5/hJ58Wi/B4tIMQyrXkV4Z7LXHAI2tDjOkV1UtPqNvtK7jCnoZ4eGT1D1QwEVtR3wLN4NdBDEs7fgkt/38GKeVh19R1Z5MCBZC38gp+RDrpZJ6/Ynzcvf0xdH5ssANq8kSCX2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tscFwTy4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tscFwTy4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4919C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750955393;
	bh=tcVwPFNA868lyFS+TI1d4HMJQP6ZG9niltRtiebbVik=;
	h=To:Subject:From:Date:From;
	b=tscFwTy4O6KNye6z8KwcDEzZ89g+z5dQ2tW7m/UuoICIDkqx2yg/GZSvU6ul++Gqg
	 LkxjVeMcDWrS89hNumLpLZUAgzBUWQN13NAOgLFs1II+aGb1EIWxv9x+f6iNOtn5bC
	 o+fgn/uD0L6BjmiLahmP9VxA6vh4V+avFiXZmi82thBz1RMJ2FciVC4SiSFtf2Xk6R
	 pMmajrLEZdjsmN0V50SHeKOjPercggmWVb5eSz3iMyKoGysa3yUAc+qhxCDPLMoEEQ
	 gMfT60Ew3F59ApbYPl4NGjG+e3wqQ7C3BT5Id2qtVRZf74NY3OLCafTG2ke23kAfF3
	 YJv2sxwVKTy8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D95C7EE31
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175095539359.21498.4956666974365432501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf98f55cb0f5080b35ccfab89e557e1acef67f3e6ea5baafd79ed5570d8d93a7
Date: Thu, 26 Jun 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750955393
