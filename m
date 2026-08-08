Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51AC23914FF
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786159234; cv=none; b=AA+mcoNjwe3wXZlJlPQBLzWyJ6S+vlek+O/mtcCD7jSHil56UlzWoVUjwWsaXYgb/RnWuO6rbXCO5OJ9CEctRdvf8Doixf+PdiiF/i6K4TP+4Hl9u3JAIocMdnOJf7RhhvLoQ03RlYjU7p3cPDi7AUqQ2KOLMaB+hEaTAxX1t4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786159234; c=relaxed/simple;
	bh=5/QvcibdT7LztCT+fqXRyTV94lWt1iSUG7XMcwHYC6w=;
	h=To:Subject:From:Message-Id:Date; b=qEEqTG6ATwTl5dBaWZoNtkE4wjl4kNAVBoTYX4qA8RresZoLEo0fFizULthmKdRP6q/DW9YuavbQrf/b6C5gdjsn0RmJGMZyCiaHb1qf31AYwIzrwqdsxaUAKKEWYy5XHYZqNmifhkVXn6p+/LpolUhahsNUVt3yA+3kpd+Uy3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMQPHqrQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMQPHqrQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE166C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786159233;
	bh=5/QvcibdT7LztCT+fqXRyTV94lWt1iSUG7XMcwHYC6w=;
	h=To:Subject:From:Date:From;
	b=OMQPHqrQ9mmCpe+XhzYgRfArZGM4FWOgTgThz1t72U3pQt+aMhuxJJPeifCkidTtK
	 hRNls2GH2hUm+2FBFDt8rha49uX3e4WfeJJ6SGXmJRY5vVJU46KnxiSIUmGU+6oKkd
	 NzeSWBJH7QVnS3rmOKCcfVZq9qRNNJFG91o3A3EiNCdUcD8mYCgjO4HnxQuMVRRV0l
	 C6knSdDCk9/ifklm/TPicK17tAcY2rEtfuD8Y/cBmHULql2bgfc7/w1Wp/yl8KxdUZ
	 pfhARk5bdA1oF4F4T23qFa6Ct1H2XovXguZi0SF2FWmsHDwun4GTIflf0PCVCVwG2X
	 eRwTHs+L302Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D1BC5AC80
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178615923368.9975.17673374646537750025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2b61b4a573c08046fd8c0f6fc43dc8207e4dfc95cd53593fe0c709d9b51c3b3
Date: Sat, 08 Aug 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786159233
