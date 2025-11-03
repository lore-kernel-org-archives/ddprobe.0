Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0652EF66E
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762163394; cv=none; b=IPuoz9EZPc9W0O6Rwc/NKKVXyb9p9DoV8q4GJELyr3fWJqm+YGf9y3Wnh364kY9OWPRq6Yc52LEEKJ/6xKOamaoJyk4xCIeE9PFgmqBZL01/TPLXnRGeXLobhA6fSHVYz32A5pHdCVyCHrP9P9O9WsYVMsHm2DxPvxE4/iUpbQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762163394; c=relaxed/simple;
	bh=N3UUXdcBNzulnVBjgnv9eeL9gkDxuqJolC7sMCRokis=;
	h=To:Subject:From:Message-Id:Date; b=ukARiu3nmGNF0CEN2BFerV36+zFkecnnjUZu3CW+NkC727q5qs+jcI7OXj1AvFoFuCjXw8DF5U2NHBheUjolnXK/b4/7Tyw50CuSyds1pPgK7c2S445F2WmZcc8mO0iRU1YrOZpDK7aoISDY1rNcqVHw7KdL7mQoro3DDAHTw0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7BJc48K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7BJc48K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3844C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762163393;
	bh=N3UUXdcBNzulnVBjgnv9eeL9gkDxuqJolC7sMCRokis=;
	h=To:Subject:From:Date:From;
	b=F7BJc48K+leDBRyitW5F/Vn3xwHHCmLpcQ1geZj/qyPG6wsStjfKiZ2lTACEP5kx9
	 HjrjNVQvC2LTbKOiQSSOWPGT33M6/Uj0MWw5WGb2aeo4Onj16AP6zHO/sR6KoDTz2J
	 Mn26rekI4hoD8v66VSsm7O7rVeBeQZdZLd876436i0UBk2H8sEHaymiIFNMMYnjmbp
	 5ylOEsRMftB0qNtEsvXuItLDo6H4qelhjahEpgNGtpUMee/fhy8VZRRdOMmfNqvmBD
	 S+RCAc0AhbRdSNwwiJ3RA7RhgMinL8HXtzekyxXYdABFUjAh40Cz9O7doyrakuthmy
	 +59o97+spMzrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DBDCCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176216339358.19949.1497156325947054523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28839db20cab81bfe575ab7b8f57bf5e431ca1c77341aa729d7d2046bad39e02
Date: Mon, 03 Nov 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762163393
