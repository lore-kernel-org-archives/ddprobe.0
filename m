Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D25414C9F
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727312153; cv=none; b=djK/+hwDCQbn+mQeEumeJ4Xdj/o1KsF8VwDtlqwb1oeFHwQCDFNsSGoPWIQk4bcb8wiajZMb8AWA5XXbViJgDyA37x55PvZ0zIeFM4+LZgncjOywdRWqG6GpGJxLXi5haOoEYm+haPLtwlishake1yKNrO+MX9zPHYSEpy0oW7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727312153; c=relaxed/simple;
	bh=m3VpWmbdvGr4W3zisubFzcXxHUdPRREhAQaIzwmUltM=;
	h=To:Subject:From:Message-Id:Date; b=GT3olXNAtEfenr9eVnqCfri1hXkz8aML2Eu4m2si6Jh836j2CYn5Rqazys6vSjIiFElwG47YGtH9XngQGAjZ85vg+pUqZzQg5l80IlgBCNNhbSkX3UkIURNQ9KV0+QPa6QNYSI3btkAhgMpnzU5+7f4Rd2/EBVyWN+oqgAcNueo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hqdTMyLV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hqdTMyLV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6802C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727312153;
	bh=m3VpWmbdvGr4W3zisubFzcXxHUdPRREhAQaIzwmUltM=;
	h=To:Subject:From:Date:From;
	b=hqdTMyLVHtMaHoQrF4lkHBopE3h0rduw1PmoaRXBZfueITUViDQrTiSvJohPrJqGk
	 r9fgl0wMUk3HAlUdq3J6nMmN054N849XtvToNqqvNnrfRWloj1grdiWMdpF1Q0ijgf
	 V/iIUNIvRetdgpXxtpAkglNsbNM3dOyyp3O4dWse28oxA+cFuLLrBpGDxxCFnIpPqb
	 ANq5RbukBZdYT9QS5pVJ36V+178KkqjmHmcqh76jgmG461Lssy9AMwbIp4VNy1NPGf
	 NOBpaqQAo6qUCVUICopUrEVDZ3nYSvaARxrQkLx1UVJWrcRuIxIegw9MfZ2m+YxehW
	 zZ5Y3elvXP/UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943B3CCFA10
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172731215359.18594.15390511685695097940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40d005fcf05516011981a52592c6685f990fd5b0c77023e5d34b2aff6452c750
Date: Thu, 26 Sep 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727312153
