Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B9E27B34D
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756453794; cv=none; b=BT7QgpJLPXR9HZU80FEUrny0ww0+2guYA1O5XmYEszZTQZ3JygnXNW0uke0OwCDxbgFWpsfbFiRNRoxnAd0x0fgJRG001ybn4oNNrcIPPcmTbMPriTvoYw108bm3E4dYnI398tBRtZicGKlt6ozMxl6XUqySFXS93C1EfQutoNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756453794; c=relaxed/simple;
	bh=PEsw88o4vUdSMiRXy6StDaK1zZEL+cBWe5nV2EUYQNI=;
	h=To:Subject:From:Message-Id:Date; b=eYSJ6Xe1KD36Hr9p5tZDzCOe4PFjBDZayE1bpdi8oHmYB/2MX8LoUUQk2UGwidAR7roX/4idBUiL+ZZ+icpXCAhDyZPYyORfg6XOgJB7XqDq1qta3UzwfcPbj3WosHzwmqc8tR8z9bzI7p40AqXW+fZm8sEQRylIELLbqdpTOpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tIOXLPML; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tIOXLPML"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1810C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756453793;
	bh=PEsw88o4vUdSMiRXy6StDaK1zZEL+cBWe5nV2EUYQNI=;
	h=To:Subject:From:Date:From;
	b=tIOXLPML4qgc7whtTKU52LwVnl9d0NWzQ1pmKOLkUFt9/2PxKuVVkYJupakDMCrAw
	 sXGb1FcMbhxA6gNIv9u9fhQSzfXGPHrc56Yi2HWHMqGwzcujQdeG9qbcbkznI3MlZL
	 EwIpD1GoXfPGAeX1EUFj6vs2HIHunxacm1pVCzGOg8I0jCUxueGLeWrjeKVf/MFn6M
	 s8P0w98PqbLifmHSfLAHdhO8nR56WBPyzXJs7IGUaoBjA6M2J4oxNGS+zSFQndltDn
	 8GOjkSiqlZXC0oZOaYz3ob8QG8d4oxqmq8rA0c7PIQRF6I++eEsNLv/hSozwsbb9HV
	 gwutQ+49YMv5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F16AC8303F
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175645379357.29026.673455293938797805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de21e2e242b9760bdaeb5d33b258fa3199b5fac9208643efa6cd8a91b6182b20
Date: Fri, 29 Aug 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756453793
