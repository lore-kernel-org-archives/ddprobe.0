Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 718ADD26A
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 08:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717920443; cv=none; b=MBngZESx3aXrhgeNenB/i/i8c447a6mcnEfSsv+xnaetOXKlxwkTz1lLsqCTtCh0Zz7ANwvthZ1xrBpOdKijs/g9Q+fTBDNWG9CwxSDeWi2SAICEfqG+qqkv2NKnHgHqgTrCcnIelicDRy3a1eKUmjSrv6fLbYSGcmWk5jTNczU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717920443; c=relaxed/simple;
	bh=Zf0bp2USloIZSqa8TeHIbVD0x2B76OKFnMcfrxuzaC8=;
	h=To:Subject:From:Message-Id:Date; b=aiTg1X5W4hPF98o0cW4EG9cbCBIrxdaxd1uAy7Edgew5hWgtziCQt+s2LbFpX3rey7AHWTKI7kY7Z0bmHZAHTnP26fR3YG+wIXOEdMKX+haDqNv/IJUEhVDpbUfN1meVEHA/neWHZCRPumz51or8Jfsj1KOURsFweU2YArN51CQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U99GKvWt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U99GKvWt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD12DC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 08:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717920442;
	bh=Zf0bp2USloIZSqa8TeHIbVD0x2B76OKFnMcfrxuzaC8=;
	h=To:Subject:From:Date:From;
	b=U99GKvWt+xp0Wb+rwXJy4o4DTd5dwSIjY14PVLScSNWNtNyyeVY021LzQMd1nU8lq
	 uYAgj6umvz2bXnofmbuhEpk+ZVZzCLYwxLmZHIH6r7drGKKhUvyEypFhGHFAiDsuN0
	 swPoEhdORgQac8azNAHOdJlBZk+KPIZHF77BlBiCRW/K6futa7NykO9UgCsyHStAFL
	 4svwKCtSiYuf7VG/lhmq0grEsphDr/wE1l17wjMw46zgClwdw5SKTeHPK2ZnDmUf5z
	 Jl1QpxUWS+hhHjsqGy58oxpAk3WiuopiuKX0Q9ZEaadmAbV7xCu/KBy1mWbGnDWMp3
	 yWrhoO92kmeAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8B7AC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 08:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171792044278.9211.13150432384732203034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54491fb8ef2abda2c31d6d1396c18afee831fe3e984a4d69eafcc49bf03885a5
Date: Sun, 09 Jun 2024 08:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717920442
