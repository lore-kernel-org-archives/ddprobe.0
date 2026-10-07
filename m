Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77CAA19D074
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791348034; cv=none; b=PAyKSHBrhJU2ouQPho90K1mANlPHtT2RxnS3Da6Z/b77ob/yCIRN0nIcGSNuNw382xnu2XCc9CojkcEnRTmJNe0mR6fRBmnpvo+KutXduIPN9Nr164xFkSlexG7cNRt4wkiYFGLquA5PalfaxPZBMGODTbaUEji160Co9AXuvSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791348034; c=relaxed/simple;
	bh=ZTmlmFjd5gc6rTSGO3esN2yHf6lDONa1LJLMiQjh7c4=;
	h=To:Subject:From:Message-Id:Date; b=BVUMeFWSQMNJ/nT+ul1x6n3R7ABz4ehR4MZOaIPI+KMz8Dpd4sor2uozAR4vgCHwTbNHg0hXwv8ErGTQkPQIEIVyQjsvTgZacd/uDS5ty1HFDy+zYqPaPRjo36OaXdepDCKRPYO/m9aDFC9pxyODb6KIHH5zIi+r4fKsuH5dTnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CwSA/+oM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwSA/+oM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1F63C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791348033;
	bh=ZTmlmFjd5gc6rTSGO3esN2yHf6lDONa1LJLMiQjh7c4=;
	h=To:Subject:From:Date:From;
	b=CwSA/+oMOvTAVp1igGZbJNJr10pDgixbHcmyxX2jXUNS72xID71yaddO3uMp/AT2e
	 3NA4BPtQTFl4Poo3iiEnN9if8/G9Vfx1K6Bdls0BR23CuNLsBYtktXqxIsns6Z3sEt
	 t3QQ/eWVNxqW2h5UF0w72XuQb6pm1YhGGkhbzSNU+8dC99VXpYZVrdBKc/R4RBZdvq
	 yhYcFLGSqbWxU8YUlDQilNZxltkhuHPUesUlZP3KT6OIzHAj898920RPBe5N5HL/43
	 a6Fw8pE7KNDaqUn2Q220Q6A5KSqgRxUDWUOdhVMR0p60kcEdMw8017FQSXTLaV7nRU
	 51bhEES5FLATQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B831CCA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179134803374.7074.17807469083825881835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8e6744bb008f1b3cc8a5a61fad94a53cea9560ce036465f0701ac8e2380cf4d
Date: Wed, 07 Oct 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791348033
