Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07E2619B5A3
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774393494; cv=none; b=lwM/Rs5oYS9dkP6MkLh0Rn5NmfYEp5M06fLu4kl4U124tPw2fb56KfIc6gUX3EYh08fLNRZkCY13V6FBGT21RH7EwEKVH3ojZzQ+3X4kJG3Fy1OFoRxq8jyEMEkkuOBmA6Sx7F1iAq0ZPioTkp6SZwxivOZ+k7cUJchkRX7ueE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774393494; c=relaxed/simple;
	bh=1kPDNt58xu8cPF5jswsO4UFMqp4JnkKaFnOFH+zt+y0=;
	h=To:Subject:From:Message-Id:Date; b=QWKWd0vwFIbnB1QiBlBfXYojueurCNGcdTDzBcH29hCY4h1H2hqbXf5Cti2yMuZjKtV1GkdcohtyIeFfsSd/tIaRzv/IqNDZKdn79mMyWOm5bWgOuj8m5veYoDq5T4RjOqMKdcqf7aR2J3O4buUmN8msquJg69vJI44PuvTplK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rv+Ud1YM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rv+Ud1YM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A842BC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774393493;
	bh=1kPDNt58xu8cPF5jswsO4UFMqp4JnkKaFnOFH+zt+y0=;
	h=To:Subject:From:Date:From;
	b=Rv+Ud1YMmegX5IdlpySgcYcic50k+AhlLt+NtD3D7UfNH7+eZVpyuopaUJn5/x3ke
	 0HS4Ejhh2+36Pyl7bLnFK1vqPisyAi88wXvZiTPeslFQXj7ZSV+T/teL0QVTHsIEdA
	 LNkLjKlJtK0cS/Xyl3rVpaTg+zA9I2HfR/8bPX/C+iRAr4MGO4Qz4sY5MgUxkRZfTs
	 KpLkCRzPV8oI1b663ze23BYxr7kthBlxvvaqCFL89kdKQu23IopMbeuFODt81rhGdN
	 5F4Zr4ZDLDz9vR54dv7FBBZYi+QSncn5Zg0JJPJBV8HdzPQ15ZilkMzJ1G0ZONnLu6
	 HQuU6ywZjEXTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955A3D58CC9
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177439349358.7019.13982892516308952680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27fde1d1c668e7beb0b2a0e2d924583806d38ba589e049f50e2ec8b934745271
Date: Tue, 24 Mar 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774393493
