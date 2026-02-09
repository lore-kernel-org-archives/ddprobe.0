Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6A12E7BCC
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770614634; cv=none; b=VkwWB/gYSQ0qe0klm4S6Ox2w0kbrnEivYoKBmFTnSg1c01ASf7sXiwqktiZP1rCCoRaawlV7Bp1zAvu1p3xvhpLzq91mOuVe2WbVv+I4XgZihwWcMj+n3HOcCjNby9lGlsxhz0UmUqCJvGghoPWyYJ/XvK94X/eJ5ERkqIvTTsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770614634; c=relaxed/simple;
	bh=C/BNNLRkHlXO9jFeyHrZrGkja6OBtRPehItfccX82p0=;
	h=To:Subject:From:Message-Id:Date; b=RsOksYLuTUUKEAKYWppnVXxsD2d5pq51YzYe57BBaETdzCwZgGzCYw2PSNlqiA/qowPDJ0zbrTHSiAtnBniWcuzr6gzdPYK3Fp6tEtfQZ+FCqDTGJHqlf4VlaVdbZnSu7xb1WaxNPBZzHmDpXQ0XM9hI29/UplQkDqjM4OxF9Go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pPgWHsDq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pPgWHsDq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA8ECC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770614633;
	bh=C/BNNLRkHlXO9jFeyHrZrGkja6OBtRPehItfccX82p0=;
	h=To:Subject:From:Date:From;
	b=pPgWHsDq1fTSG2KduEGg8Ab8FenH54JWcxckEtvMRSghfFOFgrTXPZReOf69V+TXV
	 vu3ZZtOTjaOA4cGX43NjMPrshk9lD/cXDjQycooQtKyhug7hCVEsenyPupHCWqaXEX
	 SJ1KS/iROeqlThLydnhHPA5U2Jgy9F1hpBVkwwEOXavOo7Q938cwbOK9Zar7q8qYiD
	 mXubs+DwW4+WAlNfJsrxSBm6AN1K2eS3fG2G1bAUM9UyHmrglSPDt5occNAlwILPFc
	 7z3TymyaLqgVjT70ueNk4Fwc3eJDPIzLUTw5E/bXstzKFaNMJppe+bu5Bkkq1EYj94
	 wTKXhweaQ53qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3BEDEF070B
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177061463364.22373.1160601985382789772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3205248fb1584a707944adb29c8e4c4d9b24226483e7d84cb6692591e7704ae
Date: Mon, 09 Feb 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770614633
