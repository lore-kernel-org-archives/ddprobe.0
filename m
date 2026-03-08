Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3AA1A3164
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772931294; cv=none; b=TBhaLLiT1J8qBBN4f3rKTADeWbK7h8MHvI+iEtVvWY7B2ar+kCA9oyfsXmdKkSTUkXUJ7qr+U6GBhJCCPHs337IX7rMlUBE3adqy6Ywn0dw9oTyltn7b1TZdtHnabDc7QDR5ch6EOhDo/12xVqa34sAxZrOLHl/C5wepaNk0pu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772931294; c=relaxed/simple;
	bh=3ZjZOfaqfLG0Ko3VB/xSOZsogYi+s9sH1zeQ0GmaLO8=;
	h=To:Subject:From:Message-Id:Date; b=euaiKM/+XjO4qvZ61C8Hl0GDLFipNYLNXhas5pw2XgJvmXJ7zOx6haCgTx+a2R91JAi/U0DrRHof/RcxJyAzphNGu7JmtVYg1F2OX8IKPRLSPFdJaPeJXfOuii3TOt/zTWSUpFHQ+XI4gYbVN/FDck2M4Q1WnDDv5/Z1M+rGXq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WttowmC6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WttowmC6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75E0C19422
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772931293;
	bh=3ZjZOfaqfLG0Ko3VB/xSOZsogYi+s9sH1zeQ0GmaLO8=;
	h=To:Subject:From:Date:From;
	b=WttowmC6ELud7QkcEn8Mwj7oOd+AOo4JX8H6mgCd3jCm43r4nhY+ZNjGhmUKB7eoK
	 lPU+nYBk02zChyWhg3Ppd0E5OTQvQxBGtxwGIbWaRFEQ8n+5p5/Ke1I7ILzLW/JG8H
	 Oz73kbBpN+oXdoZGIqIyyjn8LxosgyH/aAcVtCPmp+T9W3KrtPAMn4/JeywVzgm0VI
	 +U72R/l46RXd3i+VUZoasJRtMr0kWPRyeODvNpiZXvTMUpfy6YEocwYWy+M7TA4SgI
	 FhwixS91YXdlXs0XiPKwWofaj/y7ApO+YZWqev2xYZteTgm/G/QGX3OeA8GX5X4LUx
	 1QxVfXgCvWy7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F640F55106
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177293129357.5288.8216805885835252294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d0ee30a5b6e8a44a853e299b0578afe29c055a2129d2ba32edc92310cc18d9c
Date: Sun, 08 Mar 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772931293
