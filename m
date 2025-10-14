Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8DA3093CA
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760429394; cv=none; b=NXnkvQVXIKJiSV1E0kWscX4QIh8hO5ROvVSmFOML1T0tnQnNWicSEEn+a1+AGcVod/IE8TFMsfRrBjGgzbQp1q3376nj5SocwzCbI5ShSM3018tzNalHMIfODu/WxJKMAwQZPVFuKJPJmvsr3PNXR89MaYmfLWL5B/uOGycLwII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760429394; c=relaxed/simple;
	bh=5qx6Sp7qDX55snF5y9N7IN9QXrWsCyJqrURG6kfMn8c=;
	h=To:Subject:From:Message-Id:Date; b=FlKeCChvTDRlF1fvBrMqBIB392n9OtpcpYowGns/LUUc8VTDJ7A0i4Nq+VykNC0LFnvNmGy+LVVxtQSof2mT7hzrvHoSmMshqsvraKNXyrTIGoX1Jby1DbDDwg/NQRYwBlef82P25syUKrX9Vg2cCPZI4tu0s4wz3PnR1Up8WLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLBC2laK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLBC2laK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65F6C4CEFE
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760429393;
	bh=5qx6Sp7qDX55snF5y9N7IN9QXrWsCyJqrURG6kfMn8c=;
	h=To:Subject:From:Date:From;
	b=CLBC2laKPXE75NfF/TCvlmUBSwjLzN/DJGMytEXFBMyHjPtMdg9zm6AstHj0pLg0E
	 bS233hN9d2er0FpzqwrXJiyuW3nBYFJdS9fw8kuvorc7piqGsAn3pGsXjRrd+xER7P
	 cqPrCjViDHlEVZOlLpFBYTs4c+GcvviHsRUpioXKjSKehazHSJ18hS+pPx24BW7ObB
	 ay0+lEQAuPF0gKT7FA/y3qc5rq182FGZY9IZfTdHQoWQYbAmcyp7d6TxqwUbfmAcaE
	 c6wlmrwtS3fE514wf1FD+rHKZtfkYobrSB4EkUSFMz6AhmiUzE1mlT1iXA+otNVPSG
	 EOJeNaYExsjmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E4ECCD187
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176042939359.24271.7219154536390455254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b885c10fdb63ea0c075396fbda394f7e80d901657ef90e0ec814e660b9c0604d
Date: Tue, 14 Oct 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760429393
