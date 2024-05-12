Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39AB6CA40
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 07:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715499743; cv=none; b=VaU3hWAq5A3KZJ5E4smab1PuNp/X9v4T7e6wu23r7sH/tFMn+3h1IdElU431tXLbEZdnnXzJHRYT27cCILyYvScWTaTdAB3reRBVA3jC4QwPfu2R4x96IyruQoOMEPOVXtqZ1Reo9aURagozMEdx48wFhr0wm5nnao5L+oNkCTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715499743; c=relaxed/simple;
	bh=UF/x/TB4YxeCe/sFrQJupbAs/QUKT2LjIcjDPh1udFE=;
	h=To:Subject:From:Message-Id:Date; b=jHgdqFqz7x1xwBA/tYEeNPSSu1G0iT9Pel5BJbrJmb+2gtrk3NqtUVzFni4y5usHOOUwMeUIDo9mNBD+FcsejxuhSG1nas9QVFU01F1+Jp9IMAEZFVc4QNZMm9jED0NCfnFjGYay6LnJHDp1znCU05x0WewXuwPqu+BRjeJJW7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=naJvhdpN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="naJvhdpN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D695BC116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 07:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715499742;
	bh=UF/x/TB4YxeCe/sFrQJupbAs/QUKT2LjIcjDPh1udFE=;
	h=To:Subject:From:Date:From;
	b=naJvhdpNTaCOBKkTNFfCMA3Ar+K3zTqcbHGnEsda4FuOYKZ63TJxIIjipSeBHbll7
	 8KwcAVSmOFmHM9Lu1osuKyd5jD9+ympHHS60ZrrD2biQyh7vphG1ctudOUr5DiDq/I
	 +W8OI8LZPTCTSa4H8aotGPKsv21DSB4KD+SNJ4VQ9rEMZWYfSoIYtxivsSfszTMwSU
	 TrQFSVxNJUSskMzpmOWu/qCk16GXGn3sLATO0KxWfJlBMH638nJhrPRLvvC9pbW3zC
	 1VsR0twqY5feU3L1Dtv2w0SusxRJOQXdBbDu4FuNEwiC/OrLRccftGzwN9qny8MgVx
	 azb82wrFtNK1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A14C25B5F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 07:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171549974276.10112.8765662654183632212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81136882c5d82e7fba9152791a4be3ee06e4d521314f06939053a8a7f865f159
Date: Sun, 12 May 2024 07:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715499742
