Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF9A1E3DDE
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772765694; cv=none; b=KZbBu5YrjxV5uM6mMlBWBvKX7fooUcF2ipVlkLlLW0cwhvwjK53XRZ4eCIcRzJuZJ3bAyun5RYCdTRoJ1jFgl1/htAUr32Wg/WbBrqh3mHEh4tW5IYY+k0r56fRDQFiTMk9PXlq+z3/7nVOVBjPsGl8Cc6Ol7XMHD/DUnIeH2Wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772765694; c=relaxed/simple;
	bh=1REtMgIPzMmU9zXZLOww0COu5MRyH44IXrkZxVYEggA=;
	h=To:Subject:From:Message-Id:Date; b=OEfKHlChN+n/4u3jOQSnhQhsaVmoNzkNaCAtf1md5FI5WCZhsFv8hDUZSywv8u63QbJnS2iWaKyX/LjLESOn5/fncVQwRcBdq0wh7fyHyppu/Qq5axxXwN66szeyUvH5SspZXvaopdHFnXm2XSjM9N/rtcnHgIl6a66+4eoV/4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=owPMBHyo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="owPMBHyo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EEDC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772765693;
	bh=1REtMgIPzMmU9zXZLOww0COu5MRyH44IXrkZxVYEggA=;
	h=To:Subject:From:Date:From;
	b=owPMBHyow5CDa9tu1b0vHo9c4UXzPiyBJIN7erwGxSs0NR6YzAtwNig6VYvIU/VJ2
	 Z8MizzmPzKeOleF0mKZdM9NcyT0Ppea2xn5Sb4p3QTnB0RpBUr8+c9XhOHDd1mjKSu
	 7T+bHYWUIyKzCnB+5vo1caBOZGCUNe5vXCIyZdK5TJ2j4H5S6w5oiyyeYO4F0Z4omG
	 4jWBdLZukyYQ8XesOVcVLKyy727t40fPESPUAbstZmW4cov3S6T4YJCSztNj/6CC0x
	 AKIexzfhDSQFanr/cnsJiwuA2zt/34GXFSjNm1oY9nIJy6V4M2+Jf85mLayleyRVat
	 y5ryFtKmxCLSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEAEF513EE
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177276569358.3738.14934293146484159241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31081460d4c4be93647d57fb9c865352f502bd54b4f7261620b7c8d54c8e7af7
Date: Fri, 06 Mar 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772765693
