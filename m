Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138E625228C
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771563894; cv=none; b=kTtZ0mdjdwS9apYxXjznDt/t2bKkWx0CMwhkC+MEW1AMpH1mYE26mkuKUAP66DGjvQI5mlPhPmmTp4XF/JSBQ37+18LCVrf6QIoW5aTo8fHyMqc6Q2b/Pfjxkf0KC/1g2+dnI1t6b3T0xpl5dACnbhI21okMiIfJkr/4OAQCleI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771563894; c=relaxed/simple;
	bh=1p1zxkv7BzZ27Stzyu6aHyIAKahHzjohC2PdwwNR3R8=;
	h=To:Subject:From:Message-Id:Date; b=rggw3fW/iuhc+ZQ9zkU0DW99BAQkJAypwbLF3dFqJuFMfBKtvkAvHYjVq1xnREROCaf0oDKMbyh3zH4FU2TFbNjSJ/dnGjDD2Go8byvN1HTak1L0tQo+V50cUVv7hs1Twe39od6X9lERo7+xVgfUVZwPWmdtVwyMm8T0gpvXG1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FRaGOlwk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FRaGOlwk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0200C116D0
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771563893;
	bh=1p1zxkv7BzZ27Stzyu6aHyIAKahHzjohC2PdwwNR3R8=;
	h=To:Subject:From:Date:From;
	b=FRaGOlwkdfVOklA5gEEHSDICGPsDxJr0rXpSicdDyQ3l+Qo5iNWZLBRVRdl79yWD5
	 PmufJ3BaTbbBesA9xZPLuOM3eE4WlhblgVDbx4jqnP/3VHz05Q7tbZMstY6Ain+Dfo
	 pDMfj8KzvoWRUPXpjK2gINuXVfkz4IDD0yrUi4Uy/DCoQ7oEjL3t+sYFM+lamEVtbH
	 hwM5eEDR0NixyXT5gjW4aVmt5CstUNKYpN65s5SChnpgApWnb0iN9eriICBWOdhNQT
	 EAWtlfUb4kAnbQrccRJWv9ATQ0DoIPsFWFBTXZRM7/rwGaKzdZ3fcnVZmarucVci/N
	 SjGmKdiImSzEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BCF0C53215
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177156389361.27946.4541567877306844557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58015bce9f3992685d4546f798615fe7265c862074a8205b0063a95156f6c7a5
Date: Fri, 20 Feb 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771563893
