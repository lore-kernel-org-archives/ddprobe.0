Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EEE25783A
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 17:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782061594; cv=none; b=MgmXsjZG8/Bi3j9jGFYbkOjxM3sw01yqv7dspRm3+Zqn8WYdsTs0A7gY41B0yt89NF+/9l/zQa3FwpJ56d1KaiLfeOXx7JEuz73SJNSR6DpXatwi4g+jbtuMLIpMtWO/17TswyyCaIbND1hNFJji4JixPR8wZRXtn6c9jX3xGr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782061594; c=relaxed/simple;
	bh=r1p07cyhAzGiMOWAmRsAvTQxeFNRTEYsdzniqtpBCxA=;
	h=To:Subject:From:Message-Id:Date; b=jnPHCpw40cb+7zHUjV9BU5uic/diK5+Nht8w8m01HLv7B2NOGAhjVr4RRILFiliS7fAVZDP2oOaCwwKw2cQO9KWFDsgLe3FEAinLYmR29FycXXAfQayUvf5Mgt/yJvrXNPZRF20sDLLpseBbMgUp+0ajpDAof1gFchXRFSttJb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Da0AQ3NV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Da0AQ3NV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B6AC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 17:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782061593;
	bh=r1p07cyhAzGiMOWAmRsAvTQxeFNRTEYsdzniqtpBCxA=;
	h=To:Subject:From:Date:From;
	b=Da0AQ3NV3TOeTDTQf8hsj3+y127fQFYWRRQ6XcVwspv7uTyPsZ/GRaJ9BUeBFAi9A
	 fneUbSMQwj/Xu6OM5IOrvkLMDg71gpRi46FSXAEJR5uLWzqfaE77iLjltPCbqOPe3r
	 krdiqy+ui0WPgm2qYRgXSTkqeOvDwxD36AdlC/tkARAGAaGbzUftedorO6wCAr29L/
	 YvvicA6Bmc2Louq8GqhsfJ0LV7N6A9e3EY4EpCFJFdF6R41wwjxjdJL8i7cAt5vt4u
	 ZJuneUyuVcMXLhicfBeUR2iIt6kp3xFnC0RiLNm4jd1yYogAmPzusf9S1R8lnMdaos
	 FM6tn/mUQ0dzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B74F3CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 17:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178206159371.24287.15041951781509577590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb453057163c81473716c7aa0ca1322008172e8c0059b42c363861956bfda4f7
Date: Sun, 21 Jun 2026 17:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782061593
