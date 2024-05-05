Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66BAC3D76
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 17:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714929143; cv=none; b=WDUyLUuC2ZZxe4JaVeLmd2yfpBhtUbrhgI3frp6Rj6jmzoK10D45Bw8mLMvjtQaI8nDeNMlFOxT3QRPHlEsB4ovSw13Js/av5AaCpeac7T3oWwnIc05P1VW5qJ4YnYJeh6WTrO++QQTIJwKeZKhtKoOZ9+FhQOZJdEnb2Lr+w3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714929143; c=relaxed/simple;
	bh=kBb79D2EoDiqhuxLoTwwA94eMClnPLs3pWYZsr78c5w=;
	h=To:Subject:From:Message-Id:Date; b=gtLKp01sYTw+mXpD3XyK6OxLOX5UBViHLoPYhSROPjkhif2S9CS2FIPZ0NLB2T/flKmfcou1xFtK6fJ05jquts+Qb50EvPIklPpR92yEbZaVWB2L93nSQ3q/lnOux1hCRHIt1ZzWzn9HxlR2VpMvYpc/NfEgQ4JQj6m/mY9REL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a49hFv2A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a49hFv2A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBCC6C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 17:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714929142;
	bh=kBb79D2EoDiqhuxLoTwwA94eMClnPLs3pWYZsr78c5w=;
	h=To:Subject:From:Date:From;
	b=a49hFv2AehtJ06TTQEfKsYcplEcqxhvEhmaLN37Fu2L+xQe4WxA2bCa8GbUw1J9yA
	 wXp80pQZALRgszObC7sggmD139Zi3ZuBLUAYUWNedJeNN3ohceMH8skaWNIKTqJxkJ
	 7xfXK5k0wIaFLG5tYuF5QXdejF4JC6BFe98F0WeVNaizIF0XiRT46Zor9y4jwJyOEA
	 3hBrYz/Cq9L2LNh5wRePgkB+iir40oEs9VesvwK0cMAMr/QxdkMBM7TPr6sRUC96+S
	 xqscj/TQQjaYSQQHc/ghJHcByTtcQ/X/xvRXyN0JTIn1wDJ9P6cL5J3ibQjQ+9blVh
	 MF5SZS3dyi6Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C73F7C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 17:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171492914278.9264.6334019244230702117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d05482c82f01348eb7d0c64c129c0c8626bbbb3f09fb94782fbd4f273f74ec0e
Date: Sun, 05 May 2024 17:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714929142
