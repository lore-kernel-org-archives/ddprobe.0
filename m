Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3789863A9
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749694794; cv=none; b=BsROiFg/JvNuIBdUoiMDkxy4JhgP+KBwtbFDHoQGYSg9IJU3tFqCscjnQsxSEKiYrClR/YpBfy2fGrVngEfKVbddGFJINYU1gNiw0+R0LUu7j0T+MnxkY0hhQNVS3AsGYDt3B5EQvev9hmgV2+YugGd8bTJpFxRpnH723L/RckI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749694794; c=relaxed/simple;
	bh=/jp0vaF+UE+eNcZeCnBmbeQCMokygjcogjkdxjZtPeI=;
	h=To:Subject:From:Message-Id:Date; b=iaUDFXj+GU1gT2SRKwkwHGeOjBN0w6mwdQzqhnaKdGHr4fPZsppsxXkgNaymP15gkXyzRc/x86EGt8+38SbWdvdedt7ZpASBqci7RbSRjvd7yzuXaBfpgh/b3p21fdmAIDejZqskT7TTXtUgWN28364dmSNj/ZOWQkhVUtzj7bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJ7+/55f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJ7+/55f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5257C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749694793;
	bh=/jp0vaF+UE+eNcZeCnBmbeQCMokygjcogjkdxjZtPeI=;
	h=To:Subject:From:Date:From;
	b=nJ7+/55fzbJedDG7K1RazGmBdW+MGalnBKvldsuIFtwgco2Fj2sT6MGJuj3Egd4RM
	 im0Ojhndu8UiiYnSHyqrUW8Z+I1vtV2r8Kutz5kzMKCyLO10XtLR31FDBvfTIDxgoG
	 kUVCymYv+5WC5l95IlpUXP3qYyJQZdR+kXAuNUXhT8uaC/KcQLxfQuCV+8bFiKBzdd
	 JylJBGKvZw3A+8OxNixaUEF+1TDcRNtOOd8aBbbmS42ClZfbjijTyXAPUQFNOCm25P
	 d8drsGfksenkHzPCzfhOCK3tjCpXxLJ/7vZkVfx6z/qqxOF1T9ILOD3WjaoopEVyzx
	 tZwDEDG1wBnkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D5AC71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174969479358.16694.7615680869694690701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad6391539229076b030a6dc289c758ebe083648a777e9743558eb8a1ae9732bf
Date: Thu, 12 Jun 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749694793
