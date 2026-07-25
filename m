Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3344F3033C6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784968234; cv=none; b=ei+tfAIdBdW8U+oj+dGNgHOV+Mh4g6ELxCQcH92HlFPEsdEsTwBUk/kWJT58SN2f1p87i5w6fCfvXYgZo6+OvJu1si30DaxX9G0sFr0bWXoM3VDSxRXieAw0387ByrzpEDSRx7vfCiEOx9bKrMmA5ET3RhzO49HnfDspZIpwQA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784968234; c=relaxed/simple;
	bh=fcAxHuqiCQAO4unZJN1eLRDJo5FpkQ+t6wSK5W9dJoc=;
	h=To:Subject:From:Message-Id:Date; b=BThy99LvL9R2XNVzp4tps0x/UlTrWoLWz+KLzC5VFNBmeIMPDwjhqR3QQZLpXH+osQ0msQRoFcECpNSAS25ImQ+JR84NXQZ2qdFQ5AA6sRC+dDLecbG9rqwJqqLWKp24fuXYyoEyOnhka8mbYZbsHu1+2iZUKqHD+Tp3F9IcLrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tOTLaq88; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tOTLaq88"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E29C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784968233;
	bh=fcAxHuqiCQAO4unZJN1eLRDJo5FpkQ+t6wSK5W9dJoc=;
	h=To:Subject:From:Date:From;
	b=tOTLaq88VGDLl0lDBveJzrTxjvG2+Zs/ZRlPtrXLarRXT9zBx0d4IjPELB6kDiyGF
	 8bKHxAXGfhydu8v/ZgZCrt4gQylAEOw5Na7wyjNfLr2FdZpDji0HoeH2vrx1izmCsa
	 Or7fpV4pvK5nE0gzGRkiWG2GtSgrcP9wKqYQiHdc27CqU+0ljPyfk87n0YscrUr5Ib
	 KXwp1qK0pszDPYIB6l8is1zawcLDUxYCIosrFtxzbtzo8tQKG9Ydfqysqia8oqrvYW
	 0ydlK/JNa0nOx0IZUD1roA2Zl8qv9xy+B+ZlXodd9jyom6WBKQ7M7NXqT5wOsgvn6Z
	 MpgAM4ieD43vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1DCC531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178496823368.7903.14107547880794968228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b457e04a08b19dd5c700316a48fd6061fb3623c5905b995e98bd6caff13d3c18
Date: Sat, 25 Jul 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784968233
