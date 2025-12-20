Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33427134CF
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766230434; cv=none; b=unWrkoWisZCjex0KDhRpkTrGyELo9MxvbsND7VobEAUdTMtLeHNuWu9ZWSCTTu0cR1Uxl1fAsLqe3cyk8no4dmJOcnK9Kd6/Wv/aXeQeG9hJ2YxF/+jLPnYK3iaFrr+3iwU8ml30HNFVe7X4bTLxNJ49u+J5EG9xtFKGIz7z2F8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766230434; c=relaxed/simple;
	bh=r6O7Nlm7yV4uUmpcawKVqBTtnmjHDdfwACgwjcfEcuc=;
	h=To:Subject:From:Message-Id:Date; b=dWJoAWvX4FMpO1Tn12azkzy4Rb6MJM06pzeD6CwvLgxMfbGKDUk7YdNtPU7DH41oDrjX+gEuX49TxOYzWSJsixc8LnbNjpY1RUxGPvjmCBl10+ftK1CCxf82YLbfb5gKeFAUK9g/416haOi7D65KDe1Uu33kekLdzYht/qt3+CE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dber+Ovz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dber+Ovz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A697AC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766230433;
	bh=r6O7Nlm7yV4uUmpcawKVqBTtnmjHDdfwACgwjcfEcuc=;
	h=To:Subject:From:Date:From;
	b=Dber+OvzkG4YGdDC9/NPrdp7aoQUw0Gdo1tkpsjwNO6AyKBz54xAVAEJ1tiuxIQSv
	 XIugOFhDPMRkOAdCYcVnV1h7wvspWBs1+SOu9ug6zsTq/FxnPXiKO97HdcR+VTF1Lh
	 uxhGzY2xuTdrDkNQPVAzLh4DwKYHL7NfGjWIVLXNVTDKltfGIFA6skTzDG0TlVsWno
	 SqOqxYoQNtzYoyuwSotCBlxMnaP28PjSvH5zaMjnCsgGt4MF/vTI9nagBGawrXFvSX
	 WAaSe4IkIBMCU4AhXMZDauwQo/dgoheOhn/nZZoxaM5ubZz4MNXn6sfrLraXXOgGs7
	 X7JS8Qnvj1meA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AD8E668AE
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176623043358.19087.6636264069086200614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60bd99d029d44f530b0b510e4b7a3b498849e5934b79c61827c88bc20803d992
Date: Sat, 20 Dec 2025 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766230433
