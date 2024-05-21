Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577BE1DFE8
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 19:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716320003; cv=none; b=VnTXhDB6OGu8J1fvhBZ6+dzYXCiCPWq4DpNu9U1athw6icWlboeTZaPzMsJFGbDsMlleuYQ1udla1YPTxmeC/RAdlP+BxDYVE3AImz8jyUXXWKLVwGcSBFgYbUtCTgccj6moJ+wb+68V1nbG+qeo7QsXhFcIiM18J5QClRwqJ8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716320003; c=relaxed/simple;
	bh=MvDmnn4b/ADfx+sEs+iAGdhZI0Y6FZEQaG8EqPu0CFQ=;
	h=To:Subject:From:Message-Id:Date; b=hrTG2HiEw2bdLXTGR9rM71OT6oPbC6fMXcHgETSRdhIzVECmdj/lda8pPlKw8Ugx2JTlKzq5DwEF3AqLzUzQ0OCWWUtZLYG4YndtkkuJY+cIluRMKdBJuPMSUznnv7YMaw67sZ4uufBAP2j4e9/AwIQikGD+MQQt+fAbV/Q1A3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RL7mxTCd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RL7mxTCd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1998C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 19:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716320002;
	bh=MvDmnn4b/ADfx+sEs+iAGdhZI0Y6FZEQaG8EqPu0CFQ=;
	h=To:Subject:From:Date:From;
	b=RL7mxTCd1ifxgRNeWfULeLNYd/xWI0cSZ4Ys1oGLlC6pMeI+cwbSZyrdWDKJE9FEq
	 SWpKRlrWwclK7SwBsLWVbtitVzXtTAP7k2LFpepa9NhrB39r9mhIVlrSkGKLVokFTX
	 qveB8OCC2lcOKohZuZQHFxlW9q176vKqmH8Az03NgOd9+spVsCztks/AAJJtrozpzv
	 aAGcz14KMUuKrvg39vX84n9kKGCfsGHjgLHSIfuJesYRO6AEaMUouSuTwsMNr+FKOV
	 QFO6GDCjfqIplUktG8Plu5gvmVqRpOYlUePTtnE/nhu4HUa6uyY4/Z76+jkWUdjLOJ
	 c0ZRsFrksW3Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA09DC25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 19:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171632000281.6333.1228365054029718148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 399ea26bdd07a960d4264c84291c5ac895e2048278a77b683d067f2f6e6598df
Date: Tue, 21 May 2024 19:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716320002
