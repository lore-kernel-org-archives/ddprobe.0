Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D41224D6
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732903554; cv=none; b=WIrDmMzGjw0CoifE2UmID056vhcmY0Z8fKU/tdESLFeGnafml1XSZozNeZ7kYe6kl4ri0d+YJ+wxqqm15FKT2k0pVdXR/PY9yKB4EmWWHTXKcy6v0mYFz5RwV6sh9majmIun+UuV75VZSP4RN/0u2aTI0rWeYIing1nAPZKXrLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732903554; c=relaxed/simple;
	bh=Otk7yqEFgD/Y1rtWsWVFRbyFpN9Y16fM5PvA+K+a738=;
	h=To:Subject:From:Message-Id:Date; b=ljTnujHosvAZd5FTMujICsnRPG3y6Z4tN8Ig2CJ7OIxCUIsSLCWwZkvEQNFIRdxisas7K8/TpuK74JWZgN2Ywi3zkYqG4u6DQhfcERJx+ic+llwEdii1j2e5czNhtcUu0/3DrQcT9KLtIQwbFCprlYnux1OKKPx2n/HIrpdmuD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S0sEMwMT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S0sEMwMT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B26B4C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732903553;
	bh=Otk7yqEFgD/Y1rtWsWVFRbyFpN9Y16fM5PvA+K+a738=;
	h=To:Subject:From:Date:From;
	b=S0sEMwMTj/09Fpnm3Cl+J93ipKyisz48+p8Og8MPilrfw+tm11EQv0wZwQimHIbIe
	 9Dzc3u5qcsv/i9OjvC8lFWBYV52A8ikUPHuwIi47QOBZ8bukSkFb+4VTvfqqW4xKIA
	 QRYvGtSYDkz5pcWWqiDtjUwNVhoevdPHAZjj+pKtd0BEDhE36WG5MHPrXJkAehpojZ
	 OZjrZMpDvIXBncY0wHEYWc+jQcxr12fBDW5DW4BeMNyMupCfMLVHycdAESTPWdY9g4
	 18qqq6V2S/yG3k4VN7m9mJsrPKh2/yubIrf1kN8FtAc2sCZSIS/882NNESKO6TbePv
	 yAXJkcWhEEQaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9886FD729F3
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173290355361.24955.11255256979497949773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b45ede16a42b3d014769f743ef07ed481d880390884d11ec6bb9b916f829a6e
Date: Fri, 29 Nov 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732903553
