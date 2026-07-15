Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59EC5171CD
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 00:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784074114; cv=none; b=KFvTXvBIZAdpgjd3gbC4DRxsPbNZ0F25xv6qWe1PyifPfpCA8vKTHZQNjPTwaCHES8Yab0/DJAv6pMC1Q3jCUYMio+dmixFia2DfKnC8me6usu3zxoBAMv+YuWfGBwFeyhGphAz5TPEWbDDPPFh4mBcH+z/SM1zbLHayYvXu7UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784074114; c=relaxed/simple;
	bh=tq9NGWZZgXd7EDPmYTpgfBkrPIKnxQHiyiolViE3tP8=;
	h=To:Subject:From:Message-Id:Date; b=chnoft0IkZBTzuWk+UC7nRoH8OI7n3sxf9hcOocVfZ+/cXdin7UR74sMxOaFryIeo2O5p977Ne+QHToWbB9Mh5OhBDRgLbMBj1Vmx5fwHbsNdKaX+LuzRrgNJ8Rf1WvMEH1h8CK0qMYAadN1AZCh7JcIvF69yBeulqJfkD0VIvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=io7Qvwqf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="io7Qvwqf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA7BCC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 00:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784074113;
	bh=tq9NGWZZgXd7EDPmYTpgfBkrPIKnxQHiyiolViE3tP8=;
	h=To:Subject:From:Date:From;
	b=io7QvwqfxVmyJyHY59prlp2qP/w2xwX7o48wb/DtwD39MTPbdfNZog7HXFKcw6ndZ
	 Olqedmgn+iPMaPzMZZjcGS7iVeMYG6lwkdQwd7U4fAMcpj/H5LiIeDhukQ6aJI4jDh
	 mUTuOofOjmHbmIC8w5BDSVjmhr+6k5Pxo+Am7OgdDoMJFG1tVAlLSmA9DeYa6liZ2l
	 PniQCjwqJMWg+Vxv5iwuI49SPo0u/xcD2f3rLmpGUOytCFtG14USkP4Fe3YVtvJijW
	 kFsLsJtXjghzp3RRIwXesAiHd2V7x83eYP0M47nm4E05CZhVgCNzjjQHEDRRRjQQLL
	 9TcsxU5j17FXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B39B4C44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 00:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178407411372.20942.6177769870898527640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c160e8232986bbedbc6e68ddc1b5c0f2a9320bea5a2c700683e0f6137391dc2e
Date: Wed, 15 Jul 2026 00:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784074113
