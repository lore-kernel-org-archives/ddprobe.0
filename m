Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D9623F383
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 22:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740956334; cv=none; b=K6z1BMy6dAZalBgziXrzyZxgt0kKtPGQsYfSbuh1WWUxUv7ReQ9uDakEoZQOxkmjpJPdCloGlVgmMneJ+6R5j8NQkpjfhbql3kZWyXfvHk0kM5FEs7FF1Ea6jMRriq2pWfpXzbtmL4VQr6PnFHtD5NDajEpMfyG/1cYM+R1suDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740956334; c=relaxed/simple;
	bh=PLFnGXprbTlNs+a8bFS6F681pDW/szJQsg0AF6bz72s=;
	h=To:Subject:From:Message-Id:Date; b=Ha8F+pQIhKYdRHpSI5yQcsc1/h6IwiclZjxSlsoQlpdymB4E/dCAE06s1uA/AED6lnnCbJrissAeq0wSclBF9qTNV5oKTJRsIKZW8E1CQD2rh2jOdHDznamLOuw5iy8fvwEiSOnyWddt34TAm7t8cftVDKSo3pqhm5dFOKX6o0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u9ksOBQb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9ksOBQb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFBA6C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 22:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740956333;
	bh=PLFnGXprbTlNs+a8bFS6F681pDW/szJQsg0AF6bz72s=;
	h=To:Subject:From:Date:From;
	b=u9ksOBQbtR2Xu5puCwA9A1n9u2bok1JPqSMKZBzkFcttU/SdjGDhfTEKchkUtQcIB
	 vEh5SvBiESjcRsOOp0zBDmMZUP3XgjyH7QJloGcP+07AZalBoKkuflzTYspMSd4Ggh
	 lYQrVM4UakI6r4i+r7hBVjIQvMyVoO95MzRZQSuzDkR9XWUJroz5bGdNc7WxDAgk2e
	 PZoYa6dvVGy6ApJzbYnQE/z9fy2kBA6umqU8zsIZO+UVi3T9lYe+IJCTUz9cnKkzWy
	 NyP8Qb0pf+mO0taYVu6SDi8dvNVhZ1wEpFI8S4UyQExQPkNsiikZriECbfMrREjNfV
	 c0jerxSXc7nAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977C1C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 22:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174095633358.13426.10887365094132722392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52455643f1d1e6560d95654c7e7e18aef891332ce59eb0d11c4403c337be7d98
Date: Sun, 02 Mar 2025 22:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740956333
