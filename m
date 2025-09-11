Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DEB19A
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757564394; cv=none; b=pC4BYpSfcgIhWyCL3eUubGy3/70VndI0JnvhXFHexX7e9uvg/1R+5mYdzX07C+7nPw8ke0CL3E6MP2+pDB1vcwPcDSCaQDeXqgTiFZZj4QTG98ek7kFqXcX00ITTHTVLB2f3NxIhv5xXAiSaVvMX9Dwcgw7M63u5+et+1oysCy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757564394; c=relaxed/simple;
	bh=K3VJizDVauRPTm94CG/TW1DFscItwKxzmD5jkqzGMCI=;
	h=To:Subject:From:Message-Id:Date; b=dbBQN33tlQoXxakCWQI15jXxBJs/FdTmqjI5jx2j5Ea55nIW3UJP/PBfLa2AFvIs3wrc3ANxtosISvAzKeAdGNq5SbBJLREkSyRf8Tdky9GJBvSd3w3UMEgwNLf8s3yloJ2VL/iX396gZyopuwqPverbuMz19+e93CReFYUDI7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdP6ji2n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdP6ji2n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC30AC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757564393;
	bh=K3VJizDVauRPTm94CG/TW1DFscItwKxzmD5jkqzGMCI=;
	h=To:Subject:From:Date:From;
	b=kdP6ji2nv/wBR6reN5vUvEhaJu/bLqzZ/IHqIGWKv0WGjnFph9LZT10OMsUXIERl3
	 7N2tzdRxQLU5fu713JAUfx0g8IcuYDXjAfildoFhA9ChD/x17zG3EIVwfCt0/MBz9J
	 XWd2DURIUa7ZFYvKxYd5D4VPvS1OuPIpJTaHiwtUdtv+1rVwU3FRmAwG73nV/P3myt
	 ecXQSUSUoo82nooBdjnEb+P2rrWHd7uUyHqSy6IL3mMjGCZxx/ZdxmzBpd38JSjWCP
	 clukXUEs7jYQwca0grJjOv2M1PIoVPtIdexjCpV+QQCGg5lgNFlW8cGaJxOWmYch//
	 ptg1BaOe31T0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A80CCAC58D
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175756439358.13772.2094055910507687605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d63f00e57dd1ca5dcf7dc101fea36d694ede15a09b7cc3281329760c4a0b8446
Date: Thu, 11 Sep 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757564393
