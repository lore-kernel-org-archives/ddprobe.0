Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DEF542CB0D
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786105834; cv=none; b=EKc9PHcLePAB7EPW1x2KLLkiCy9Qc/x6rvQ0uVR6eyRZn50oTMubmeiQg7mlND3QBiEEsydIu/5+7l28Y8VptGtOBBA0ZEKFALHoj3ugJK5Jy3v1MYDI18C2fFJ6NgEmjJlkiGpSUL8SwRSvgvv1lAKTDaDDcrnaCLlVde08UiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786105834; c=relaxed/simple;
	bh=hfBpXEwAp48QpTZwJt4nNyasb+n/A9GftKDKEIUPFoM=;
	h=To:Subject:From:Message-Id:Date; b=VTF5ZClQOHwkwGeMzeczjMOykwQ4selz9nuM2Y13Mj8WJYGqQApj0Dhp3zIKr7ZQvE79+oqtFPXQq/GkVoJDcqOSGT8MG4jEAIDhN4aGy8Z1Z23ks4qATzostppqPJ7QwhEAPWvIR1qc8iWcx/7wOtSssjamToIBJEHOaCck/UQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZwGDvx04; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZwGDvx04"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FFEC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786105833;
	bh=hfBpXEwAp48QpTZwJt4nNyasb+n/A9GftKDKEIUPFoM=;
	h=To:Subject:From:Date:From;
	b=ZwGDvx04jzW4LIe2NrDGcEu5W1h0EuzNckOSww8UchMlnw7pRaVyWTE59VvZFFTy2
	 GnMepighPh09+fp2u5wg+1wee2jDbVPniOARdDIKQ8dfOjYrbDUw0PFK9RvNgkss8a
	 6mS9AQnjmBJwBOpazX9cp2guuRtQ4r8rXhmQ4EkIOWWt3BN+q7imiOp3FqGGGPj2R9
	 eQyxE1ELtp1Cxb0bqBsqgqBbTzi01xZpfziAoXonb4vMe5swqRKTKf3hTCB6trCUug
	 pittCAqfdqfRNnWiG8NuCvWlsrbviUYn1gBvHRbCHzajfql+BgzgU5hC2OV6iPZRYW
	 +F/kEeci7tPkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE53C5AC7C
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178610583370.23305.16969719181238343692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5db77a71389113858ebf8708296ce47d7a84a9598804f5f5ac2599d1bb976e9b
Date: Fri, 07 Aug 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786105833
