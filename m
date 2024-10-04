Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C2F1C69C
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728010554; cv=none; b=eTe9o121XdTmHnHrHGjWR/Zz5UluE1X6A2pkANzE32nHa9unLJsqtKIFVaj5CusYYzK7Ysv9R3N4lsTGjc5j5Fr8vhSmU28/zZ5eP6eaaOPxYkhv5Uhm3Too05o+g1eGgZMgQhbBqh52gxyozVT+7TFNkL3Lh5k4pZFTmOGiBSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728010554; c=relaxed/simple;
	bh=UdG2k0aNzGYbqDal5Bb3wzuq68tdKPf3kAgh9w0venI=;
	h=To:Subject:From:Message-Id:Date; b=PdLR/M45MIkaSCZCrOvEbCTleipgVFqQBd7FCVwk7n7Ky13w/jvnnNDpQHSLHmeCrF7g8sVPyB5Y2ztdhdoOQLzmNU83dBFkFwUKDXJDSzRb/oJ9mXQ48DU3c8ATTnfOwPwd++Bst/+fDOza6gwevOmXwHsFvbPwRBmrneLDw0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WDKTNnOF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WDKTNnOF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB010C4CEC5
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728010553;
	bh=UdG2k0aNzGYbqDal5Bb3wzuq68tdKPf3kAgh9w0venI=;
	h=To:Subject:From:Date:From;
	b=WDKTNnOFStoEu2mNly8acB72bci2bjh39ITAY82XCeAn8yrIpTDUmZRReJXQ/GT3c
	 fkApBXSN/3Lcee687NvWWFDCSDfmJY+EQeSjiA08CUwIJ+IvZrgfiuj8d7Fa/mTNTK
	 C5LdJYK1joEwNNJdrvFCiVX/HTcC7Hyd8ZPQtuy52LFakM9SsVzHyAaanJxH4EJ/zg
	 Z97Rn7kzXxrxfPmAvbfkWrH6W7znQtuBr3vaVbrb9LOdIUXsLdihDPCVmYAtHcv/mP
	 3Mh2Bo6mQW3ojB729pXSToPHB/hQdXHbnLweoOVCYf4z2IYijymREEPyAWowsecFnr
	 7rhb9MLf+1AVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A49D1CF856A
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172801055362.29687.5891422987254909106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19e213640d2400a6173793bc488986ca5e247169b138f467cd7b7c0e7986ad59
Date: Fri, 04 Oct 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728010553
