Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377B526A0A7
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 05:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780635874; cv=none; b=Py3q6Chc9vvK+uW1iOT0e3yZe9+TUuDgoOe3Q69GL2hgiToHJ/vZUW7zJtNBHESB4/jci4h/um9CLhQ+cs1kWAppbEql3uiudhpgSKlaKT8MAEm+vL6QAvvJ9dutr5qV+PBlNxORA4SuOGhehktIvveTsrbBnVdwGJS8kF6CQVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780635874; c=relaxed/simple;
	bh=wlkfT4UUg+lk9yLtC1/4JLEiYUo5Bn5jrM0Bw3p3gVk=;
	h=To:Subject:From:Message-Id:Date; b=DWwnuwhaEPb4bhAOKIrKogtFQHldypE/wKPYHqIwaTIKBQzpjRb2wqj67dkhxkQswUGhUEX0nl4Pc8RYc03E3y3gRLFiKhsl0DtQPl5R2CzbjL2EEsJ6tWBdsi7M1IP7jVjdMjvOcAehQlAqNERls/T9VvqWRN+zhAzSYXJmswo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UmTONZHP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmTONZHP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4113C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 05:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780635873;
	bh=wlkfT4UUg+lk9yLtC1/4JLEiYUo5Bn5jrM0Bw3p3gVk=;
	h=To:Subject:From:Date:From;
	b=UmTONZHPPN+AP9d+G/IApWDzmomFidPGofMvPUVNA61P4N3+yF8v4bGMm8hi0hJa3
	 kA++Z3AmlZrH1bCgVf3OzRTaVdRq/OmyNzR2gWxkfFMkMn5sNzmeyGrFcn8U7vQcnH
	 0ZZP3/EtMlWr4dkYTdtECzmGdJJc2BfE5cbUFpC0ZcEmVVByNCms1yzbmxRO3hBfZq
	 HOdYKEth70CkS8zU4Nboran5NQ9KXN6RQXtHL1iTYJLmWe3SN1iCPQ4AQwRmUqQGzp
	 /cWkH95wpIha0PyfPWkKYOdtvxlAA7JCgJEVyAIFl5N0E+ZzkJ9aRxED5taQa1gw8f
	 AR4sRvZGJ0YpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FEDCD6E5D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 05:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178063587368.8187.10157418120427083689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07dd490127af3f25394cf228ff75b7e59d4765c6c9db4c80729123470c201cd2
Date: Fri, 05 Jun 2026 05:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780635873
