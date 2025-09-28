Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1F4CA52
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759018794; cv=none; b=OIja64gl8kmUrMarJmhQIagPNG4pwixKzRaN+qYHEJ9wd6DerXjftUisXLugiszXL8320/E4tKLNqG/OztciO002iQNNsRPx3Q3VSa2sy/tyuPzoZk5073d0BGYmWbFPloHlWXW1WC3o8XbyFbe8vwqE+gHBPXMvRCCiL4ZCuDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759018794; c=relaxed/simple;
	bh=tbVUJTaPyaAO3hqqheEP4XxaV6ThxWHnv1xglQ3Izgk=;
	h=To:Subject:From:Message-Id:Date; b=k8ohkOdL9NIU3PjQZfZixgtCAaGlWvLiZs3lFXad3EKs3Z0x2YFuDPPdE43duioat/M2uQ5erh9xSGEgiZ5/3sXpI8keXhUX52kHq6qKjfQaG1cRQOV+tj6KyD5hKrITPrcwEJ7+Mw0mnbMMYWpq3RXD14uEBhWzPDtEBnBjcNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZ9Y9Fou; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZ9Y9Fou"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4626C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759018793;
	bh=tbVUJTaPyaAO3hqqheEP4XxaV6ThxWHnv1xglQ3Izgk=;
	h=To:Subject:From:Date:From;
	b=bZ9Y9FouYiyKnpD+RyKFeNsTfcTQ65/UoLJhGPrDYB6Lh1F3nSvOLiA7v/w91MY9Z
	 BwoaYn1v4ZBzulE5sn74LxfaOS/ieROcY3F4fhdSaoy6Gat4qvgvgg31aDLwR62Qso
	 rwTnVxB/xi6kaKfxXXnznBSUxXV6T7X2z77PYdlzSwztba5uFROHHDScpiVCohwN0S
	 Ja8E5pEnvca4WpKOVDmkz2UVoRGrO+QEYyfm1Ivpq10b9rB+bl1m3QvAn0+qL0n/t1
	 3YkrxvS7s2G+34ACdF08R1fVsir5keoe/Fc9V5kXnYL2gSvPgfdyl2b0zYBsdZQhXM
	 dzhK8q8T7s3rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C446CAC5B0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175901879357.974.6602766274681139023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7d173f0e85b6b1542b211f7c54e17059ea1317a4bc9042d1ef2a2e9590e53b3
Date: Sun, 28 Sep 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759018793
