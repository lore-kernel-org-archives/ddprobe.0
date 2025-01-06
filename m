Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293E413DB9F
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736181354; cv=none; b=pb1gvad3+rtiGNGbjWwScg+rdfWd6GrUBKPM4WLC42PgnEkSKbBRl7Rhz7YvxKx7Jk1cfngP9CKczPr0tQfMq/EIzjQ+5Vt1Aakz7wYZWmhWgSP7Y78hxpQgC9E1IxyPq8DBHTXgtHzUEV9m0zhTtlJTg9iEsJ7ImniONjUSbSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736181354; c=relaxed/simple;
	bh=Vc7+fxgkpepd8OhULsFSK8hPiq1SdtMdYJNWuSdhkJ4=;
	h=To:Subject:From:Message-Id:Date; b=g9FQBR34DFkH4hoGAZdLF+qU9jM4mxfaqmWgcNlwD89mQ4Kcm2i8YFWvynwOGP9gjGM6q8tAGybGDkZ17FhYna34C2VT7+1n2E3kZC9mZxJ4g/LztYCVfpeHj14zc+hEh1nHXJ81ODOE7bhV+PWP7/nXoUsaFy1WMH0OYFIONPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QA7bhAUw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QA7bhAUw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5829C4CEDF
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736181353;
	bh=Vc7+fxgkpepd8OhULsFSK8hPiq1SdtMdYJNWuSdhkJ4=;
	h=To:Subject:From:Date:From;
	b=QA7bhAUwYOsMhhoIMJeNFUA3Yp7yWxBLD80TcZIvynoblt2sYImV0pc5SrBgFt5vu
	 sheCmqYAL+7mP6JZ2GlNXyDEoT4kZpPG3SlKy07t3TOcfAHCZIFP9T+XFjGKVJYHp4
	 GLQ6BPSYNXPNm0a5EuMCQ5vyQIx3E06hPRhripsDhqf5B1l+ERziWvVbIgRm8YBy8Q
	 m0kewQf11sjL06wN+uSabOTNM1itmG8ka7iIk34nTHFG1AKhiWdr/3voxi7DFfVDFs
	 RFm6kTXasYqbj1Ukai6h/oogc9qnp2bBYx5/LZztVSxyZQvT6P6C8BSBFUkatMzNJ+
	 F90RFOcgZGq3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C87DE77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173618135363.3370.14801270342260056315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a2c8f22e0042d76f4850420e94f33864add3018e995a8697901ef85709e296e
Date: Mon, 06 Jan 2025 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736181353
