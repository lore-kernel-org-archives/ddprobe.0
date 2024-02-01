Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF0FA3B190
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706761697; cv=none; b=FF8vY/vqyulEnzraE0qyL0ybmeCbzyvMW+TLnQ84lQuG4oUirD5x7MLRnWCi0S2QidUuQnH1r3h82Xiqt9bvnz394ejlQxkFaiOicDBsRRUiUrJtXGp4E7lMB/5VR/UVDye7804Wr38ZAqVJUpE6y9u1D1tTVw6zfaI+C5h3dlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706761697; c=relaxed/simple;
	bh=24CvaWy0h8IDs6G8SBNeHvJdzFflAHnkLeRIHI2cKn4=;
	h=To:Subject:From:Message-Id:Date; b=q5PicdV7vlg80w4GBoLQqZfzafz10EJG5VTArutBzrFCuFOjneEEHBZ+ChOCSt33AhGcxcsyevmhZo0qCuBAmUnd8RY7kp+3VI87M+0cpvMkQmmFl+Lpq2L1/0VIJ8m6GL1++z+BuXaZoN6QLRtBzmMb7OfDFlfOyd7uQh/2wO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OK84h5Bj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OK84h5Bj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80154C433F1
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706761696;
	bh=24CvaWy0h8IDs6G8SBNeHvJdzFflAHnkLeRIHI2cKn4=;
	h=To:Subject:From:Date:From;
	b=OK84h5BjIDV/qZ95dH+N8Dqj2mt3/hFoLYlffSHZVz8KTrtQa3T9TQ7z9vHtreeqS
	 ou5TKWUJpQik39gXiSDCCH0E/cYXJ7vBt4gC9lWeN408SR5rvZyGzH66YEbQaIKG4p
	 KvduhO++JwQYFODs4LZPGqVi2ogZ+bPFDb7x0KSwjJogIfyjaTwF+a55Z5IjT2zUoN
	 czs0QGNvoRBweQl4l/Hn1R4UgcFNXuxpPSNA9ezIEPiBugNdpsFD7pizZ4n5IgC/9v
	 syRAf32NGNso2+KZrdlQEDkdSw92o7BGAOoPSE8+Q1p7dP9BQkay+29vFzkljAyfdQ
	 r6JxhmU+YwsUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62070C48292
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170676169638.1756.17800442522189022956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ca861f62a9c735bd2af88e243791b32bea953bdc20f935ddee5472106a419b6
Date: Thu, 01 Feb 2024 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706761696
