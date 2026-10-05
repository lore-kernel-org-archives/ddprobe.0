Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BCB848640D
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791207034; cv=none; b=mEMsqedZslrUX+RNbVw2m+QOrxbBB6/QUk4cek22TuyrXX6CXd1SrTU+qOosPA+Z5Zs2j6Cj2jpOERy+09Okbwm85V5REcWH2GOthfXmsZCfxgzwwLnqcTfP5fKm5CG3+sztxUp5hRSebZMq9SQm5DdNANgOZtp3CFGXXmLMqCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791207034; c=relaxed/simple;
	bh=7SNQpboz6coMc9Nm9uJFArI7dHopO05j1HZN860zl4k=;
	h=To:Subject:From:Message-Id:Date; b=iPkuAWQajwEz+pzgYR2/iG1C2ZeSMf7s2YsmjW1cb0c6Oaz1eEFp7nm9OMN+8DJXLhgnxNAthrXqd6u3Vh5ahHCexR/JhB/sBNPmRNXAGimJzGsbf2VufwA6JlRchrkuGHYSGzBntku2rGD38lZiEAk+dmtoHC7AVhEpH+bqnPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t0DFS2PX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t0DFS2PX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20F4C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791207033;
	bh=7SNQpboz6coMc9Nm9uJFArI7dHopO05j1HZN860zl4k=;
	h=To:Subject:From:Date:From;
	b=t0DFS2PXVegGpJlkya81OxO6K7908+F+thU0at8wmFlxfulznsJnsDgJLJuHEoqfW
	 heyMdj3dsBZ27RSEt8f3Vkle6cWlfTiLB0CGVB7pEpaMpfnnyT0y5qhneCh3BFwuvb
	 3SvSD0exOSA4BYrpHetrLqpKMV+qmd78cQJ26uHepbCDTNQV6gHz6+zXom/iTbXm/r
	 2avmIuT1YxScfW17JlTEb4telJvvBzv+7HacW2upAjRhqSzmFBj/B632sOuNql+kCf
	 2DH/1FFaM7g4rHLqU4fQnmTnVxMyt+jU0QIUuapZMmjWCuRAZXCaxgQf9dphFrBO16
	 zdWqNfrLnVMfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE20CA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179120703369.10248.2079577685848188594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a64584e1a8ed80a124ece148f68b365a50d1626ed6f22e88f32a6bd3c1e320b
Date: Mon, 05 Oct 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791207033
