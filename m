Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408411804A
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759242594; cv=none; b=gGY9aLWWv7rOQEvOIXABuW3A+ekbaJAHQT2UaDytiEi2EnAObz/a7KYt5fLI655sAMc59DoId9iaI42rVAXYNCUYrsjbL/fmRMfSQyNJVrXxV0Ku8PiP21n32uuBshZTxeVRGE+1oxd/U92r6HJGpbJOJKxPE8FAIokALLDy/nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759242594; c=relaxed/simple;
	bh=pm65nALBGPoEcp7SAYhNJO2bqNLEOFob2Jl8NE+RFUM=;
	h=To:Subject:From:Message-Id:Date; b=AlNAvS7IdiwnProVdRJLyqdVSRJ6T/iHrDPaRpp9xKMEb0R9PejIncgFZn7ZQL/hlKlQVfEatUXX8OJgsiCJCIH/A14HjYy/l8Q9dDBsJbyYCqKr9qj5amqB5dp6VvbfhkY99VMmQ7Wlxo7p4w+fATb8QX+umyvoOhOhJIPoGjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YNyRSguU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YNyRSguU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A095DC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759242593;
	bh=pm65nALBGPoEcp7SAYhNJO2bqNLEOFob2Jl8NE+RFUM=;
	h=To:Subject:From:Date:From;
	b=YNyRSguUQAeUwVPhyp08UWhl91naIdKreJ3JI4+b9EolnwOKKK+jyZ6Jx/zQwIjvv
	 xkQTlAqYdlhpyfdJDFdA/AyyKIjrxnkje7T6Jbdc9YXjaQgVpxA1jB7bQLXF3Ed4Bk
	 sBIFaCfPzx8mstRg+NTGpsTcGVxGNkOh/rJ5m40/EwD5nA/9jecCSM92vhAPJjkh3j
	 fhIgf47J1Gpv4pH8ELEz1L/rmhbJyOFeVZMZkYTkdTrEFJ3rSYzbRPf21GjO6YXLk3
	 pMgHJ/i+CjaDbu5G3NVKSZ7W7R6iflx0XK2NUWF63Ms3E2onJjK6+3+pYtb48zynMf
	 aHxmvqIihhfiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90720CCA468
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175924259358.19047.395359542326915275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05c923476d14f559dd726b7b95eb991a5eb03676d63f8ef3602dcf605b646839
Date: Tue, 30 Sep 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759242593
