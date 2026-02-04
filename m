Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D9533A00C
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770186234; cv=none; b=gRdEOL3X7bdnWiBJDQ0O1exM6GoDPszULOmNZXt2hxMSGoqEDvqym8lmOsfza6c+0n1vnFfkhd1tfaoByPaP06dL4267Iv5IIJopK17w1HVfJboAzvSLvz0zJyEl4GWwiPli9Fvf5TeFbyBEZidF7uhso8rde0Idg1uEMVk/Bxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770186234; c=relaxed/simple;
	bh=qp4IfMrGJW8G2vImICUBzuse+AS4lvFUSyu3vhKDeCA=;
	h=To:Subject:From:Message-Id:Date; b=pl6L8R4APHSvFUBYLVrKBWFEFscMERKNZrMYlS9vCwVjtIIInOWzElDlZZeoVShe3A21m786pC0yIPQVIKrc6aSONx4oGtMsCQjunwkc7dSw9HT4B4FmGb/jatDkC8Jzr4iACQ+EpGjrddHccg2tPh4y/RABCx783/lyBYYNSWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yn3QGmmm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yn3QGmmm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B40C4C116C6
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770186233;
	bh=qp4IfMrGJW8G2vImICUBzuse+AS4lvFUSyu3vhKDeCA=;
	h=To:Subject:From:Date:From;
	b=Yn3QGmmmmuPQyAwVVkgDE9ZVYbKbLyiYGF0SP6BZ4svucn5fHR4W9RPMF50p53e5I
	 aGdU4zAs9QLCukREQt4GBJLnRZ2N56HswCRLBc7ATTvtnpS/b+/v7b8I0TeaPA/cHj
	 g4L8fuujCLf/K905HEMTy0qzdebcnWDpVda1VKbDCRsPNP7TIgZXf7iooDB/ALN7PP
	 q/sDcajG5vmGUCbwMW4pPyOkqNGL/C9QRMwx9mvGKTlgiwP77TQzMHrS3/Kb4Mlc5k
	 0RVRJdhtYs4jw6Rk6y2Z6/OIA8TlebQD14l686hJu021vbM61w14CquP1E4jfcc7Wc
	 9Nroij7tubSoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99225E8B39F
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177018623361.19062.9104348586503778305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4401539a901f7f95bdf811d311a41c994db54081cfd62f8397d4136aba38721c
Date: Wed, 04 Feb 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770186233
