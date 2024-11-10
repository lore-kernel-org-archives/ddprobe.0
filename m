Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50BFD17C91
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731278754; cv=none; b=D2dAcNnGEU7z0BgfaSwq/brIRdjLblOc/coOC1JgfaH3WXMWHpbTqKhtRW2wAUNnaJjLF+0jauXCHKefSN6uJQ/pfR7BGjY7tZCtmeyDDVeg2W+bc3I8V9QpzFoGHpmaK9LKAltYf+cIy9nCzU/WPIvHu8uTApsH2J9VDGbq6/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731278754; c=relaxed/simple;
	bh=GyIWjRC61UPYY49yP52vMUHVgBW7lPsu669BNtnVlco=;
	h=To:Subject:From:Message-Id:Date; b=c0n7WcHKRx9q+Bh78lA4XeEgVd2bnwauvRrPbVgFiz2jnmOxvCUvM1xHnlueeWkYQX3cKGaBbj92aTvTCTB+hy014e0H0tXU+cLU7lv0tNraU8LT4OqDC48rEqZe0ieT2ir6vJjATxMw9flW1YsTP2lwn0S4/eDityr8JDNGNv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZTHJlAi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZTHJlAi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8215C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731278753;
	bh=GyIWjRC61UPYY49yP52vMUHVgBW7lPsu669BNtnVlco=;
	h=To:Subject:From:Date:From;
	b=LZTHJlAiwjjpTlOFTvijqBQccPtBoCZX5XK+bttnQZwo4yPkOqoPGbxHkuXJPOdxh
	 mQGnJAcEebKdX56KlrNyWH50ncFJ52CV7fn+vW+4wXOjGnoUf3+pLwDAJbaviqvDGc
	 4NtUDgaI97RvlG4qOqwX5PkLGYtABBQL5vPkPYuai4CnDuHfsRD1xFyb0BDm11LfQd
	 X5mSgKlkdRjuWwqSipgwDnc7p1moiIHdHg1ETvfsf09MtldtsUT8gxwZEBdURrfczF
	 PJQD/qgiEgTOM1uMIPCgcdF9TbrBxD5HPv8MQ98ZlKJDodBVa6ZDWET5AP6Kom1fjU
	 Y3iBoSZGI/P6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1F48D12D59
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173127875362.8756.10678343021500806637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dac570e867992ff3a11bad443c6d49bdd5611cfa4e5ed5b2356e4c6905ef3b4
Date: Sun, 10 Nov 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731278753
