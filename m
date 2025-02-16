Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C03763D
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 08:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739693934; cv=none; b=lN1Frs9vXOld54kxxskklxFpuHude6KQTM7z8neSZNRWKzhrgUq9Os9awYGVxp5XVM066zfr2mM18vRo2+ku/+q2PMCbAfMvPFgoSKJiBo7k1fnMPUDi6BDMbAwHezbLC24OH55HxHqVgYxt2tl5z9hI/NuGF53TMLUrMrhJMOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739693934; c=relaxed/simple;
	bh=3WrxHEcY2kLgTJcZHW/o8MukscImchyPwVJB7+FoztU=;
	h=To:Subject:From:Message-Id:Date; b=d7GubUuPXvuZxJzn3EnnrZeNjeN8obD3Y0fQeY+H6Ye1oDd9pKEIeEXAFmUA0Pt5gPEJPDy7GZznd8NXJwxUby9f/LjKDirTmQZZpOyILWbOt+CM55KU+LaLs+mElz4OV68jT/8G4fIr4fG4uq4QyU8/V5g3rn8S3LEAd9ror+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDB1vNuk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDB1vNuk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0674C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 08:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739693933;
	bh=3WrxHEcY2kLgTJcZHW/o8MukscImchyPwVJB7+FoztU=;
	h=To:Subject:From:Date:From;
	b=BDB1vNukymAYvNxzhBaotyKw2ny69XunKiHSdROV52/ekxSdW2+y5xOQ78jdzTfxU
	 3OWQc7dKGg3+2SJGRQ1sfsjblFTP5OB5OMGPX/zEslJwuherqA7ZcJ9eIM+eeyBe3t
	 7dfUzAlYynit6kLQ/hGSFiz5UCdTTt3pCzOgpxhM1Q0wTxww6KCqvnvHQtHgqcy66J
	 LW/pJcaMSrkSoWBqPRtYcYzTYWIKVYjV2dH/b0bJfZXhPB6b87pB4l5Tsw1j1SbMTc
	 cW6KDyEOvZ+8n3ofeXZlfyUUGtnHmwq8DwGiOwgs0NkMzFrumymopE2z8/cc7MnG1d
	 F6iwHpPpls2ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DDB6C02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 08:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173969393361.11486.11517908063047060675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26340f2654f1885d2ea608d41ea16b88a0ac3e1ce9ca0e5ef87b4f167886da78
Date: Sun, 16 Feb 2025 08:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739693933
