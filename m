Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B89E132103
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733002554; cv=none; b=eoHwWYAU+HeAmzn66WDxsuuSmIX3i7F9lrMXH388YHIS3V80auppzloU9cagdrhvcomjABf/gDai0qgA7MkqilI1yR6hMlbBrLRmGUX8j7LwVf3Rdkuvko3cMkIFo2h1smk1Bsmr3l7Fkm+JZ1eNii9Ns3orqGQoMQb2JADU/yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733002554; c=relaxed/simple;
	bh=chvs+t/i+4g9vN1dxVCHHiomx/qBStToKDhcN9Y1YzY=;
	h=To:Subject:From:Message-Id:Date; b=kZaZH9LHBD8V/3DdKzlqXup17bBxipSJvFXc6jO9TIPhxNU4mSKaekxRLPcojiLzFtLE4SgfT6OqvIMsakFo/O4KdpDHEvSKrLFV3fTbs7X7tCqtcnTsTuHFwinzMxluF7XJhwSFxjguEOFdKWYOWx2IDA3eLJy2JzVayHV1rUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pu97Ob4I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pu97Ob4I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A488BC4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733002553;
	bh=chvs+t/i+4g9vN1dxVCHHiomx/qBStToKDhcN9Y1YzY=;
	h=To:Subject:From:Date:From;
	b=pu97Ob4IHIffl5LPXflnyL910JxoQ9Oh03hwS6tTGDO/VXtCVmfOgDg6GceR5vtYz
	 c545slwCDKJ4UEbHnSyArqa/nhrZCQVD2FmOZWNLLQmBgWo9Q23ISUQNaKVedAc7Nd
	 N4V7LSVLbLtQwMZm1wRCghSpPsMawsEeV+Q+xqdsvnBiutEb0OLPl/2zQmQ/ubtNHT
	 PEmTp4jPvveiv8BzYdhxjMHpcu17Uw469onUZ6zxJ9nfXoXgDU8E+BB+v510Nc+45N
	 MS3nSXSmzctJvjYj4wCb9A3UKU5GB4YNqGp+tSs5c5C3I3mNyTlQogNkpqdM4D9Ha1
	 DUNjP/UUc6haQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CDDD7360E
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173300255358.30705.11612700384187049432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 858745d23c026be7d852eaaa1c685d6b22839252576eeb0e6092e0322bd39142
Date: Sat, 30 Nov 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733002553
