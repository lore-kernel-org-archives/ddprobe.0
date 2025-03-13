Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DFF71EE013
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 08:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741853934; cv=none; b=QEzDsUmPIzPitZKC/cPi0Tk4eLO75hcdMPJrWv8GU621TU2Gye9IhJKZYyqTqc3vbrgscLbulisTphKV/4He9K4FhaG19DFZr7Up+NYiuUE4YoOuotQWH6R844iKSeOlR9mpAfrXEHgFHVibwS4g2CUCDruCuJT6HO6rLJjwlFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741853934; c=relaxed/simple;
	bh=hXfGDtrJA51y07TX8iAQJ+7+flrLj1ymAGkQrfqNLuo=;
	h=To:Subject:From:Message-Id:Date; b=GxZFXbo3iYjHEHw/UJQ07WK64iEGjYwram8EYRrZk2IU2OACnFYmzJhp7YiagRzyr4h+QSNMzvfa9OpTBEP9bn0ZB6OVQBjk6rkabG2fITtkK1NIbMwCIKwXGQLLdKPJFSpuw4IWvVaYSZ771a2NbqzbxUtMAEhvrDFaWkR4OAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXCV30LU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXCV30LU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E7DC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 08:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741853933;
	bh=hXfGDtrJA51y07TX8iAQJ+7+flrLj1ymAGkQrfqNLuo=;
	h=To:Subject:From:Date:From;
	b=WXCV30LUOMwBX0/ovL8II5vUn89eAQCyb5jl58qZ9kt7G6t63Eo0npigPMEEbKANn
	 eZgh5G8p3oRXWYd5uCT7xNJ5Cya/mV907hS/yu6YMG0A4oOHjPdzu9GPHqYS+mEPWN
	 Ek045BuJ1FmqoEHn4iIr4J7Qc91s1V+KfMFhsS4U7NahQYVFhIe8AvHGI1k8Qks44r
	 zdJ15MV0p7wNB35194oUVd0ysGSf6Gz888Zkcm9FtgYGdTIbOp2cidnq/hHtuqFQ92
	 GXcRt4UlX5Xs/E8gtapf3MDa7s/j8aRYtR8nndfcnrq8h2EmFJhzkppqDd+aldfIfA
	 3l060kBkDf0IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F36C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 08:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174185393358.11380.3946658398641477419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d23f70e1626367254aebdc05730d1cff9f35622555875d8e5ea7c3c519394fe
Date: Thu, 13 Mar 2025 08:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741853933
