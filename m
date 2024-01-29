Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2ECE8BF6
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706488697; cv=none; b=L75sK+lavPQNvh3Zw/PY90XEPf5bEVS+TUQ2n9hIufXJnvTIjAIHMCV0d1bYregvmPno5HqaMlIpbNwCUmtQ2SuQRlNOJXhWL95Aaatq9v6w882ukAQv63OijReG9uhIRNdCkEUqXbinh/R3TQJeGX/RSruq7i5ARktCbJhniNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706488697; c=relaxed/simple;
	bh=UtNeGpk+lGePLBVfbyEKGJOKv9rLmKjlaEPPqD8KUyI=;
	h=To:Subject:From:Message-Id:Date; b=OXEsHILhv2PcwMdPpxH9pa5H227xHE6q9nHXsGgiuKzQKvYzyhQ7pW313oQzquMNv4PwIpX26yemHRxFghIYSSSoJEeZaRZGCSm8m9utmRvJUY+644AjawINOvMOS+1qdOkXuH28ZqXslnsRkcPbopv58dme9/m9ygwVVeb06Wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqLJTC9O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqLJTC9O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F626C433C7
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706488696;
	bh=UtNeGpk+lGePLBVfbyEKGJOKv9rLmKjlaEPPqD8KUyI=;
	h=To:Subject:From:Date:From;
	b=gqLJTC9OuJBGILyV66W6dTGJ4K4XbmKlMBI0wZySnwUVYoK+6b0+L7GMakEIz4hIW
	 PVKoZ5d9p9W5bmT4uBvY/Q+cpOq2Yij4rHqJf7B8SYPSTbQca2ucSKafq/VSSvLcDU
	 58SgEvNDXOAoqiY7iC8Nq2iDkfV/l34cNx/FIJXej3Nb20Q6JRbSSO7XDgaxntVsyB
	 IunWDbVH1Fxjm/x9tH0XpKaIyo5rBL2vgB8+Jef/O2Wzdb+RXwE3DpS0GGBM1Bktmh
	 Z5Cuxpip2XrvroIgmr/HizYBVdXr8f+WhsQEN9v6u8rGYGmwvL86+Ync+hSFOjJ00s
	 dwVyIhAE1lhPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65506C47258
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170648869639.10650.12544722620527573421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7618995c514fa0753cd850ffee6e3ef1f9663c4f0b148a56c399928f3e76ad85
Date: Mon, 29 Jan 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706488696
