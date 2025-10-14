Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFFB26E706
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760432394; cv=none; b=H8ale1IumgkuYBz5BFhzQwZYt9WijA3L51wQboRf6LjtfhzXoMeFdaA4fvhoK/I3tYsFmhoB6q4u6H8Z0Y08kEzrdwqJSd01Yu8CVzzgDgmTWkQ4JGXX92yTBEvrBqSb4xpqwPXvT1solKzHO0L7JHFK4DNZTfm+t0WB8RaKOFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760432394; c=relaxed/simple;
	bh=06D2IgUKH4A/MU6zxbu0ifab4oLzB8ZlJd8NRZK9HUs=;
	h=To:Subject:From:Message-Id:Date; b=O/s+/FiLW0pi/E7ii7aZXP8fP7/12zUf8GArUD62UM8bM2mFQW41SkldyNU1ntLKtM3f137PthkB6YkfcRml927S0TSMs59BHqVy0oiLkJZibq74Zqh4uhuf9a/kBjcENV9e7w5RAS+SZ1/3PMPMm3+41vf0Ig/Jy6zpRD6P8x8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgT4lEIR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgT4lEIR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B14C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760432393;
	bh=06D2IgUKH4A/MU6zxbu0ifab4oLzB8ZlJd8NRZK9HUs=;
	h=To:Subject:From:Date:From;
	b=kgT4lEIRhvDfoWFT941hkRLALo01j2Euq/Nr/6OWxBY5ttxFSfYUAlyweDUnifIbp
	 HorkL9T8dq1eoCjuoLF8aMk3ZKC4XWudT3t/7J2fXh1nDLr9Sde57Pd8BcycZaRzCO
	 TPLhdP+zBFuPtE1AoeGgH/UvmucF2QK5G2LNR0LaeVfXJNj+VhojJ2vUADhe8r92ZX
	 BJh5mujniicJxKgTCP2LdqGdE8mvtpceP29tNukl6J0eoIFsY4O6xIKyrWMK/G/4nH
	 q2RrkcVPEd1D6TqQxKDtbk5mqQZrw4Sbld5teiskD/RXGQ38RiALPzpNEo9ItYivtE
	 fA+udu9E/UrCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91075CCD187
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176043239358.7480.12870083644039680377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f61be440388d65692b415d8326ad4d039cfd562d10314cc686e17b3a6d95599e
Date: Tue, 14 Oct 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760432393
