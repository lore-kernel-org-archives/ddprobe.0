Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202CF1A0BE0
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755887995; cv=none; b=bff7dq/7oOMp/VW7psoXPLvJW1KEytqHKZqUPEDuf35uUltg7Ou1VW1clp5QdNk+hyKf7fuovdl5nW3aJrG68nPESTmv0mxotywZVgCsBUBC+YWL3kzR5no4FJUDglTrW1/q24okKtMPvZxgjYyHcEppy489HMvcfIcKuKy7f+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755887995; c=relaxed/simple;
	bh=kPVljIR0NaUMaqrFBiMcEgTJWw9eqXoAt/x6Ba5EqA4=;
	h=To:Subject:From:Message-Id:Date; b=j5Yn3iiNH24mwtyaY7hBOaEKAnw4lPP+r/K5Ju40o25LwvN7riO1HnWSfGz0xaAX2CBNexz5fuhXLXVUJVRNAk2usFacV1i8YQPdJkCoba1gRtG/AhsJ2aYZZ45A1Knbn70Jklk+CIbUPgcYqlBMTNWxWwSYoU8a7EyOMVHDBKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ImNakxMq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ImNakxMq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BE6C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755887993;
	bh=kPVljIR0NaUMaqrFBiMcEgTJWw9eqXoAt/x6Ba5EqA4=;
	h=To:Subject:From:Date:From;
	b=ImNakxMqP7jFXHHOc5GWURhojFbdjyu8RhvWk1ZfcN2o/bfMP2bTDiVv4fQZmGhWC
	 6cPcEodwPn35k0OEdm9mfzqiGUETr8/rKKnCDLNrfOyx5LH56g5pyJtBFZIvFB9OM6
	 xAPQ3zDRg+lcZ3+GyDd079MmBX8Tw/3HbXBACs4U3fC10jfuNloh7+QlZOu8RdprZa
	 I6KqE141SUnyAcn9FPSN1GDDeLESIxcz8I+BK39gv/K9Wane4FYjplp2RNNpWVzK7b
	 nNVq08pkhdVSIiLLChudksXFJFK12BolaLS4SRd6PHsndBHyDjQ0Epi41we+Q+zoZp
	 6cUSVYaJCVqkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94110CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175588799357.25438.2137129015994973899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8afbe32386256f2b5ada7a0d2d027b5587c62f27cf84a947e419e9b6bf00d837
Date: Fri, 22 Aug 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755887993
