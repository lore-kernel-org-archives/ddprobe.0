Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B84625DB12
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 05:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775973454; cv=none; b=VJc8lN8VzwTxPdfdFckvPO2iJUCwJdYYQ5pj27O/BIGJowkSYwCFM6zrMmwY5ek6EPO29FW9dkXDBIDxJcTfeFb+Sg2/MGVDJs//G1Sj9o1SGmIdzuRj6sUxJUbdxWoih2LJQDLlwMPNa5ISznfTNiGtfwzx7XuvbNeWWXjTkkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775973454; c=relaxed/simple;
	bh=tevQoxpV0LA9Vga2wNaXlsAcmcv8GiMSsPAkKJnuBsM=;
	h=To:Subject:From:Message-Id:Date; b=FHEvsS6qUqWTnGtc3SV0X3Ls2xD1Wjs9tFKpG41JkyfpuH4TJVZLlDifeBtG/S5csXQW3WiIXLJ3OdLGnVCR+7k6T5BCrgWgul0u0eQuwNM22L2fBKmZ6JM2eScybrrs8jpTyFHwbP3VHuLYR/Yi9NYNAhYe70SsWcML6I1PMVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5zhFA1q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5zhFA1q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF370C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 05:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775973453;
	bh=tevQoxpV0LA9Vga2wNaXlsAcmcv8GiMSsPAkKJnuBsM=;
	h=To:Subject:From:Date:From;
	b=t5zhFA1qGWDAEU2gRnvCYKvk7KhtSLM2QsFOT2Bpq3OsICPUOQYZPD69AvV29TmtA
	 v6aEcDeNIiwi1C2ibY18dFoXu6N/JvlfMuc0cJGBTugkaDyPGk8oFnsQgdvpgnvTTR
	 t2ZvAGJvUvLT0nuCV6LWLf2ElN2a1e1AlDoXLlx1lx/5CH2N/JcvSD4aTykMjLWs3I
	 z8qfLHmuPoBTKhfE0UCHxQLyJJ2HTuz0nsisQDNw/8dJRe2pw279YSdIUH41hZFFH7
	 6O0bmggMkXKPooXSCoBmVFFKbQ8V27+xwx/pRH4R3TyTLIpmyHuwMyaXSYbWuFkllU
	 CcJMDk6XOAO5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCBFF3ED7B
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 05:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177597345368.13469.12348152838924056372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c81296f96f2bc48ab34e10aef5c42dc22e0eff484e79b43a87a27f836baa32a9
Date: Sun, 12 Apr 2026 05:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775973453
