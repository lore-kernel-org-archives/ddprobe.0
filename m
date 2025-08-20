Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 023B1221FC7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755683394; cv=none; b=laJgzknwjzeAe+42Nc/tIe4K+SxHLh++3tuVsiVu8ZPTRRPRnp2Hlg8bR07mlc2OhdWpTixGL1Q03nqXocxxzs9gsCjYwY2Gp97gebXpUTVISOCCx3M5S9PPgHjJj2rSdr9oShwY4pY4s+uwPUz9xTSMNwp81sH/ZIOTuWmuoHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755683394; c=relaxed/simple;
	bh=WTJT110TjhHDlQ4Bt2Hcmd3UEPZitUXTj7NxUbU7AZM=;
	h=To:Subject:From:Message-Id:Date; b=ard0I9JQ14clIxEMvIf81cvJwxQrThuC/+wconZiw7Rs95wDdTgauI5aV3405TH2h4xUggFKt9IFcK3r4wErySzw9syca+T114XFmllOn4D/lvk2UOn2MHWyrKfM0nQGSk5TEVRbId4Qwla9dSIiFgz/537EpaFimPjMOGu/wUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nywQ3DIr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nywQ3DIr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5D8C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755683393;
	bh=WTJT110TjhHDlQ4Bt2Hcmd3UEPZitUXTj7NxUbU7AZM=;
	h=To:Subject:From:Date:From;
	b=nywQ3DIryE7ZG/Uxwu2pva0FlTdW80TVpL9GM8GrnRhCyKcY1a7zRvTUAfFjmqdvT
	 qTg91HqPN9UE2Yd74f5heRfTRQmiGt04a9tOlzLJe8SD9jlRzcKRIhJqoAE1WWa9ws
	 5/LNP+dj7cTNTxbeJkk8hfXoukllsTWHkQOyr5fgCUszR8a2N6VROlhmYw2nNpwLC9
	 s/knhemiQDj8irt6xZ+jP/TvbKf+DE78UN3YjbcMlCR3g60uMFU+imYeTZ8Ey6fm1a
	 PNOGluKPRjcLbqUiKqr1pDjJZoBwGR3hkyZjC4QGtMZF40WW1wHBUv5VYzdLMIPTz9
	 MorqvVC9xiDDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFF3CA0EF8
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175568339357.30467.7706439786090194897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dca06cd3cc657b2a357f9465278cacd68280669f77844bee6f664a47bf471c42
Date: Wed, 20 Aug 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755683393
