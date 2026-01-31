Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B22C22A817
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769871234; cv=none; b=a181a+KMUK9VvFWJVYIV7+EZwVd7UPXgt7c0wJMSUUK6l+N9bv5+46uRhav9ac2KFxVj8RIfJ21x1Rxbp88RLbcnOiDaB6yylqLkqvUP9FRCjKmIDGQurlrAnevfEOC+ZtECj/abmfsIzJI/LN0BY3Q53V4zWZ/B+zkUlsro7J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769871234; c=relaxed/simple;
	bh=c3oJIhVMDA54hdKOq3H/sxGKwPhjQUy/aejA0ND7czI=;
	h=To:Subject:From:Message-Id:Date; b=ZZ+scsVasFO8ldXbvLRIqtc6J/b4F7Cayr2pIk6Ta1UXZWUCZPc+bN2oz4AH9q4HNmrmRWsSZCXPFQ1x9/qWhfG315QUtcvky9L/wRn8akVIUwNbdSdET/s8Vp2OT9pGnJj3iwwctjV7VyHmjzDs3CRGsBhX2GVpwNN4B4YWQpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TnckqeDa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TnckqeDa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06B5C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769871233;
	bh=c3oJIhVMDA54hdKOq3H/sxGKwPhjQUy/aejA0ND7czI=;
	h=To:Subject:From:Date:From;
	b=TnckqeDa/8Ax1h39xd1FkW2VMf0c1twjnG0TYVKgcoA0dzCbamMoZPdQd93Emtyzs
	 XOA+mWkN0bl+Rg1eu1XdVNrLpTWSuFdYDF0ug8ugZH2Ofiw2kQmdOWmSRJ8NGTfZM4
	 KX9eFLNWlIUSXd7jLa1nkcC2T8ob+2QM0hTLzzmGcqcdmoP3/yXjupJS6vJsSzJLI4
	 5+Ep/k6xNNYpQ2CM9Nxeru6Rhdi2zMqV/FDc9t98McUA3v/jOQOtQsQnqKIC7WyIHn
	 /U3cEQ5R0tJ2Ieqde7gTmvn3jdg//8drC4hXC4z6CQITsnaSqlMCzBf4aT1qZzQCAC
	 4FLvmGt1d0VhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F012D7977B
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176987123357.29904.10571848204788122224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cd4aaff82cbab69ce4e6574217994a3072ef65888255606d7134af4ff43e381
Date: Sat, 31 Jan 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769871233
