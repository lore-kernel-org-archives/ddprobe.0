Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A422EC56A
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755965394; cv=none; b=L9v3mOj7u4GCAkuTXxb/AoJkYs0EnKBXqVhGpqc7Eq1CE9n31CIB58LIH/JGCD8CaPDTw8TASwwCJ1oPxBrGS9fSsKLuwWMsIIC+41i9hzxPEjyi+p+3ciCRY1cuphy1J5JgAcRlVpewvH9yCu9+5hxeVLhLOhePwGNbcFSJLkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755965394; c=relaxed/simple;
	bh=cvjKHuR/vlFKAOIADxneIhwNikhfYHm84IfqYl1Wp2E=;
	h=To:Subject:From:Message-Id:Date; b=nm93YMYrcYSxpGfNW08EpTrtR/bsvDiHUKjkhstWzDiELSi5yRispMFK6DplRPtZULRw2ZTgTmJ9P2licW3DXGY8TcuHLcXIviYWAoXtEXmhcEUIRYfFrNvdxUm9bbl/I41u9cbZ6AYkmdG7TUUG7sAQITevux7CyUqDv6j+laE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eywOZea4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eywOZea4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E864C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755965393;
	bh=cvjKHuR/vlFKAOIADxneIhwNikhfYHm84IfqYl1Wp2E=;
	h=To:Subject:From:Date:From;
	b=eywOZea4xclCDBKM1a+Wcxa2kVL2ieB/KNOHwW437mAbnp5L2uVGW69FbG7olXYQh
	 nowNeREQUZ87JlWje+AHvI858wv5qV9niJFl98WLlhaV6pXZoq4sh94V1sMYelWuQz
	 39m8UVIOlHSkriAGXsYYgd8BLJX16IHNIuxZEhF9Q/aXz7Oj5gL0qCs/94xu8hJFNx
	 85oaA8/fyT57uKnPq2/AfjezMzFTZb9NV4Li9+ELeGDYWGT2FYruJTHAyevnwv542T
	 1eb88RoZ6wBYQe6d9S1aJkqhZzELV+xhwn1Yepk9s282Pppx0yCqn0SiJLcy9T1Cm2
	 8q3/AH4Yy64Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC48CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175596539357.14712.17809736535369812889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f0ac1d35d616f0dd48df4d5970ac295ba113c4c9e05f953e4874e5fdd1072fe
Date: Sat, 23 Aug 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755965393
