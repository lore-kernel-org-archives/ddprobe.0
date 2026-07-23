Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536F2353A89
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 03:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784777974; cv=none; b=OMOOqS0WczhOBtoNmeGDSPwkbZ8FbmEspsO76BA24zZUuKqBq+jvNASn6Y5YGqpEJuKS3kwb38bpb1Q7PFJdKsXryDy0yExMuR3p0CkgdehL+IoPIJQ/7WP95pgCPIOEEFDXTP9zUU9NrejoiY3H0+D7a51wyRViAD9xiaaYR1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784777974; c=relaxed/simple;
	bh=mU3pdnIG17PJ0+3x6KeojDao69uot90+72Fi+XFAIgU=;
	h=To:Subject:From:Message-Id:Date; b=LNgeLY32uGbvUihp+X9OvoYNB74hwgf2S50xmRyW8achNGCIicBdA5h+8KJjduLYQHgnwQ9yGOQbP1LnagUei5QU9/9l2np5anBcqFZyuqObbZAzITKgKNchXN8NSknahns3QSnomr8ScLvo62o/7Cplps03JmlpYvA6Sb9dQks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tHrWPMWH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tHrWPMWH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB764C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 03:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784777973;
	bh=mU3pdnIG17PJ0+3x6KeojDao69uot90+72Fi+XFAIgU=;
	h=To:Subject:From:Date:From;
	b=tHrWPMWHZhBmKUQdFvoB+p4UV18B0fGibEzxW+ayZE1ZNmddV5gFzAkis+2i4aF/Y
	 nthMUyWbkyFefY1qRIAiFiCaF7iknlShl+BdWyZkX8rDAWGYc2Jz3IORsU57fIHkmU
	 jrv4PGpd45jBPRG7a5IxeA8pXTUeux9nv3dFHdr/KYCpy527Eb+lqY7nUJJNkugnUQ
	 dR/mZO92jEt1/TVvi41JxPiXhgjoJcElPpSMqBQjm8Y2Pwq2wIpmH4uAVptm4jozoO
	 HifL3su52wHpxcfQuvmpITdaJIRNBmVRFjoOK3dz/oZLyE62BJ4h1iNHZw0fXuaXZe
	 3E65gDerFL+vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24DAC44524
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 03:39:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178477797370.24624.12995881279527874250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88c21c17bd82c896fad1f777f01af839eee30f413c8860eb42821d9573ded3fc
Date: Thu, 23 Jul 2026 03:39:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784777973
