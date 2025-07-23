Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D18F184
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753238394; cv=none; b=t8s2vVV7JhE9v3pWOBG5r9lpJNLM8YyCxLfka7D6DnMVKpSPd40M3lvijAhCqfL4hnw5Vx0UJkbZMFvXSvZAtxir7H6eMpsDSsCFqVXBHQwrXrWEAIT9HlUs9U6PJAkucQucqHj+zTDCuq6uxSpqyVz7FVBluSd4+GaSmnsR1eE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753238394; c=relaxed/simple;
	bh=P05YibcZI4nphijA1FWmRwmX1PadgZcESSOulYjdOcw=;
	h=To:Subject:From:Message-Id:Date; b=EiPFpiK4My6H1vqU8MWc+UNxQUTPD+CgnE8Eu48jbQJfJ/KPHURXUfcbAXm379A0gSAQtRVYKh6s3ADBK2OODAg2hPjMJoYTVwNpP+TPl/Is/u/n2TWMTitGFUzdp48BMeEO94awdrNYWX/pmQGwZeHwxbvRvX36G269lWUU48M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EcqAhzG4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EcqAhzG4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A565EC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753238393;
	bh=P05YibcZI4nphijA1FWmRwmX1PadgZcESSOulYjdOcw=;
	h=To:Subject:From:Date:From;
	b=EcqAhzG4mKWIOkZZAUHJb21AUFz2++CMljHttdU8SW5kAjm5kTIEzzIZ2WKPKv6xg
	 1CAPb9+GMRB6MwR2twYCGlSk39QYggQ8iT/hM8Y8m709aWpcIk01vym2XgKeQa4jmr
	 1X2SwbAof/Z9hyz7slr8q/7ZVJg5uH8vh9SLpccF9aUZtsQkbHN0Ygay0xfBcAAigq
	 6YXw+pS4sCoYPtyuudHkJfDmDVzsg1zr/AONr5pmYEYhQ5I48ady2+J9lK9z92ovLv
	 Fes+rC2drIgBwMo5s308aJIrNECg0gbY0UxE2oOysd+C/X9T7KALuxZ84OZEclalVi
	 nIoAk9HnneKrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B0AC83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175323839357.16621.18065132760663837956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 091e6fa98974983af53ac93b50ad7e53eb97702236a4d0517f9bcd8e925b0c00
Date: Wed, 23 Jul 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753238393
