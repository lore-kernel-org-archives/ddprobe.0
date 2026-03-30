Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2C02EB874
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774886094; cv=none; b=b8YR0dZ9B/a3vDqxg03D3JPU1kQkzPz8qsuRfp+eKLDndmWoOIVaKQvIZiW9OCK1TjNEOoN7LKgtmtKCUZWwgy4RGk5jAPyiai5ksPfIvpN08tK66dPymXfuPx8bs3fQhDD7KQ7LUMsTL03gjiLIjHofOj2I4TNw0sXepTaOvTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774886094; c=relaxed/simple;
	bh=Hg9Zvzyn9XmTFqOqPLxx9IvuDFWP319bc9P1ZZRVUkg=;
	h=To:Subject:From:Message-Id:Date; b=eCBNn2gO8yzIx4sBz0ycFof75a2zlDYBBiy4ozWZUyxKPGDGYX0SGgbC/sgP+sxhfYf48BJZnSQRGY2MxRey37T8z/9NE+pYiFtxRxGA9gsbIhL+d445nAI41auhXKSj2cWAhlxTmJ3MzsXhpi+Tj54cm2Bsjpod9T++iUyLbOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mk3n+wti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mk3n+wti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C27C6C2BCB1
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774886093;
	bh=Hg9Zvzyn9XmTFqOqPLxx9IvuDFWP319bc9P1ZZRVUkg=;
	h=To:Subject:From:Date:From;
	b=mk3n+wti8JtCHfYYK3mBV/yTr+6sHpVQPUglridsdU6qFfBUzj+AVsF7Gq0mLMdzj
	 vtY6O6TguDZ0Y3Yphlzo9cmCjOhsr4GsMgZUpWhmmdJ6d7ds25LA1JgGrbArER42AS
	 t+CDb4N8bhanJ2586G1wr90RPej0917jYqAHJozNxUjclqXNfAtnc0060To1fS95M1
	 xKZhoJicO2kl8T+tSQMl7JeMka6pJvJuN/dm9lehpRGAUhBGyUSnlOWdPQoPdvFkxe
	 mgE9VoO1d52EQo9g/GWiygrGDHmxJWzEyst3wXh3lwiQANj/k0RJPEaMRLcYaEFdcs
	 OIpHHJoPCmKdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B431061B12
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177488609360.15392.9340299845078072049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24774900042338bf3da20c93fbeba484547419151d60ecc8730bd56875c1a7db
Date: Mon, 30 Mar 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774886093
