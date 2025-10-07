Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48789218AB4
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759869594; cv=none; b=ia8Efon1Vm/zi9FQTD5x39R76TkSnkgCbqXgJ8J6puyMk1FDM9a8xL6NILeVTDdu7bJVmRAk+p4fBFohOx7nFEMQoY9icHThtztOEMw+8OA+H2Y55hw3MPW0npFn40xbTLj+oC67Ly5fNKJjGzdzXFf61G0wv7n9JN6aBM169S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759869594; c=relaxed/simple;
	bh=Wc7QKloHUSHyhYgCwU7kcFQV/+1Ok3wHEhRo0Aantlk=;
	h=To:Subject:From:Message-Id:Date; b=A421QyzXRRd+SK0BR9ddniYz6cEPiCOLmoDLxcplR5G/zxQRc0AVCLwj1nDlxH99GKLjlE3ysS5E9AT6zgco0zOTcPe7Tw2efgK3wrDq9AkXXFwOWTLiwuLRpnp2nN+P7KUfI/vWWmBScO6hi+gdGnmdDhZrrJdGqW2Ip2z/WCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpL0+Grk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpL0+Grk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC37C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759869593;
	bh=Wc7QKloHUSHyhYgCwU7kcFQV/+1Ok3wHEhRo0Aantlk=;
	h=To:Subject:From:Date:From;
	b=gpL0+GrkICtBR8lbDEVLN8ZxM0mPF87WNL/fz1wTsCuExLBcrR/I0LHACVrB69oXp
	 16jB1z0xKoYkbzWqlYo9FieUdj6gDk7jr+5rb6payhWjnb3tmMBz+QHCqvSEdi/fea
	 tESZ5kyNkcjL+/r1P183u5Mx7queS4+5qz2W6y4UqAfGq28yw+UR4xZpAU58/zR3xV
	 QwCCE+ipw5pV/PF0bmRK4ThcrySv5FN3IqNpGVNaPsRveUx/u14o9qo2OaB2V2X5rV
	 J23sW+SMdbt0j9NXODKN1cYvqyfslVCJwH1aWAiK6J8g0F226meF7WDcjMEDhCLI0h
	 fpLkIRuDPvRRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966E6CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175986959358.11809.8816079542340191618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 110c1dfad45d589a0d055c293158c3dbf6f3d1755ecfb2374d197ce94388d12b
Date: Tue, 07 Oct 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759869593
