Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BD884039
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734126354; cv=none; b=QEm4z4K5XMayaPG36zV8b4HUafSamsGXaNkEBvQLRn2SdnJi9AQ2/6lj7+KoiYlemuyS7NVoO2hYUn6hd48PvSRUL2rsEkSThjd1DCbdGFgZwu5Ux4Bjgq2h/VmBnfBS+CrZgxUdc2+o+r8xt0wAnHh5YRAKA+9cdEVChotz8ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734126354; c=relaxed/simple;
	bh=SEHU3BF3SJEYiiD/Ogk+vX2xPwCwDp1iQGGeZgXetWE=;
	h=To:Subject:From:Message-Id:Date; b=A+iT+jHf2wYhNiUuKqQ91K6TMPQ/ZuDIDMZdI9IKHlmRVnLYlfbb2QiakMugeUt4t8EbrGHMNJTjkimLJ/tgX+p36RT7gP2LlKa4usIUR3LIYcMty0dppxINVRNRHRwKnS5+9z2VG8qvdPpyY/3n3fuUW+cpiVzlny2Kx+0p5Sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DvcYG0Zx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DvcYG0Zx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFAFDC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734126353;
	bh=SEHU3BF3SJEYiiD/Ogk+vX2xPwCwDp1iQGGeZgXetWE=;
	h=To:Subject:From:Date:From;
	b=DvcYG0Zx+NTfCSKVIC+yuQAUO6ub9B8E90bnIMGGh2LhPVxCJOaPYPGFGs/+Hti72
	 QKHiukYQt2reZj4EQ5FLVIVQW00zRowHiYf0bZtDMtzlyoJ2+LB0ri5Qo58Nl1Pae6
	 MdbQOqIu9mouBxJrkyn6JbINFQ2ctS+TXMPqFu5X2Vl718AHeJfFm9DFHkrKPLZexf
	 0c5CaRBx4vIX8S4nxyr7dA9adnnxcDY6yK1zqMHYcEdjMKjQlirxI1RL8E3sRHZKDP
	 /u83WVKM2H6CD/cAE0vPPDBjfnqbGTZlcO/u6FclIkM53cEyzCTI8/K4eDJrpcgQi5
	 FAhI0wZ7NbKMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2B5E7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173412635362.12857.11890738396414232510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5b8d90768fcdb54f954c0e9c27a6ef89bf84c1247413dda7503ce60f7aa88ba
Date: Fri, 13 Dec 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734126353
