Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB161BD9D2
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735859754; cv=none; b=lAwTPOHFtbelIzwkMzSvPmav1dikfYU1T4TBe/RBJPPDvK5UAYjAF2N5Z2vlOrXQh1nCSf63ceK4LzWij+kqnBvDq4r8dNKMcypcbvJoHC/BtIvOFoZcpvyoMnDTdU6btwo6Z/E7hf11vhszslE0cWV4QC8FG94xrd5C3pZa2ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735859754; c=relaxed/simple;
	bh=ViCXtYmHItJqyD5I7ZPHD/ZKd2IGfqkMe24KbFj6noc=;
	h=To:Subject:From:Message-Id:Date; b=nSM1q4jNLawQqRKI9Flk8Sz6I78PJEUU+WPthjUxdmZyfnoREHOm8GcIPvL9GcyUau2ou8UyW1MnAsH7ZYpyFSzEwTnpinRDSEJvOr/y3awh7WZ2vQHwRy1Nb+cId8IkGUj7jC90I+amY2w2BWHOSBNXELrmHnBdu2HLmIS+9X0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rw9uMLqu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rw9uMLqu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E8EC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735859753;
	bh=ViCXtYmHItJqyD5I7ZPHD/ZKd2IGfqkMe24KbFj6noc=;
	h=To:Subject:From:Date:From;
	b=Rw9uMLquRswnEZrc38m5gGuUqhpn68ayESpcgyc5htLFxZ5bhk6NL2rXmY38pY6Vv
	 XcY0sjrv2+xHKPp4yjbHqwlXEyyqWh8TtEeDehpvo3HWaZqzaJufOI60JGbseOf/nW
	 Oi6LWF1tJyKipn9nODvqsRZyTX71/nINUINRjztwyyz0RHatCFBporakcRHj5ghXVA
	 SkrdvAfSuNF/Fyj7ky1QKIrvEAqCMdoIw1LAZYwVQHs6w+OqcE58dieJaWWRDCg5MZ
	 oJD7ABBV+l8X47VVjQR89PNaGucb1WuZnHLOEe+WrrmbdSi+L3d+WBIcb4gccl8Oa0
	 aiJFGyB6gY8QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FCBE77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173585975358.26675.7012066009941434001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 542504ea751ce36c0a2252fdd1f14b94ffcf7799adee12a68c96a43b77a59622
Date: Thu, 02 Jan 2025 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735859753
