Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ABF936F90C
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792267234; cv=none; b=rbRHGDsh4vtRhl4K0czrJPiDAN4/JKNZjPNAxj8gD2j1tyzg2Vsz7xLzUMRQST4TnCTte7aE5gGT30AvlT2mzT/jjPzi0aw7O6U4JdOMEuorgQVxlVAiUhH43ZN2woKM7xt4v5b1t2s/zq0+gYESKnL+sNTE/QRCh3o7xJ0y1eQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792267234; c=relaxed/simple;
	bh=deRk0xP1QRjyuTOnRQTuL2q7NCvOpeNyYKpoxPiFTjg=;
	h=To:Subject:From:Message-Id:Date; b=KWuwzSRDCKuA7PHQZW2Q2J9rcZfQh7Jj49ZuMVTXVctpwxI891oyyrMgKEfTzdMJhzGEgr4lSTSDpe3aAUFcRykXOAticYCokUygOcHYP/+TplEPheGX6JqA5ffA1GcNvdBwYKjqafVFMEZ9+0kiLLNBfp/0ZLaiUqCVSslvDjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QuthG9Wd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QuthG9Wd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C81C2BCFC
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792267233;
	bh=deRk0xP1QRjyuTOnRQTuL2q7NCvOpeNyYKpoxPiFTjg=;
	h=To:Subject:From:Date:From;
	b=QuthG9WdaRQigQDUjZsYXb/htP0b/w103UgaQyMNLifRtKVH2nuO8HC4piAECXGeX
	 WlDmTrjTcaPZ2RBUPNZmQS/3j/ojmzrOXQ073zxfF08J8VSDx1XS6HjkbvqrOQ9lex
	 QhGrW2lgW4WBtDgMTwrcu1eI6YBDG6nM4eZtPvCvoNEGw8KPYnakZXEFaTFjgaF3Pk
	 mDbYyHTqVn+R9XlusePg6w1HcIpnETLlJWE6+cDWaGC9Np59ONEUjp0oM6tG26aHMn
	 Lydd7t4DPxLipyDMujBjfL8mAn/eOKfIven65mwBIGHly6HKYXD3cQVWg4fZXI28wQ
	 Iq7SQxjg5OkWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE411CCF2C4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179226723370.21244.16328024913607442804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1ed5a3f772030e671c212928024f6285eb7db7f870d7b66fca17c48c9de57cf
Date: Sat, 17 Oct 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792267233
