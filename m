Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D55711181
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709361497; cv=none; b=gvO5e9AJfnN2KwXM2VFgctgIsrGtCCl+jjsy+JRw1O+3I7w/PfVsxq7IvFYrplLB8tEgr0AkYeizObfZ95pgVZTNrMTWXAELKNT7vuazbfVl8wJyDV1J/ym9ff894QuzUqNi0q+MgcS+lXKv9k4i97SBw/ZV6nUFGtEXk+wnuNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709361497; c=relaxed/simple;
	bh=ejBUFKPwY+16DVH61q/Dz6bgNao3LwS9+rQP9rknPkM=;
	h=To:Subject:From:Message-Id:Date; b=UVCTCgVWCm1Ig2I7oBnrjnJl4e/6uE3xUFDeVaKsyYpmXG+tVX/g1+98RQe552ruAB9SP+jiJ4Lo2ObAnfRzebcmrCz/Y8LIgoJfjLr8PTaNfFASzSi7x5Ze1JX66BBwfv9gypo4/cxp2DSfCZJbySLtLtB99UbK/vseSSa8Xz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pbnym5Y9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pbnym5Y9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D673C433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709361496;
	bh=ejBUFKPwY+16DVH61q/Dz6bgNao3LwS9+rQP9rknPkM=;
	h=To:Subject:From:Date:From;
	b=pbnym5Y9JS9K6ojiYvsE7nazB6PPkLBmVK9AQtVA5tEQ7LPT2FxTtWsjavVxRvBMe
	 J/TAQnl0bvfmlND3Xjcd3poXh3KQxSHrBOEu3cxsanOUyFVBhew9VeD/hmyLrCngVY
	 xZEfnGB8heipU3mlBgC/QoJgvmSTS3y0ffys9ivHaNHyt467Jb8fDYYuxzF8E4eDaU
	 JMJXjq7WtfLQWtvQKLKnsmlfylzy1Nn0cvFH0gaUBZkgRLwGP8ca0M1g58oWHKCIJ0
	 LUNZDEXUWMtPLeC4hzUIZyQhRA7TKrhIBJf0u6r2OLs5b2bWBtjm0bYADxDtvUNszV
	 ykle5TN5vit9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6341DC54798
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170936149637.5706.2117421404900959552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b718dcef7f12e85a0f31b0b87ad922dfd2923b20c7a55974369e61b940117639
Date: Sat, 02 Mar 2024 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709361496
