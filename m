Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4423F3F1ABE
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785811234; cv=none; b=YEDs2PxfLTvauaV2v31z2dt/rJLlBhCLwN4hf6fG/UTPIbPk455vX+xhIgB9EoAJChZ0bD883Mars52deya/FcJhLYIO/xqUpZvj7DyhQQG3Chqn4wimQHtlSpUpowMV212I+ZRniay82sGN0Z1BmAQmS92dAsHR4m0mwbzkQr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785811234; c=relaxed/simple;
	bh=J26MsWr7+x2KVRoDgujpoGHAaDXdTZffaEXgYXzwAYU=;
	h=To:Subject:From:Message-Id:Date; b=L2tNEU+qnMEZ/gy1pwbkmI6+uHefiWJVnH/ZckRsmG+6AzpFDyQAJztAzRmdPsjUoDYXtGTcNIHQjFlojq4SOURTyXDxx4JrZx7ADSF2BneXJl+TV2Lxd5vT/YsSzrd2VcEBWRtoCGlkWlr8XmEoiezikXrbfQ2P/qr0WplzZWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OI4ps7X+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OI4ps7X+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD04CC2BCF6
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785811233;
	bh=J26MsWr7+x2KVRoDgujpoGHAaDXdTZffaEXgYXzwAYU=;
	h=To:Subject:From:Date:From;
	b=OI4ps7X+Na1OxMDzO2DUb8ANzyx4h/Hu5k7dbXs5ObfHsoO3N+h6qyJjcTzOVz7Y7
	 WBIjklWcemnn7akBtgPqyrwV63iGUMX4S1KZrq6CjJOK9aS/JcOnAM6tTIbRTx44IK
	 wJpzmUcWug8xTwMnrB8F50w+baxhXabFSiZGDfoBy5EavtOBEWtTfqbtKbFVIF9sb/
	 5lvInTboTrjQSvtF6HlHXvKt6h4hm4cJEGFxCZ8L3ELt5KZwhVv2ez9K/2pbVCtv5l
	 hksKr22d2VaJmFZIp2RHm1Bc/r/82JKj6KjdcI5mhjKgutdeAQxoKa9BRz2vNtuGQB
	 lZ3RkNHsUqvCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B77C3C55182
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178581123371.5999.12772405605834519306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bbcc58dcb6f5778e4f385474986c90455f6d2ff1df1abf7c0c41ad91aa2c73d
Date: Tue, 04 Aug 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785811233
