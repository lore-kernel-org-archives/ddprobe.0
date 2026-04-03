Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 018E42737E0
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 02:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775181934; cv=none; b=Z/0VZoaAIdTS6Vrk6MrVak36mmNmpSazDCNWfO41rNfq2sxOS0HmFqGuY7wAHCUTh4ARdKOygM2A48cTM7utqvVu6/YqJ6Ash7Es3LjUX7JsSWrYbDFnzOShin8VpoNlxfButb9gCxT3b+wc/MKauf6RS8jjopowhjAsuAH4rnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775181934; c=relaxed/simple;
	bh=Zzj2JUT3jXDDDTMzB9mMMDxDZdwX3lIb9sjVK6Z+c5o=;
	h=To:Subject:From:Message-Id:Date; b=D/O1ipbXyfQGjbeiTslY5paWdDjGGr665YPfy/ZiFrgevzqNFCk4na5Kuh2Gd1oe3RwkuzmHlnGNess8tamvVYqBrSD2pHM21rd6v843W3IeaIt3MWcDsJoQUjfwdV2PaVUqw0K5dq+pgZ/xOMGjUNnjEUOMgGDIUOnJQ1bSc6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjCPYfxa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjCPYfxa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C81D4C116C6
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 02:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775181933;
	bh=Zzj2JUT3jXDDDTMzB9mMMDxDZdwX3lIb9sjVK6Z+c5o=;
	h=To:Subject:From:Date:From;
	b=gjCPYfxa4I2cLzL/1ZT1umkIxbolQzwYZpd5QRh2lXkiRoBRklPzy+bhTWBXQKmEP
	 IRJkJ0IRhYksoplXIXnTbEAUndcu7am0yS/3dyq02+G7E//NknfJqaXAjwwWKkYB9J
	 fxGZX1CeJDa1SCw5w6SlJqtX9jNiiwGbY3g7zb3s7cNBaa+71nYlq6bnWJxKfQ5NUS
	 yh8CjhlSFyqXK/om4Qa5a5NGIEcGBIgDo82bCWyoHxcgeqN4cbhD4469FTw/uZQk5O
	 vkoRwakrfBbuBzH19+NPOQY+kWOknW8p7Ud5ylk/YeogRuzAPjy1Hl0y1sh6qtcinh
	 /3tiSXQWG0O0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B36EECC6B1D
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 02:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177518193371.22728.8204252874565148750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa301152d2be985af9b66e47ead5b589ce2d7a13d352f5747b582564cb1ac01f
Date: Fri, 03 Apr 2026 02:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775181933
