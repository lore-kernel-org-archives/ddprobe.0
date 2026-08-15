Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DAAE4B04A5
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786837234; cv=none; b=NdZFApQ2kh2XPBRseqyHi3MpLulWXZP42f5uWfTCHpPL+0kCcYWKyE+Ap/rMhLZSf6jAuS1ICrJilWnfINsz+PhHz2t7pN69u+D5s02+jlDZWgrZlcywkFp5Fod5InbFhUxp6101jdPvjfwAyteNhM4xMvMPmTkuoTbzj9ml6gI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786837234; c=relaxed/simple;
	bh=Z5xJkeAtOLF2D3OvVXP9vG/ZhDqd4cwIBgMm5zMTxzk=;
	h=To:Subject:From:Message-Id:Date; b=CQ+RLqcuamRlMjGr56eyBufJPr7cFC2SvY2z8kg5+LTLGG8xFSLtiMVHPzUDSGvFQItEoJcfbLDMCX/TyYnBDFH9HbxM7WFDs8yvLrev3pvOx/Hx/P/60i31ldvpC/Mm8ao3ZC0Axdcd4UoZocxZ1sRHA/4J9Efw8PONk9FKcdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=thTsqQnw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="thTsqQnw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6FBEC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786837233;
	bh=Z5xJkeAtOLF2D3OvVXP9vG/ZhDqd4cwIBgMm5zMTxzk=;
	h=To:Subject:From:Date:From;
	b=thTsqQnwJC91K/RnmmHf7gb45Z+w1ByReziAAHlzeGmVBbX9yJ/Y2v90ULhd7Bj+N
	 cASOy0V6udC7W3qe2wI1Hbh2tRmJEIIRIPfkdGu+C44IdFBxiLr4M3WGFI2YGCvLMk
	 CzVtvjFQ8aYE6meR886p4dQK+0e3mWFWRBvxwwjYnIN1bB6KaaCbcbDHlIFTxjFSUP
	 OhMdR80yi0/LVm61F6IDSY/NUcuP2BFEHhUvXPxmiHt3GKJE+Utwwb+jHL4i1wAhwl
	 il/fiO5mUbQbdiHO0GyDviJexRXfRexIPfAt6cQHsxaEp3PVSxqgi/6kgVhmXAFINX
	 SvztXGF9KkVRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC4D1C5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178683723373.539.15977426297344641350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c535144b9631853a99e5c7647d3a11c2703f350190419fd27c4f6007e109d9e1
Date: Sat, 15 Aug 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786837233
