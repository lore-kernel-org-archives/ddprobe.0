Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F22981E98E3
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773059094; cv=none; b=nDyxHHOKkN4k+dRtKIIycJyGLYvuWHb3+jW49Cp78YAW1xesD12AmcOWPSYb87hX4WR38FJYD8d/5/xB86mwcAAF0vH8njw73hPCrqCVrI0xuJKPQsX27rqxw2gFIF1K8OkT/OYnsCNG5CdJxD18JX5cpEAGXbmYWChV5nNnkk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773059094; c=relaxed/simple;
	bh=8qITdB0FP+jnf/oDG/sL6WGxGkFqAOsEotG0qcW/a3g=;
	h=To:Subject:From:Message-Id:Date; b=oxArms6sEVIBEeorcTjqW/btoPRIoizoarOCs3r0XNckWTrS97rKYeL+7I3ijLX2gTfhZRddXnzyTx5Yn7Bjtago8HMuGw0AOnG4p5ew76rtqqvSHc885KiIpfSSWVtq8ksJkXK5oJaHBymVDzS4v95/Tc4z0JaMb+CUM+EXt0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=McQcPPR+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="McQcPPR+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99981C2BC86
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773059093;
	bh=8qITdB0FP+jnf/oDG/sL6WGxGkFqAOsEotG0qcW/a3g=;
	h=To:Subject:From:Date:From;
	b=McQcPPR+1urX6EmB4PFbuKzuxbtIHC+Ui+/ULTpdCnX09cCP0lUiTgaK0Z1nTxHCT
	 Cu3IpAH0uFymrd+/f8gu4fhBTgVBWj8D7HX3e3W7HRMl+H1d/h0VN9zEk5Kj0h1mxU
	 nW6L6gAts35Y9F3C4nmxfEBkqj606B+jrwI31NGoE7/889u4YRWNalL7/TsXauJ8kd
	 sQeS221HlzHOywJ119+NrfqKK0BCIrgOhgZsprsTEDqulYuTr3hGOGxg1SIGcGH/d0
	 Bf3/8cLzJQg7Ftt3Jx850nPsezCJ5pbfclq5so1qNpJUiBLY0juCpYPbBU1baeSaFa
	 9tznWANcoLsGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E986F3C245
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177305909357.28051.15438877743042157339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17ec5f1eb6c41fa6daf4d07eb4d4c54289aca712be5357197dc18f204089538a
Date: Mon, 09 Mar 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773059093
