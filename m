Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300102FD7C3
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760128194; cv=none; b=kdFtq0R4ki2dZzZllFRVyuXusZ9K6snaNRyoSvYDvZQZmMbAYLqDi9GwD5EalBFQK2MjUver/PkbZgEQ3OWWGQUUNbG74fHXAGGsNxRmDV5WfrSvA6PtHOv6CClTnFzZuVlvehPg1nL2e1J+Wf49+TVvY33XwexF9IolTD82yVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760128194; c=relaxed/simple;
	bh=wIA5Us9RoYmAJt0Inj2bUne9lPoaCfHTRjZkqilI1vY=;
	h=To:Subject:From:Message-Id:Date; b=XTAGKfBkhJLOGbBZJYnltuvYKMxoUjC6aRNhMFPJeK21WFs1ViMxSO30bO4+xjQB95MUbZEsAXOkdto/vZzK90fpVoWF+ehSfaGnrj8bqSZStkvKmNElSgBuXQExotEWegeM3mELBXopTbWoUFon5hMmqBS902DIlg3K3n+PyMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YodDcD8/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YodDcD8/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE168C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760128193;
	bh=wIA5Us9RoYmAJt0Inj2bUne9lPoaCfHTRjZkqilI1vY=;
	h=To:Subject:From:Date:From;
	b=YodDcD8/znjABtKuTylt2Eao5DhSsXcKyank7Hz7atHSKCK/6WYm2V579HkDsEedg
	 57J9xEo27dg5GQjClpOAHMfo0IX1VW8RsJRG35NJEeJE0NdouFKdsQR3fxrJbr21WJ
	 U/J7XOTNz1Ail2kzoXR62MFWnCg6Szj9VGEkC9iczS3dbBFWnv56TIm7lIQamVBjDM
	 uB+MRQGTFRhEPNfLACrlGKRbn+ZfuxanGIB6WBZtf9Gcl2gffw92JkOLFNhxtomV8z
	 6Y2TFfdXMta2Wd7xbh7xyrh7aqhGblTTufcnhCdoivOiOHKosl6p9JMa9g+Hfalr6+
	 70OlhYFgqvgZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98626CCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176012819359.7036.15946019560369045317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de2db7d4b94d28a4fdd6d1cebe56086743df7f1d728dd688091a27d0d62f157e
Date: Fri, 10 Oct 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760128193
