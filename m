Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F3D327BFB
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 18:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778177254; cv=none; b=VDLFPmu8sE+13sshLMk950HZFXW8gmpWCoUyQmWHrgaoQvzOOZk4mforrEsVPY2OWWDLVFPYhU6XBTymqpJy/r+okNfHLlyzTO9MzA3pp/fq2eyKtWdt6PxYfqTAV103ZPhfQ09Dw3EN+lzykmxH8hhEb2cvsK5o6KWT9AQbxaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778177254; c=relaxed/simple;
	bh=60BohGTncbWBzKq75lcpY39tpTBwUAnLNXABkN3Kw9Q=;
	h=To:Subject:From:Message-Id:Date; b=bMepcETnx3ofFye5xqPoBJjWVeIC03l4Si9b01tVSDOal4gDnjGEjCcsqtEQ44QlARIQIjhx2tJqv+bvVs3rf2tm26fkjpjn7aQL6HPQwigNN6XoClq5HDoFNOwMc0AJdAYG6LaKahv7QSijQH9rc7uizcwBOUAlj8CVAnZD+0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IkmzOIVa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IkmzOIVa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7A91C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778177253;
	bh=60BohGTncbWBzKq75lcpY39tpTBwUAnLNXABkN3Kw9Q=;
	h=To:Subject:From:Date:From;
	b=IkmzOIVaGg31EfvOs31gHAktwPoerYFEKRLqgp+I1UYUkARYuRihnU1HPrqa6XRRC
	 7cA2qese/tpq+6zkEXL2odleY2g0iF4DRjbykO2jHff2p6OhmjlFcvJpSAxWiDoqy3
	 vZmuAeeMQ7vS+J+bp62AdUKILUrVvql0+y9MUU6Ta3UPiQcRyeBDF9oNOe1/lQRGiM
	 3DwGyGJbpz/ZN+lm7vkw09aQcmOVcnj1prm6i9sUX3bJiGnk4lm0MTIoyeLsTdVXXf
	 6x79U4YHIgteYzRMF9TmWA18lF7qB056nuzaeBh2pxEwybnL1EloxsAu7bXAoJoJ4I
	 514voGyApGnTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B175BCD3442
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 18:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177817725371.2307.9506449237895643939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75560a3ed56a80fd5294c9138358b09ca7f1ddcb5d0d31ec8f2e99cf28f19981
Date: Thu, 07 May 2026 18:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778177253
