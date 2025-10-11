Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288B31D5ADE
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760219394; cv=none; b=CFe0QyJUmPmOksXYpNeQPSR6lC3sR/vgvgVBbs4EhdfUOCFLXq3Gf/OJRPimwGKF9Ehk7ufYg3P/Zcrs4WAq7g9tJ+5pYyif/nUYFTDCr//PFQqaXOTLVIcB/70LfvHRKm7COnFFWQV+76NvZqPskVXZyaDWqS7Rlkx2y4Rhoyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760219394; c=relaxed/simple;
	bh=1tlogvtReen81WFvoZPj2gUYNETVqhjmKPENdSq5DAU=;
	h=To:Subject:From:Message-Id:Date; b=hmsNyIOJOYvQPy1ixc3ztSkbEps4hJkwLWTC2NTOAWbV6nAEf4E2sAgy9uzdmdmVoSpezAj1uIeB+qlVbUn+oKnAMzzjr7uAKS7eJYbaFm/MbZDUSnkJ0+OI8fWdZtxKLVnUwxvrH9+kb0vmmrwnJUiDCsXpkjf+A7/a1jprBWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pI8BrdlN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pI8BrdlN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FD5C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760219393;
	bh=1tlogvtReen81WFvoZPj2gUYNETVqhjmKPENdSq5DAU=;
	h=To:Subject:From:Date:From;
	b=pI8BrdlNV3ByQeLdnQqO4j4k8OdqYbz1yqH8vhQjTYNFIzGu7mB5VR7LP+zMINmNV
	 6/zkAF5boIUFckE2KLbt2xvwPWtj8/u/hSzreIH81Z7H5aClrlQzkZwxUX0F9WmM+i
	 41mixynJ7xcRBx/Eh36I2h6FxaTOWGnBWZusqmAqGRceSAxHiexiDXElhq1uXrkFDc
	 gQtVkWum5AKtSWY3H1urNNULP69R6dmlp31MR3L8dYvLxW8wAL/sSWhgEn7XLTc9Ar
	 8r/RV0TB99CxCh6pgkijH+NstGkWyH+CpK4bT6qoH2AHsQAc/A/4yR6ImV/AGiQ52N
	 rj9it2oK8Fs4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953B4CCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176021939357.22774.18185569755368231900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8d4b0eacd69b087539bc62f74e6ee2f7edfc8dd0040f5471e9086026b5df010
Date: Sat, 11 Oct 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760219393
