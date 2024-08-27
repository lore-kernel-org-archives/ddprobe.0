Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB67D1D0DC3
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724782553; cv=none; b=M9eckeiU+6MYOAzLh+VgHB3x7AQ2pDr9bQivYJA/1pPSfo5eanznMLAVimRLHBSHMZZsvCHdu6xX2awj9rbGZ9iWLF/dtrkBamJNdjb8HZCkQSFOIsTOcifEv656QOJJK/q3iraFumOAOcqrR8NtkUNgxnmsofQqi9sLo4at6/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724782553; c=relaxed/simple;
	bh=ZWsxh14T4FOOZ+TCOHDRWYSqIS4XXZlTrmvJdstb0Ic=;
	h=To:Subject:From:Message-Id:Date; b=uKyqXsZJ63Fa1Gm5SJrStqcbsG+PEdOKg7RduQk6ca4CY1cKTPn3DHDblB/kp6Jl879ZVJI1FpFLCBKX+o3Vc9xxpSb8baKR5gpPOeSNWCMhpGCi2gJEnrCFprbtTLyrHZbl76RUqcGKM0xV6QwpH8u/QnFRV5MPI6ru2IQJbOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VYHTtTtQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VYHTtTtQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3CCC567D3
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724782553;
	bh=ZWsxh14T4FOOZ+TCOHDRWYSqIS4XXZlTrmvJdstb0Ic=;
	h=To:Subject:From:Date:From;
	b=VYHTtTtQC5SPe5SmAya2EgaLRlU2FJUrnYkM/6SrqxMnuDpyPyF2UX4y1mRWLzWML
	 WbPRILPN0I0NFI4cfskOs/ErNqH9TaJB5V4jPbE8ahQihp5U7wo91qnfldQeyTPnML
	 gR/pnqllOMHuIw5sLKzlU5xELE9rfoOrHPWkYCKYZtxcpRceHbiAREl6aMsNBlxBDi
	 5gTYDDXk6lUBqqEOckStb7X6riMw4V40HuYQ4g/o0atYX4S5DHpO4lTNfPMbfsmLbk
	 CDxB2WD6moNUC9C5At+HdeO6vY9o+kI04aM1vV2H+VmlFH6R/tGykXNz4FlLKcTlb9
	 NAjy/sahRVbfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D56CC54731
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172478255363.24048.256105041703415830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4c41162efab67870299f2596d9b7c90c5978d282b099355dadd82061f7d6eca
Date: Tue, 27 Aug 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724782553
