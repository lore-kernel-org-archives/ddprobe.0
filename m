Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5682971B24
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 17:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714326743; cv=none; b=BlCt100/MIRry5CoD0EfODrCpvO1T4lioeX0PjE6PgjC3b1nZ0+IwWht8wPcbdYCp3oODm1qA9IWu2/3rLdXj70HoNHmBiTZTWvnl64HP6qlQAO9XMm9ubNa043/GbeCltj1x+x3RqfZAN+IEklv8tWqIlFIKgfC00KpwybYzzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714326743; c=relaxed/simple;
	bh=yYn2AnK5fVgCtFFIQBj6c/RF8yI6hls6u95EMN3sFlU=;
	h=To:Subject:From:Message-Id:Date; b=jLvgo8xBBCN3ATZkkxMBikAxBdaJRuH9sE5dBpvEsk1LGvdFggdm2vFgFF5zKTjTzZZ/KiLwpaXF4Xx3jFAHXE3sLfwaoC3lIv3qPsSkDXlStl7WwriNIWxtJTCeg7NDq/jngZMzd8frL/2Kz0oSPPyH8MSwTekIAmi6lhjPfIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sm24cF32; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sm24cF32"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5056C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 17:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714326742;
	bh=yYn2AnK5fVgCtFFIQBj6c/RF8yI6hls6u95EMN3sFlU=;
	h=To:Subject:From:Date:From;
	b=sm24cF32Ugw6kONhcazXjmic1GGPhkB7txJ5InEub2+o5aAE0Ib9q5fyNuCDiDUmd
	 QEfNILwHEfGw9EqtLMSs3epbPhndiqb6Enf6vegvJDZscj87xc+U+1/Zoir3DbEVrF
	 vW6hNi+r1x8583Mcl8/6JcaOG0pIbrLc7TQNik5ne81tPSyfnmR8zZQcWjIMq01Vl7
	 6BpJ42cSyhc/PcBXGEud6FSPZbT8myLC5VDoLpjRcrzL9KujATXKEv+nRSmPVqxC7O
	 ds1vHgSaca2Eq/0UiXVwdSYZbXyk3rfmvfzt38eu97cFF846uiAxnC+4NRjxxscgNj
	 A9WlkknL7vgsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C23A4C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 17:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171432674276.3516.7939276451014494543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75b1e2045e2c6098907134e432fe667896a008ee55aaef1b0e13b9c056959200
Date: Sun, 28 Apr 2024 17:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714326742
