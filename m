Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424AB32E6B8
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 01:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780362874; cv=none; b=Pd6Vf074KWjEc9L0oVQbPrEdoF0nWHYD29QXyqdM/ccW/9aqhiqdXpMdeQe0SMSL7DTkPBlaDrom1cjXllPiWfLlSDZbvPeBwZVWO2KP+2lFiMTkZOEGkvQv8Emx64MQ3BAc1FvrKXJsEW6R6a8BmGFz6rwSuTpJy4bIo7LRJ+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780362874; c=relaxed/simple;
	bh=0qbkt+645j/sTe02EMyR/Bz8k9ZAgWPoOtftcHgPjTg=;
	h=To:Subject:From:Message-Id:Date; b=Tunx4RmXOEEKbMrF7P9t0yvSVsOqwCaekx1fhki+6woiwKf3U6Pk86AwMp1ZFnND6wOtAXQZ8NpVsVofW+3Lap7T6mmpnFbOdPiK5vCkn+p6GllpPvTgmedqR1I32KR3KAGsqx1dkc2zdbLsJaprjFXG1d9FINT6TNVsMU23jas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PM0bm3wV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PM0bm3wV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8BA7C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 01:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780362873;
	bh=0qbkt+645j/sTe02EMyR/Bz8k9ZAgWPoOtftcHgPjTg=;
	h=To:Subject:From:Date:From;
	b=PM0bm3wVAjceKM1YzNFZOUcy3zAIuYf7nWrFvM5fdk27FVO+KtJsnbzVIvqga/WWC
	 88Fb3Br4ox7+fxljjjP6YWmZkajW8u132ne3XA86wv/mePBboQpJsBdMkWhSgWV1+6
	 Vrx99hgni0bXA+17yg+LOWSgEyznRMkX/No6tCREN7qvSOEEDQma7ZlAW8s+Rff6F7
	 lISQQSe51nFD06fOGSPe4um0dpuGH3msZGiSvZhWi4M9ul0n8Ys1tFozrBfn4oLXE2
	 PzxFzdJH5RsUBTI4IwZZ5xgktAVAqiDNkBE/HJcFIucaTas6Q1uHFyxY1zZIhPDHgh
	 n0J+ODPUKSp4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA10CD6E55
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 01:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178036287369.18055.4092106999579075152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c17f72e9a92a1d5c57b7ef0fbdf97b3d1fa76eca9bf4cebd8834037547dfd72
Date: Tue, 02 Jun 2026 01:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780362873
