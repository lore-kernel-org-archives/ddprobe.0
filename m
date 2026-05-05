Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F5E363099
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 05:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777960654; cv=none; b=pTCGAHmLGNxHVXn0i2UD+1o7i0c30pBW+NdCe9yRClg9hnjLTorAlVA6Eg5/WKMS3tX6aVHiiNWoqhSE+d8Rcn0jpOubzGnqpJGGADpnfmCO+gVsH/X7rzgJJREgj03eP/Qxu/ifjeYNDT5uSBqfP2zx7qES0wJu0e5l65jA8dY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777960654; c=relaxed/simple;
	bh=jyEyh+lJN6fx5HwpXttdM6b6Okgyb/QCprGIt5pccLQ=;
	h=To:Subject:From:Message-Id:Date; b=ar5Yrf8yFzsCGEJp8EHKaiCOEY0pi2yOiS0nqslXzO83AfxnwKfQfXAdG1m8gNqc7tznDGOFwDD+I34MYC9uQTzOcg0L5b48VCPlE3Me1ADb8YM87Y50y3soMug/K5yrllGYs5MDiiPzODhQrQf/Zh0gtkO2q8s/h1FxuwZRkrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uhGwxuLu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uhGwxuLu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF80C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 05:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777960653;
	bh=jyEyh+lJN6fx5HwpXttdM6b6Okgyb/QCprGIt5pccLQ=;
	h=To:Subject:From:Date:From;
	b=uhGwxuLu8beUbMa9HXv2bdgkm8Qq9cEO/F22Ec2F7HN8t7wfxrilyKqBrk3My8aB/
	 YNCpixADWLcHU2Tdw0353Kdkg5TXp05zi864iDiVB2HhQjhy/8g0cl/ItQraDMvOaH
	 z0k9S4zkE03HpxNSVglhGJRFCCC3MEHkjdOMecXShE1Mx/+AfYbUWK+uo1U+qGqrTS
	 Br4IVmardaf4JmdJZHqvmXaXdgaaLLdLroOUbtw6qg7eNQTWdE4ZKopWf8Vve7ULmN
	 Ldd71ipuZP1IV4vm2IL6PfmN1OMv8C7HR8Dtoq4RM6pLljfx37008y8pepv1p0opAc
	 uq5PUgZuLHB0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE92DCD13DA
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 05:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177796065368.9894.13045849846753463332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69bccdeb589d09e1f098827b372fae1f42f958d206710a2f68f74142c6ffee2a
Date: Tue, 05 May 2026 05:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777960653
