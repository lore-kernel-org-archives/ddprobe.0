Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED2DD1361
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708826297; cv=none; b=EW95VQkYW/Z4QZ0A6tx/BkraB1xUhYb5Sy7jHx1PefnZrQrQZu4b23Jtut+9ujPifBQTkm2S3aL6RsMvh52BbIkZqB+WLDbqKe3JEimevICsN3f+P3NKbv4KkeAZM7ZkVrg42TqPZbwir0kMOVTJLxwe13MmkRm8H5TVKHLTvYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708826297; c=relaxed/simple;
	bh=SRqrGop+b4oEbCvgPppbMcJnBVkT1UUsnMXAIjFh6ZM=;
	h=To:Subject:From:Message-Id:Date; b=gHrCU6x/njKTsA+Hk1t9+g6rn048QOBgbqdDJ9blwVzpfA93MaEJqL7vPhnDO3gz5cVVYm5pOi5EnjTr+1GGCw0xzty4au7b2cogp24ctrPEyLL0NwtRe9vlMAcGLqvv3qxysR4LUpETJwtlcKwkz2qA+M4JNk+ZY1MLhpPzTu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rpH4zbMF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rpH4zbMF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82C8DC433F1
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708826296;
	bh=SRqrGop+b4oEbCvgPppbMcJnBVkT1UUsnMXAIjFh6ZM=;
	h=To:Subject:From:Date:From;
	b=rpH4zbMFd6LX+dNiXhm4mwJAihtGwL3dRPGf4AZUB6iy/OWVlL7FJ1j/ymuDTJuA8
	 rcN/V82xtjXaQ7GjL4HxyqvtboxOKHJ36VN4is/PB3pzApmch9uhGL1fOEE/53/zNK
	 Mgl3WfXJdUqaW4cepBoOGJMpVeyXuW5Evjxf66NVPSZC2VF7uZHUxR3n08f+6kAWOR
	 mMjFwkaccXX/aU4177zbKUgWq2l1pp1zuVf3Bs30MHBfPhQn9t6gaZGPpNV6gyfym3
	 1T7JD2Ef9IrEOvxAU4uXmVoUbgsllu+Fx2t5FvREeECcAtBHjqkEctqJdJS1yC1Tcd
	 7Nc5a9sfy85zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 641B2C48BF6
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170882629639.21394.4432703753245509217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e753b6a616175c43583702bccb2fc53d90eea4b4bd6d9c0a53de88b89dfaa54e
Date: Sun, 25 Feb 2024 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708826296
