Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BCE42629D
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758161394; cv=none; b=aJ2bEzrh3p0dlFlOCJrynZQFRd0jHKgQ3Kmi1eI+XXHDOukNbG/Pz395dnAvRRrWDY/vo9b9vScHCUJwkQPjNJY6iX3eBXKImqa9qeKxpvV8OS8lyWPWY/05kTmo6ydJhVIIZVshf2o5Oe2+xvTBDg5+B1BfvxjT1Q4uNgXvNZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758161394; c=relaxed/simple;
	bh=MoNj0qvNZzNHb60hJgCOvmO92/5iYlV8C0Vwq4sUfVQ=;
	h=To:Subject:From:Message-Id:Date; b=ZWTZN0VQJ2/Mjq/LTugohdnB+5zeTZmZZZb1PfeMxpja205qHQX0CdCIqsJelUy0MIycMS7sVS/o0GOeqc7j7WuBGuhyCEQ6TtgERXFFagAlV+MqElz27cQIQSqeILOEIuHFuWPW/jjcaPFGf5XC8u57kSy/5pXVju2Lrxo2s3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBjZe97P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBjZe97P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7672C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758161393;
	bh=MoNj0qvNZzNHb60hJgCOvmO92/5iYlV8C0Vwq4sUfVQ=;
	h=To:Subject:From:Date:From;
	b=pBjZe97PPmAhMDNlN1/4lDvx7R4Q//YCaGjskjABn+8kDypo/quxzbXLUKqQlyiVS
	 st9eDZgqdxShQUiQuKtUqSOmXU8igg35Dw/Alb8f99gAP2iLTw0Gvmnptpt+qi0MrC
	 wg7ExUjHaszr/ANWT5JvesMDkkr7tDT8CNYJ5UDdwCeS5e96HoBOsk74UaIDlpeAAO
	 RiSn8F80OsFw8ABQMFiPUGq1/kHECu5bHI8znG1wkVt4BhY8WG8XdORMzY/6qL2XRQ
	 dFSO8ICHOEsOILK4osqlotfYYZoGVZj12V1iN/4eM2waZspeFn/ApoZsENv3a5Kd/u
	 gu9FAgtFhQ+Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A7ACAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175816139357.25177.7994094476289541516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 420ad8f1193067f7fe226957087c5cc2592a70dd09abf8c00632631f55ac3fe4
Date: Thu, 18 Sep 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758161393
