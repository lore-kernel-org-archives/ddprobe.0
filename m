Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197B823BE
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752298794; cv=none; b=k3we7rRaRm6DPyL0vgaXeGVnDkdf+3kQtEbmt8L+QIpJ8PLeTqDP7NrRcDCVv3SJ4rxST+jaGlkxvKYkofG5oNsw+ZC5ZnYEqEX3um2eDLf6IageTeKcI814Z4G+e2xFe9pLB+4JuKQ8AYKgdMpQVN1KICpGbIH5o41YJExYeJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752298794; c=relaxed/simple;
	bh=0j4byFVBjXX4Bd9KDLnfphCZQx8ACgxPKnU/G1cSZik=;
	h=To:Subject:From:Message-Id:Date; b=dgdGpEt1dUsR6YJiq5c+0GY2lUBY1mwrNCR2WnXTBxfULIsaA+y4CYnjgMF8N+04GGbtKKtJRNJ5I3pJt8bJSOpKESAWEg/LcgMqMqpUvLflwW79ZQx5OXby3ZpGjTEYHGyjKvbP194Iv1tH4szkYPHgE6lumHihe/K1QnaCsGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SR/8Fn8k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SR/8Fn8k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F784C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752298793;
	bh=0j4byFVBjXX4Bd9KDLnfphCZQx8ACgxPKnU/G1cSZik=;
	h=To:Subject:From:Date:From;
	b=SR/8Fn8kggc1gnJUoPL2ybvwAekPEM+uU3pWEgTpqpHO2elMDNwpCtaIeixRO1cP0
	 74qRw2DfM6ymddV/h1bpRaK/X28ymhthhk5BkgHwdDJR3z+1nChAeK/+fEnJa9Zff+
	 hDk0Rrl9yBCqZ7uA6aB1YRTFAxaoTeYcwWEA9LX4REKK+0gtSscfABwi/VuSgrsmUF
	 gBULpjMtJzoHVI3ViA0e7I7qdbsTlFruwCYUekj8r0JpAkPDigeVy9/r/wJ0VJzp6a
	 978yxzhmRl829wdG63KsjJrzDJQCiMzfT38f4RCgTlB3SCmCGiZzJpRDnDDK7FGLZ/
	 pTHpJSWLNjvsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DD3DC83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175229879357.1033.2928370967736691491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d2a2f6d8c1a24b232f9867d33d6a967ee90ae50fd62182330aa1cd4fbaaf8c8
Date: Sat, 12 Jul 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752298793
