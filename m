Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C7D17E
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749361194; cv=none; b=rIud/vEDdN8z9aU1e6ARrezxknoZ7PmiLXXmNrc8c0cefqzvxpgtHnD34PC1kvZxGhob2OpIygpM91KGoIsurSmuovgpLN46FFSKQJnviEWwZOpDT7SCpa1k+MtcjxtHneb7GAxae18eKQrPXvG47FmuCXGas86agfZOBIRXORk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749361194; c=relaxed/simple;
	bh=0m+w5tanYoHjo8JwHHHItvxWOb3Q12CZd4ygcwUaOdw=;
	h=To:Subject:From:Message-Id:Date; b=DtSJ+bNxK5Vg/xSDTfMpIfKOcsx6z21/HimFzbarFgCwaY1HhyYR5CB5fU83d/sTxKxUJifryGvT65riU0x0eMNj5Y9rfCKGcfSGOkL/aJxAr2vDsDkFJg9Ov/sRUiDg2pphS4lIBnqFkO6YesEZNnIie/IBH13ZkKg/oE3XJr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6CeSt1E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6CeSt1E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1950C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749361193;
	bh=0m+w5tanYoHjo8JwHHHItvxWOb3Q12CZd4ygcwUaOdw=;
	h=To:Subject:From:Date:From;
	b=J6CeSt1EzUuwFdxSjYdUFpFZ/My/gcS7nDxZJHItXbvO2BTlA4nuy9MPhwL5L2sWS
	 rVVGtFx0/ZnfrlLtu7bl1aQyu3rmFVpV7fG70Wy5e3tdhUl1j6jkEutU3MPDW+4Q3k
	 RnKooDRIgrXH0MizxWyDVE2K7T52UzqLkT8upeHyHnv9OQQlrYLPxR1Tx9Ld6UbuF7
	 LpqqHOR3VdiEi1ohV2ghLU6wpvYRnpk69JrFCJPttEW8Mg7ruMtp66uWylpKcy78iv
	 otJxJpGW2yR9bn3NCFULXgcPY+AUXWH/q4c2x1EjpNqYfp7Wsctl9mifvIOkj8HDDg
	 E5/XMJIHrdOQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC5AC61CE8
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174936119357.6042.6453443039916839573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0185a52b6378ba2967a77e6a02a6a77fe3242fc8b28675457fa0bcad525ee91a
Date: Sun, 08 Jun 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749361193
