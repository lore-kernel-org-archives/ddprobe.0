Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B01F1AA1F4
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 14:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783695514; cv=none; b=KdravOL9+lAwWLwoXJlI7kp/PlqoOkbtIl16kM4yA92GnRy0S/iP8oFirwjITyavrTPaYwuV0liBoyvrwwDMy+PGx0oIS2E8XqeCFZwcT90g2zy9wVraBi6HBURC3ruglgQL239gNYzHz9u2ZUdlErHEFaGXZUBOlv/PwRPP0AU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783695514; c=relaxed/simple;
	bh=kSuyYoaRiVFVsQBc4sM6GYx9an0S/lNCPdgOoHWYTv4=;
	h=To:Subject:From:Message-Id:Date; b=EjoymVa5Is67DpPs5T6YDpMWk6mjVYEdb3gXDZu1/RDJh1wi3DufwZUSJGq8sg+BrIcVwTaKzxexmNRlOfPns+nohj0Tdhj0qrX2skvsYUD2dJ+5Kfh4uohu6StTBnyb59DPDfvi+8wy+gkfOTStKzHaOCiw4NeepBMBhNFsFDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oFNPkzJn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oFNPkzJn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED1BC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 14:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783695513;
	bh=kSuyYoaRiVFVsQBc4sM6GYx9an0S/lNCPdgOoHWYTv4=;
	h=To:Subject:From:Date:From;
	b=oFNPkzJnN4H0ibUwYtGHU2lKQ2BJFTSyqawzayC+cBPh0NBJdfiFyDeoVwAUC8vxv
	 VdNP2bsC3GBMTaHA13wVUOR9IiJU+yedbIRdFN3ZMUFVHQRBtQdrLRIy4v00lJIjXO
	 exIUF7ydtBlZjjcE/RA0+d4FUsCvk6nw2qdC/FQVQYnQyfP4YrgneLNJsY0/Qq1UGh
	 u/S5FgWI6WWeoUmSQUmVQwxR2bc0xxXZIUxCA87QxMjzT89BDKLMh3hOi5Rg02G15D
	 rg9wg0sNjFo+MewVYqEcNpSW++gANE1dl2hGj+bydIEqkDREsqAFJlm6L24SF6yQi6
	 fHRMHz3FNllaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2AAC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 14:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178369551368.31662.14830289340224154385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddee59c3352fb05badc56a35007adfcd86e7a625c3fd8053f17bc363c13e30b3
Date: Fri, 10 Jul 2026 14:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783695513
