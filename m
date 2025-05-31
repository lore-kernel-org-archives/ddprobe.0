Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C71115442C
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748713194; cv=none; b=fkFN3npZUWgMDlEptubGboWX0a8tswZtP9or4gg/m713BZYms4kr/mElVSIs4igEOYxKinbUQWnMlfWltY7ehLg8UXt3ozNOPBb3zd5LLfvVmvNDY+9/UIAAcFiyaTJe61UzOzXEGZ0roOCxpw10iCQ8aA+OVQU2Z77WeV5IFt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748713194; c=relaxed/simple;
	bh=dQfHbMpAMGr6AgyaPoOtUzUvcn8rK9cqewHEqRGD59M=;
	h=To:Subject:From:Message-Id:Date; b=pEkgmj3IFgcXg1OZ4JFeNE98FJRMLiqMvuLaRzo/bFaR//2vmYFB3YvKLhDdiY8dp8fDo1MEPK7wCSQTVQl9L1GEcjXmogD6KbqOIyMMZlryQEk4nSvXv64iklo6wGymKHQ9XfRWHjbQ/P5QMrF07hgYDErrxhCmpOelgUAmPuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WH4oK6Cv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WH4oK6Cv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB139C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748713193;
	bh=dQfHbMpAMGr6AgyaPoOtUzUvcn8rK9cqewHEqRGD59M=;
	h=To:Subject:From:Date:From;
	b=WH4oK6CvoVpY1CYGDGpbP3GuHEZ78Dg7GjGLIYT+odxrjUogoTAZBoVSrUXkudyXm
	 syl+nfXSZa77hOkMm1mvzXbsAikuVamFxBV2CZbeJ7wO6LiGipqjL8tROBHN4N6pff
	 kCHiGBKTppPHs+K3cxNqB+Qz+jJASgiML6trXj/IO9Es+haI8gZJUdomj1PN8diNj0
	 D+KtWB9n4J6JZkizD4bGFnPk0xHq/nzqlcQEpvxFknXdYjztng2EsbYDohTcz+YsZD
	 2vdcWWEMNABW33lwXPTiIpfcDJHP7vkuE+0haiCMcebtSB75TNSKSsu39iBvbE7tNt
	 7EtmVO6qCmFeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968BBC5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174871319358.11303.17916228996615429396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16acd4dbab90d20521298762d04c4c45f1c5f0f5f7bd30168e0021b3b6c5bca2
Date: Sat, 31 May 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748713193
