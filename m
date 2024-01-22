Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF6701FC1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 17:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705943297; cv=none; b=oBp7CbYkXDY8do0Ew5WS170cqoNYXvnaTYUpGtIW120f8qQ+C6EKlVf7ImLhwQpb7qG0J7/Ny4RwRkrIaidzKlmxiLJHMtDbfuucMzjnqjInbybZAQ9aOPC15ClGEH5V8vgp9iMFMiho2z9gmfaeqChLAjFM3hAtXfxqL9S8zjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705943297; c=relaxed/simple;
	bh=xkPj3hld46NCCz7DSjgF2WUd5ieaXmQNr5bv5DLT7eE=;
	h=To:Subject:From:Message-Id:Date; b=b1Y23LHX64cfr1NXpggg7YwHBSAnNkf3M3NzaHEHE1MNT1vACerzkwhMtIGe23ZBYqOyrZF6QxmRSV98hqEt5U+SvzoJOc6V7WVUqpaaeW/3hi2r6xGHt9ydUEpYmii5FTFP4hGib2fYdMFiLf1Wt4B5T7Ukv7N07jMqUjeur8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T9xoMZbb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T9xoMZbb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72F74C43390
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 17:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705943296;
	bh=xkPj3hld46NCCz7DSjgF2WUd5ieaXmQNr5bv5DLT7eE=;
	h=To:Subject:From:Date:From;
	b=T9xoMZbb9dShMcxnUrHznpnYx3H3K3m/ou17vH2YXcmGizq+0DoUs3yhW9wIdxcoG
	 Vgl4uYHm85Tj8P6M+B3rJDrpzAfiT9kFXCiCRPBw/w6Yv4rARsFmmIhiS96e6fx548
	 Y6dvoMM1gTidrmmqKUxbFKsvNAEgZ5CPuqDto2youMUMkJQsDG9IJKfOVrY8nqb4Hc
	 l3FwG8oEYqG3qJ9a/nwn4g2TzCqR82LHNIW58JsAs0S2kmYycKtfffR1bCR0Qs6abG
	 t/PRt5n5dffTkJPlb/em5V002mBEogCOU42eEowaHqNWGF8Ji/KhyXJYsYNUjlMxg+
	 Kq/KJYRT/4q1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BCBCC47DAF
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 17:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170594329636.11446.9957142821401270026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb76d345fcefed6c47cf65eb298e23e59e2c3a18b2ac480db12df74d5781d86e
Date: Mon, 22 Jan 2024 17:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705943296
