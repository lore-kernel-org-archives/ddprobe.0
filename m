Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CEED381B00
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 01:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781314594; cv=none; b=uDeeGVQLMi5zVnDdjOew0Wed1X1Hp8M9qujGusvtcO7fq93CIPk4Q8tb4Tw2m15FvcHl25r7ems2EhSLmCHWRtnb5fTeSVkkGEkjVKv5LwX41qWFr5bd5kPv5SMXItC1sfq7o4D8M5NBZMhP/bGRK6pEgkPOdn+gEww2DZ3Vvbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781314594; c=relaxed/simple;
	bh=bNT+K5FOGYWoqK/OBsQyo3mEeUq7y1t8gNYtI7UnOzU=;
	h=To:Subject:From:Message-Id:Date; b=k6+1Up6CUb9q4MsYbDaTmVgURoNiOJB60TICZ2qhiL+vhVAOjT2HJ1co/hU2eGDTUtDSw7zHsaEiL2UJP6Pr0K+F5hMqx5XJxQ2T3WdbRCibdwnf5R2kmJugxsKYO/MzLm9VECKR29chN8aD7SCJPOk/aEAKzqWHpg7DlZLuTUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZmpNX9BT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZmpNX9BT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF801C2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 01:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781314593;
	bh=bNT+K5FOGYWoqK/OBsQyo3mEeUq7y1t8gNYtI7UnOzU=;
	h=To:Subject:From:Date:From;
	b=ZmpNX9BTcrxC0kRRZ7GAuYnO5/864fMRGUYGuwsBJOb14PwYP9LxwN0OX+dU0j4Uk
	 6B012LLgWo/HtV9Iw02aMvB50YxmS4Ojky16Jz0Fyxa5ehg7kNVdAMvAhwEOEL6Nzg
	 nWIsVI/iD1Bc6stI5uM46n4Y5dkTCGZgXXl7tQkHpDf+T216FHpJwhbOrPJzE5hdqz
	 p4Q33BTnnCS9YLZdU03UpOyrPbyOwQ/UZWMGTlIJEkqq5MYawnrzVuKDmESF1CXC6R
	 yKhP26yOKYzNko0JZ9I953gf4Nq5EIycC8RXSj6yFMG035o0lirBsy171JZEqB24dh
	 xuwwprd1ohblA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F9CCD98D2
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 01:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178131459368.7740.15201617595662845118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab8d4761e8408c64b4d29ff215104a7815ebed99bdeab72a8fe3f627066ffe85
Date: Sat, 13 Jun 2026 01:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781314593
