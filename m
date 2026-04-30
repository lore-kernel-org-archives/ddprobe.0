Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB737262A
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 21:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777584454; cv=none; b=UPwJ+vS9+Ci/tbbGnPXdK+hnnWUyDmWzQlJd0bIWmLkWb8ehwwKGBIrbNL4EyjeHDhTWG8RGjV7BdPVSNhKYbvx9CagA6M6W0L3c//cNwgC6YdgjKP/LfHjk5lTr/FUa6ej5664tacbkcSep87Hzf8v0JWJgpeBqVg9BH87PU2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777584454; c=relaxed/simple;
	bh=J5SrxHjwND2cfqycaNFJHTLxLTp4ed02tMLZ2Yy9V34=;
	h=To:Subject:From:Message-Id:Date; b=jerVDWZXjjpmOnXFMnRa/c6ZP3vV8XeAl1LtUmn+F9yZc9whhdkcMUP8YqZ5uYeJ1QYVwswqnTvqQ/ZG8QtF8pcybBzUrpsy4vEJAkYQtASa7GJ94TTvTWpN7Vh1zzOd0/YdfQ5zH/OjoL3t0Zx2VFqe16Ipe0QagHXP2AEvv/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bp2wFmtK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bp2wFmtK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE67C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 21:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777584453;
	bh=J5SrxHjwND2cfqycaNFJHTLxLTp4ed02tMLZ2Yy9V34=;
	h=To:Subject:From:Date:From;
	b=bp2wFmtKlVu/LWD4fTLGbgslQxhIC9odR30OajV7sr4HirEbxNXTNv6vn1naM9fQw
	 cOcL/BuXgqY6EVnLIbw3s+Nuh2VjdUi+Ceqs1+WVRR0vIQMX080CkFONz+2dryvJFX
	 oPhDf0ZVEcVL3dAOpTyH4iZ+j/3NbY4H+L5yB9DjXhK0JUY0q22ZAX5IsOVJv45SSl
	 FlUIHWBlIKRQVnCWKEQ1FcSsw1VPYzJOHMr2LRJm6Ytw5yzGfROHghmlIbR/G8oWgq
	 fCo2KeDMfII8M5pghbWRPKFNxB3LjqN2EQTqUPHq5TCZuccZycHSbdCsgEzWayVO+5
	 pZ/YIeDntTwnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D9FCD13D2
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 21:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177758445368.32402.2102923484923926812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8dc8959c0e7f584e20f23f71a6ba04f1ce250af48ac03ed70edf95180a06cf8
Date: Thu, 30 Apr 2026 21:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777584453
