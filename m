Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59FA71EA90
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747006794; cv=none; b=ASQXDKOfvGGUo8C2KzqisB6WFUhNWVe+2HMDNfkYXttcJhH11WWmzg1FHGFkN7m+/C7M6ReScjJ5X2Mc5D3+Hx2U7gIk6ObOkRrFs5Eape3c50PCko0FSv5aIETseXIQUKX2nPSJfpwAHRJtnMswDbMY68goMFJjYCBXAtK8f8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747006794; c=relaxed/simple;
	bh=CGxM5hjhw7H2ct9i0OV7yAqCv8RBzm9EupDwf+ycUNs=;
	h=To:Subject:From:Message-Id:Date; b=ZdLf/ljt9+dBtfFnYt8T0IJ62MPh1QsEoa2Jk98dMZsnD0o/xD6fw038DSxeZxgZpeV/rT+YEAzDeusPZAqx3Y1Ngevg1N6zhw4dYY6gFdw28je/4j0a8hzBsmjql2SnYydYMnI9raatm0oEbXINyyPsKm6perdGshyUpCpVX+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IdMsyVug; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IdMsyVug"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E53C4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747006793;
	bh=CGxM5hjhw7H2ct9i0OV7yAqCv8RBzm9EupDwf+ycUNs=;
	h=To:Subject:From:Date:From;
	b=IdMsyVugytdvnADW0K7j3ARoTuRMaLtdbmBLw/5lGmcuPlVYCHpXkvdj9Tutw3Ddu
	 mlzfUe27N7VYBYAcX4rnHldbCbHMbLI1u16tm2ncRAE8f7fzIbVXh5JoAHYHvrYPdZ
	 vRNNZnB3y7lNijJMcoBjg+hVT4swq/zxsZGVifY75OSS6GjStN8GOP3qRDa6GPB2it
	 KZXAyDCXC2peawd9Xrfi46yxrGjOpXR15CHHcfTw8Q8BpfeCCwMqWRKim04SwkBzBw
	 1pulpFp8c2K3ffs/yDTZiOMk1h5fhI3Tn0aQrdj6H9WLWF+sDwtIVkJ23zTZgNdktu
	 XdS+zYki5JmTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B37C3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174700679358.9896.5882226279317449847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 221e79d5f500934e3b891bf5669c55a064332b4dd1dc95be5a9bb665f61a94fb
Date: Sun, 11 May 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747006793
