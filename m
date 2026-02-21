Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198E2322B88
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771695294; cv=none; b=XDo/UCd+y9225NWvky2f3/jstkqtLA9RNOLVUYCoNRTOV74SzhOnBoM5+k2G5+FZ7NPJWu2GFgPqPKIhN3TiyFNH4jvdS9UaA8pq0EX+Yzq5u9HRj+YR0Fpso9YQKF3hZyfEnPCy/oYEe4M2V6cPGisITnQzem6mlAhkcPE+ycE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771695294; c=relaxed/simple;
	bh=lFnehnDrwPz8oip+x3n1lEVS6d90C7hNh6kxYCgHtyA=;
	h=To:Subject:From:Message-Id:Date; b=sh8p/naySZTEkeWp3bn8V326mlVj3JXYGigidaSgQHrCW4ogidtjWMEMkbB6Sxw5smng0cjeJG9dfDWUAxrwjd08ddCwxafMq116bAEP7gJDn+A2LzHTeg2ssppTp5IMVX2ONF7LunXbNw22HLfPQxoFgCp2tS73kyodEYxiFmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5bntyZ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K5bntyZ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1704C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771695293;
	bh=lFnehnDrwPz8oip+x3n1lEVS6d90C7hNh6kxYCgHtyA=;
	h=To:Subject:From:Date:From;
	b=K5bntyZ8jWKvQMV6JrAzZqwfgLJyjRkGCsg1VA9VxH0K8xrJGfGq3ZPObk4XjzxLR
	 cd5L1CALNRWGYzU+0Y2MPrxII2hMVK/nSnVGR/U8jb/DxSbhL9zcMMN0eDT7BWNzrQ
	 ZpiL/H59V1AhJGRhRYE+x0jEDoT9gicowiOiA8oIKXxR5d203xh111tOvdcX5PTzCa
	 gino50YRc1xXpOUpgaHzBgf/ZJqqwQRTGbOMopgNKEI+ocEk0Xtoam8JLh/Kw1bSxU
	 nxXFAV5VTRaSyXA3qUj1B1etq3MS80QZY0ctIUDtqsVUd84l9PIY5Zz085UlkecAys
	 7TRVcSC0iFVkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CBFC61DE3
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177169529361.32648.13331760658265246961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b27a63ef9221f40e6f40636d5992172f0fcfbfacd47b2d33b3bf8cf34462023
Date: Sat, 21 Feb 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771695293
