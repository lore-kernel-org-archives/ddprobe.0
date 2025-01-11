Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3087DDDD2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736564754; cv=none; b=SWSnOF4GuThPZE80pWynrY0YjYY61O90rav85wQbh6FBQNURosRVFhKLMOGJ13NVaFaLEPJKoUTXhl5kK2KwU1mpEQRlaxVq+blHdcU9J0Mz3TTpixcEfEmzUDIwRpcyxBdOsLMYpkP2LTvhKjQBS5qfBhP2cV31gEm5eXN8fyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736564754; c=relaxed/simple;
	bh=PB80S7QGS89KT+LxB8EJzjPGNBd6yyQNH8lNnHW3vNg=;
	h=To:Subject:From:Message-Id:Date; b=cA6LnHUEG5y+SbwNoha2siDLfHB2hjhD9Os9cDijD8ygAULqLshGsDSqFIGAEgSL6FSNv46PNZz8Gsgvu7YGv3g0+g682VPNShlyGcPvSQe5WHcghsQGTRm1qIsbVnifr8dCIKyWl4YPr6w4iyKHFXnfB7z4WOK+R2q5aGRCdRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+Q6aVTz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+Q6aVTz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B21D9C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736564753;
	bh=PB80S7QGS89KT+LxB8EJzjPGNBd6yyQNH8lNnHW3vNg=;
	h=To:Subject:From:Date:From;
	b=s+Q6aVTzN0XKccZ6X9bn8EX4OSgFiNCteqCVkV+ZrXphlM3c4CrrzruFOuIYpM5Y0
	 FDpHmdn869Yqi0aBCXTCCHDcHf+/oqGDs69cU1/xbeNf1KoZ8jASPothMUk2t7J5Sg
	 o1ChhSne3qTxHQ2y9vucZt9HvbAQG+iXiTs/JXB0G9zDsECA+q8n3GNgz+zOltNGPa
	 Bcqt+DA30r6hX5IURE4dAnf4rRnuYkZE/4uRFR87m2wtKz4po/jmqjagn/RDDxasXf
	 q8LS7f/jXu60MaR5U9a2wU6yJRgjvmqp0do1dh8OvIkaIjtvaPp14QTXHPbDV7pOXR
	 5jiKdfNZNqnrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCDCE77188
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173656475362.5941.16493053057769336745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 639dc8e104e392e63e4a5a2976e7184c938b5ab719f0147e196168e7b3afa1aa
Date: Sat, 11 Jan 2025 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736564753
