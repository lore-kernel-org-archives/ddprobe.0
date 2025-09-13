Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BAB92C08AF
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757807395; cv=none; b=nyJ752ODV7hh5WQLS9Qm4NKyRpPZ6xFQUQaKBjYTlxRwagNYKDSb1CaN7pL3ZkFPEWg3y1FpJ/GmZAqrxX5pqmk/mB0Rk+pyX4oy7MvsdC8SDGA7tqVa7YK0fhSwPU4W9ZZrNguHk2UMPqoZdtmsheHnV/GZFhcU4Vl3yq0SPHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757807395; c=relaxed/simple;
	bh=bwHV1vNhdjvjCCrjxeOXJLMTyPcijR5o2fiCPYAFO6M=;
	h=To:Subject:From:Message-Id:Date; b=avq5BkDQrnAwRA4H4OmUkmj02I1bhjPJ9yJSMuqt3sgBtCWd6iqkr32snptxugzJA6Y0EeYZmlk8cbRBnikJzI83D04PmrISBS4a/ZR7IxCpQ0nNTJc9Mdb1/jz+nclAWA4ZLRG1m+nM8t/nVI3Yx/EECJZyvz07yJqHwuU/V+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iWChZCVX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iWChZCVX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4BDC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757807393;
	bh=bwHV1vNhdjvjCCrjxeOXJLMTyPcijR5o2fiCPYAFO6M=;
	h=To:Subject:From:Date:From;
	b=iWChZCVXi3zO+5A1m81lmLtjNNKjwefjj+nUSnQaz/7ybyD7Un9RW0J4X3sYPImb/
	 9m3e889IXNr30WldoHnGOg4P8dPar4fSnf7bEhi4mtpl3Leef3D7hU5sU6lbJ8VGXw
	 wik3DNA/qTXU2kAHCY9kiNAfYx/PAtS+RCwTQ2UWOoAGJtKGv1/3MEWnhXQplOm5wh
	 pK8K7cndzzDYvhcOwf2QJQXWCk/Rj5A2IfC1rFeETM8Z66Jn+Hg19dH76YSdxyuP4U
	 fJNL/uQIWKZe8WPAPRmV1FnyBOaGBRCbi8H2iQFKaUD3dMUNYx82NQov3UyO2pKLrh
	 rrwpAcR3QJFnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93068CAC58F
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175780739358.425.3426185350520262992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bff04eaede0b821931afb8091ef25f613f2d20821c69937802039bd2e228cf0
Date: Sat, 13 Sep 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757807393
