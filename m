Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376F27261A
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766831634; cv=none; b=Wsvts9GrcfRQOfB4k9WuQsWpP6P26pQ49eI9ofThZ0CFWD24sBg3NbyFh8ipDY5Y3V2uVz4Hg4zXUUsxUQ3HRvRgoyTyyTrvz5kKrZkveNoI1QHqUzJEKj8DghCEyG53Ar3UycQ4j9iVPWs4bG24VODshbrbDXTSYSHypVNjHv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766831634; c=relaxed/simple;
	bh=WEhWYYzIRoaU7HU74owWu/UNoZSE/NE7QIo07wUQnv8=;
	h=To:Subject:From:Message-Id:Date; b=N8Wa/hLk6i4cYKtjNZNYnnTmhDql/aOADJrajd41VuZACtEKu4MmuV5aFM2cU+H5/Quh7RIxKjd7ty8LT2yfAVSofym46Z8gk7off+Z7zoC0cNA8lg5gwF6mQBsUglAqUECnDblQs6eVasQd//vAX8Y9gBRSaDVubsOWuSlYenU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iyvy1uTm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iyvy1uTm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE457C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766831633;
	bh=WEhWYYzIRoaU7HU74owWu/UNoZSE/NE7QIo07wUQnv8=;
	h=To:Subject:From:Date:From;
	b=iyvy1uTm7eVTE7NvfvC1vV9KAVjTG9rPg94ljNeFBuLSPdl5EEDAvp5roE5Q8fO6j
	 KrDxtstjBeGMR6iTUrPQn2GzGNk05aT7dI2pik8CvckSfnZx0N43YHvGUa6uZ9suB3
	 bIdZvRZz4KldKsRt3apHUxp/kSbvCQtBIO1ykLs+2CaWwiAepC8w5DS+vWBzmWaiVM
	 VDneiuIyYiRPpAG0rqYRwowbxhkXGisfj7jrIOLYGcoagIYcp6CCsoJ6LgnJzWQmZh
	 88QZiFYopb2+tG6hWrC5HPjpji0YimB3L5NLdaEV8Xk4AzkIyJ2jO+9ulgC15r9tXm
	 n1OPnWkv2VMcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95683E8FDD6
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176683163358.29533.13077778682470595481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e0f2c8ea46e51e110e80a0f4f091c8fdcade846630a757278d7086ce4650efa
Date: Sat, 27 Dec 2025 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766831633
