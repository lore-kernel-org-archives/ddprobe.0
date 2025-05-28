Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A51230BC4
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748476794; cv=none; b=pPSg6sm51GT1iZ7+9SQnqMXuHD1sxrAOnAl5zIEf2/phpMDVWu351oqHgjvhPD+/edRh0xWKPN1EsPu295GsegEKkBgJKrPWuHLtsGiLh+7wH4dwjwQ0cT7v3I7x5IcmRyw8vR5qklI2z6YnoLNy8vhyLINEr9pIcBlWosvln4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748476794; c=relaxed/simple;
	bh=k+JbK/jzdE+28xWuzoy4gtO74cTxo1iseym/4+X19MQ=;
	h=To:Subject:From:Message-Id:Date; b=FyzFGgpIfysv2ME7Laq9Xt0ylXqv6ErZbzDktA1s1HIEH+VlaGUmUkUxI9jHuBexNRFMP1Lw95dGH6jcRtn328QvmibINRCU0CPs27+BZVZn1oxmQuGn2URPyZqzVnH2xQ59keNG4Q+eN3Da+7A9p1ezqrzidmqMjM+GQdxDPew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSLlyFbF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSLlyFbF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C0AC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748476793;
	bh=k+JbK/jzdE+28xWuzoy4gtO74cTxo1iseym/4+X19MQ=;
	h=To:Subject:From:Date:From;
	b=gSLlyFbFbOmJcXIQbB+0K22yET1UHGMnFIfVfmWBlMEVYaqXdCyDiKGJiGFQRfxgB
	 +aoAhvHwso1cQzSYW85MobjyGQdQ5WxvNrWlkZTm+FvpaADLGiwmLV0XRmL2x82uB8
	 30SK6+4rZf1vyAZ7VGHH6DYDbLRGPcU3luiPd0q9xSc3LLqkIEnLnUzBUugBcMM6E9
	 4jk/2DE1qrpQ3tsJPuoRIJAT8B6vRlF4PAR/MNm3Onos+2oREcVaPIdOea3xPqcusc
	 BBjNYSqaPNBydDnbopH5SR7YSTt7eQ1CTm0gM3Wnek+A9jLuJJjBPxGE1yRcnc5RdD
	 uk/cxK6It5Uqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941F9C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174847679357.620.15871704852503031305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0adc6191a3ab2a0c4349d814be3217c12ede12ecc0c8721bfb7f57df502b82fe
Date: Wed, 28 May 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748476793
