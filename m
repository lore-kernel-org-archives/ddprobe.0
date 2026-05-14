Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E5B738C427
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 20:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778791834; cv=none; b=m9SWpqYNSe/McirfDtnyYbS87f+C8x1v43Ppafq5RjSCOIFjb0j/DiFYzCz/VHVxRUebM0ozrsH73RIl+PyH9LWs7vWEWt6uMfbLN64CXct0l7xJSqdlSdfWHBBz3KZes3gu/poRU3/DX+naDdvkwCKp0TbTe/eZxggPF8UKA2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778791834; c=relaxed/simple;
	bh=kb5VJEfsdxkf/giGWmCB1xPNOq8UCKs/kkuHfdIKZB4=;
	h=To:Subject:From:Message-Id:Date; b=eqBfJj+4uSCrlOiv1qYCcm5nK1ogl6N0x0VDIRJbdOQgvuM4lPZ98UyOT5gpVTeCIFDLiW3cXMoR5FqrkCb+I0j2FgCDYZA3KjnhyB8KMdhX0POoVYj7xNVrO7oznaZTS2mfC5ay9RaodzLBkkOn2YdNR0ZcAeEXgxgNO+w2R+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sxpOu9hj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sxpOu9hj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2BCAC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778791833;
	bh=kb5VJEfsdxkf/giGWmCB1xPNOq8UCKs/kkuHfdIKZB4=;
	h=To:Subject:From:Date:From;
	b=sxpOu9hjFSYoEB8PDZauBIiKLn3tzX4HpEUk02OXg7KLD1cJyXO9qe6fC7HUiJHMB
	 fXkAqi9uwL1qY22x5I7JJdpn3dcUO+0ogH+srCDsADxvMaSzCGtvbP/n4jYlLN2Fya
	 qKTqR1Kv3HwQavUWf5MNbhCJ4ugJqrpnASAUZnj/2Fo6Xoc3RBZ1NdtO9F/ef2rbza
	 TrPzIttAYtlRvRSndLabrk5VxOoYUQegGYUu8bWJ8kmvwh5SIV7dT6AyXb4L0yQZmf
	 a/4YrFM0n0BIuwnkTYoYy2q6vk/OV48WCPbYyuO69kjfaaVmF4ZASEp+IJNBtBo7xc
	 B3muAFtt8J8vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08E6CD37AC
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177879183368.807.11410733224683170525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b59ee32142916857ba285c2407691d33e43c20a9e1f9802b0ba3f4ecc4d18ba
Date: Thu, 14 May 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778791833
