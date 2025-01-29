Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D7118FDCE
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738191954; cv=none; b=Zcev40G5wRd5kWNx2Br/tpCG156gUUVs2X65JQWzIPEc1LJaIEjYPx7zCM6nEbF1sza8VIafTkC/gLRldZIz+ANBjmBYP0C9wZU5O78z7XVWRRP/t4BsJ3j4Ik8FChBA82WCz1xsKoqdJfP9IwdBOpjZxSQgN/tOaV2DJeO4jA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738191954; c=relaxed/simple;
	bh=7TWYGwiycf0N4pIL6t3wgHZ1qqQkMtHeKzfw3Oo0Pt4=;
	h=To:Subject:From:Message-Id:Date; b=KE0XZphMPT0aAvsPhy45t1i8YJ+U83qz8ZrKg8Mp7FNxnrZV/CuBe8zfCcoJ5WChiBj1/ySAmSK13AftjhO1NP3HTDEUTXUE5UDU79H543UTWLe5IbJ3x9JdqPURSMc/juwlMGkJIR2kmbx4MFmTarA1fsa0x6NS37M8/Mi4EgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b/eFnFPq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/eFnFPq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96BDC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738191953;
	bh=7TWYGwiycf0N4pIL6t3wgHZ1qqQkMtHeKzfw3Oo0Pt4=;
	h=To:Subject:From:Date:From;
	b=b/eFnFPqhQOqa+U3DkwOF4Wqxvz33f5gRyw0CdB5ImxRFqdsbyIloRhg3zKplfKch
	 AgkZxodYSWn+ZDACCEcmw9W4c/Di4NLrdVtnWh4Ch/Y+doSdn0C0+sl/dupEQ+2OCQ
	 UsA+hiPVk4qA2cl0lNrkqDzNpaUIVvqNcRYFhaL4EMWB7DU58MAmz1A/Ye2Zn+q2Wb
	 BfSxvFadMAAaLP0L2Alwzwz4XEBb9w39tILwnBvi82rBPlskEMErRa+MyAgI73oUgm
	 2T92JANYvR8Xeh3VAYgktHExyYlZxrDK7GMB4O1I1h2N7R6Ka50JYprlcWiwYHm7nl
	 e56YSDXe0kofQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7C8C0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173819195360.27606.8033716807392430248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b577e777af089f090b66ca2c429847f25646246bc3b3f4a87b53298b3210a3e1
Date: Wed, 29 Jan 2025 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738191953
