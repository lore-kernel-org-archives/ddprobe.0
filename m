Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2690B25F99F
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 23:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764028374; cv=none; b=IR+2L9SWcZs+f3UoaRTPSnpL2YaYp0RU2G3KVPVoWmkJZNKQNNWibeeUL1HnJr93EWCABXVjeDwk+zxbd6u6Vt5o22oABc7Ru0R7HQlTxXbq8AirbcRcpCbDWYizPEjpc+DqWXGaj9rcBLwone255UWfcOEbcnSGm6lp+udonTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764028374; c=relaxed/simple;
	bh=IdBt3uQ9UXe6hZmBcQKQLoU+HOhU51oexuBAJA5WR/k=;
	h=To:Subject:From:Message-Id:Date; b=dLzFKhtBH4U5xQG+CzUm7ejMyDKbPQvO9T4JyqAwvfSpWlOC/VY8q1IZu/Nt2ugYCkicRTX+T0c4+7thu73D2oAQjbueEsp5abkVaJPJGuXVVP/LrPRSPNimpZMqyVe14qyGbRQ4UJxbDD9ot0CElXI91re/hziJeycpaSVywyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9+fZU4u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9+fZU4u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC9D7C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 23:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764028373;
	bh=IdBt3uQ9UXe6hZmBcQKQLoU+HOhU51oexuBAJA5WR/k=;
	h=To:Subject:From:Date:From;
	b=e9+fZU4ug3H6qUn1HgPwnjuVI+R2X/ctcfZqVBzzcyPnbrMmpSExS8EFDnd7EL1Bi
	 vwMhrZyJHocpPuFFWeBAEAyb+wmLDd2U5DjbKUkECHlRMsXwL+qUpKoEMQGC2u5nUd
	 hhWqHuFLZ3Ml9u+h0okmdSVyA7kWxQvxCbu57zPRRhu2TfRNNsG85bYA3UgcnzPn6+
	 iyVnkb2DztER7qewNO2HuQVomj5eAKAPjqRckO7XdqeTi4AF9wNOJW7Z9UI7Jid+Qz
	 1iOAoFzCUwggKrXUGL49MaILIFjHLvMu679LFgU60Hvp78bkAoCiYmHLaplVqWkalP
	 RbcwD70Vx7doQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA488CFD31F
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 23:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176402837365.622.11889347717658759974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4e302d02ffb89db8d797d18adb7f31876e238089d5762f77180fea1827a56bd
Date: Mon, 24 Nov 2025 23:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764028373
