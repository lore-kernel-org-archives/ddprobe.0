Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCDB11718
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 12:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717848443; cv=none; b=rOTfAKr3R/Z7jJcl3/8tPjbUIry52GOFLz3KtBDjyrSInmE5o7duV9mzUd71p54KddW6JiFrvhQSmym8unbuRiJC4orwo2vVN/hGW+8GuwNzaRjsxXpIhZUvTc4CfMTAXB8ClJ07dyrUjsUusAlqGuW8/VbrqedASN+CZxZAoZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717848443; c=relaxed/simple;
	bh=FxwBpQoBJijQXeycufiveW3WsUcP3JvB7ETB34gTJN0=;
	h=To:Subject:From:Message-Id:Date; b=bdFZ3Zn8L57XbCk8i85h/W1uLBVauwA1FJY9AjMJu0QPXVFlXq7rKut2riQdv5bI0AIuS2LBbJgNy5g7wswcF60G+XEaTASkOEElIzjf4Q2rEAIZ3DBEYTpnwrO3UbauWT/Dw7iSHuCF6KUv6XKmPBfv3o22XrBzLJ/SoEdrTO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YETZHyTN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YETZHyTN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D88BAC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 12:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717848442;
	bh=FxwBpQoBJijQXeycufiveW3WsUcP3JvB7ETB34gTJN0=;
	h=To:Subject:From:Date:From;
	b=YETZHyTN6dl1pkJPIpmzm7tx73sBeP4/Rxq9piQ8cIdpBUTRxRG1SI1V2GDr7UUsL
	 IgIC2TFCNjSrkEDx60vVZKKXkCTBjP5o/+qazwqNIeaIaOjkKLLrm4NqBK1K6jAn1f
	 8bCN1OacaEqgyRbyR8XyeZh+J3w0Y980I4ghi/fGF6s8W/0PrpPrAqQcxYU0RtwXYT
	 Q4O7kFBP36lTu8iv6RGhxAMKT/VpxWuePOXSK/O4FVt96uOX4jbW/O8QIn4WIeiJq8
	 f4bOLjJnTbOXfR5hhGFrhbqiz6+zlCYiiSwSa/M5ZBPuo12lVSMsRtLN3JCEbp59ly
	 glKsEBWPBGDvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C30B0C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 12:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171784844276.28603.2899164794642847947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e3b40168bfcd6492dd9fc78832a3c8ba8807882417766a269ece69565e62d09
Date: Sat, 08 Jun 2024 12:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717848442
