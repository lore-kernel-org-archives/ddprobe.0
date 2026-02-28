Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254A02765E2
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772315094; cv=none; b=kqN8Qy3EmhTTn2sVYBCv7/Uo3R3x7pRMedT0rF5bQ4cW8XdebJCyH6QoEmDRKWjrMf2VysEflPfoLIauVR9hxZhenDBKvlYH7hQrBQ0ta3crW/aSSiqRx+TRZ4uZ8YTfp+VR/Mva8Ax1mT5e9gXJy3fgqQa4byKPTGRf6JT6vek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772315094; c=relaxed/simple;
	bh=wjTEXUsaVOV3xTXGzjK3xnw6FA2f1UtFKCPealPz/7g=;
	h=To:Subject:From:Message-Id:Date; b=LmZjoH8qfa2Wi+aWCpS/36iA5uVS4kVK5+nGubK/hbAOtIvdHnE74UYQwtanX5JSykvvi4U20W2JeBwqpFZ0pgy5/YVUWyTYDdeo+mYXOoqXz+zSaJACN5lCP3Azswca8hr7cCnzNv0w5iWXHi3q30CrNEpfN1a8h8zREN4yvEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ejiTk/3H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ejiTk/3H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C43D1C19421
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772315093;
	bh=wjTEXUsaVOV3xTXGzjK3xnw6FA2f1UtFKCPealPz/7g=;
	h=To:Subject:From:Date:From;
	b=ejiTk/3HOtPZ0Y36UdgmPD6ApX8CqB9IVwECAWqASMHeJDZr5ZeVMfdAIiYqUObli
	 h/oY9Vwffy9O6n/aQ+frEo0l+Uc32N6Ce2EuiQNybDZ7db1G/nwJNOs2K7YLq0U4g3
	 CnAuxdSdH9AIXQzJPai1q6xCiOESIK79kgStnavtQc15xgBecY4qMkLCKg7LCuaKS6
	 C/d5NXX992jxMbWAcSyCHyAqWLllrP/WrISV5MbAeOFXvsDB7McmSrCGKuW9HJP/Ju
	 MxgDIOhMEB/J9o5fpacJghbAoz3ccnsSbrOoWGLDDb/nrf4NqEn2bYGfHnnCdBIVNZ
	 ZaeQwdBkQNZBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D09FEFB6B
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177231509363.25795.13627499872197047771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c1746cbabe9b5fb2515ffc2249f1901b67348a2882daef269777003f302e5de
Date: Sat, 28 Feb 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772315093
