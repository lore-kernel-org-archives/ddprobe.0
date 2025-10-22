Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CDB244693
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761159594; cv=none; b=QUSu/g9mUfNpDBGQ/dEpJsn7DRNBVUJaZq73Rt41wGyJ7Rp8Ze8VFOILEQRq3epuxUNGAI4kSNiCCIuHFVUOUr2+7nCxyEQ78wYgjMYj38+UPAYjpOwaP0tXyqLKXU2PCPdGL7gyo0cZbqR9vVyjiDEgas+zJlupTZoHALLR9zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761159594; c=relaxed/simple;
	bh=+MA/uivAPqz86Jf+3voh3QAdeUW64p6v+6D2M51OCJQ=;
	h=To:Subject:From:Message-Id:Date; b=PNPKi9CutZtbzLorwFobLVyx3bVHFsAiLFphDsoQCe1mzBlMi8w7RK72Gkv58AFqhs30tXjqbkkAAytY9lFz0Ci2hIPvwM6W/nKMOQTYM1+MWWYeZSz82J4hRxXSWjqYlJf44OigdKOwUykpntn13R6u+MOUfmcDlYD1sSFto3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BWYykY9C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BWYykY9C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F202C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761159593;
	bh=+MA/uivAPqz86Jf+3voh3QAdeUW64p6v+6D2M51OCJQ=;
	h=To:Subject:From:Date:From;
	b=BWYykY9C2YDexkZr3vz/LJzd0q3P06riL0irsyl4ZqQw5tx9zVeozfh3nQ7zoNuHh
	 dA/VgNRJkCaCyPG11s6daxY0urJFkbpDAxbUtYivTraFD/WcilUAVvbmOcO7L4Xx/u
	 Fx3SpQGPF6DWHmd14nywUQSNXdeDYiRfarr19rATTh60x+XgeGMuNaJW3rz3S1PGrz
	 QrlIEtd/1CHWACZ0uYM+6qzD8EpH3Iq8rVToIM/DT2G17BVJcA1HqUD1s4Ewo1y/po
	 JlpDzL9yUC90KuLs267Ruw3hOfnhHMPFx6y8rsH5lkWa8X9va5E3u2Xdvs4MoFHkrr
	 oCecpcb4Hjr4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFF9CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176115959358.13756.4526634293561494339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbeaf00abae338b630bbc3c8f4ed04b1557227c888fa6b9d91457c9a88c704d2
Date: Wed, 22 Oct 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761159593
