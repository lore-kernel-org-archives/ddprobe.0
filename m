Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5DC28E0F
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 02:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764123774; cv=none; b=ZxZhW1OaXhoEbCLBHlZgKCbPZ8/QYg1TzML4w8H6qZ0LZEZ9wotF2tJSNiJoWdFqbh0FPJO8m6Ez5zrkUhBGdxzirIl0BlM9+msQJRLqRaNB4+LoC81zfS5pXAFGl26XAucofqKGL2B3dk17sCTIp519ZQKnD88r0d4F5v29zy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764123774; c=relaxed/simple;
	bh=i0y2EMtizDMQJodHyGODw5xuSe6QSI672mK41QeeW1M=;
	h=To:Subject:From:Message-Id:Date; b=boE3byml6oNsrsRiUoo1SIGhiWxMAYHklxeZLecmtxCwoNtLe4rMU6ItZPqPUm4jB1Me7YApcGug/c4mLqK5rPZEVIFGuINDRfyuEmPigrhDG/L36ER13xnuaw4lD989my9L46OyVfGpLTsXPIGgvQcqPu2irAEfQQTe0pkhiUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IhACHgGV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IhACHgGV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D9EC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 02:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764123773;
	bh=i0y2EMtizDMQJodHyGODw5xuSe6QSI672mK41QeeW1M=;
	h=To:Subject:From:Date:From;
	b=IhACHgGV7f+Qz2MgEcUAr0AvB6tnwB3FlbxucpzLYLeg8Dk7DgHHR1qSo1/1ht8Xq
	 4QiA0rlhhKAro48HPi5J6s1PfXcfbUehsMFyWnUHyJ6sfKBwpVtrkF8dYRQ8nJ8Na2
	 +pW0b6MDWvLC7v/L3emyO/NeGmBbb9VPsAAFdsfhh4hCY8md/6lA5ItgUvvAphS5jd
	 JGt1wwZo8qht3bXtDJlFnCu2N+8UsbuGd6mRi/jSgfDQdJurxysoPCYcgtYpmTKgRL
	 mRx6vOEfsEmAq9vafTi8H676662mRmHDRPXyi4jBswWTU87EqUn5jxRzjx5TsC1LOH
	 ziGSm23lYiEcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F33D10372
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 02:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176412377360.14733.3532799093182063101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efdf7ef79d3ded2e67e013475e2bd4b79019eae9b22ad86f299ebc7e32a550b3
Date: Wed, 26 Nov 2025 02:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764123773
