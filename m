Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A401E376C
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757273996; cv=none; b=KI1rOiqeYjQskhQpfpmTl+7pFXih8BYnyEz6+DIBoZrLlQSGDJaXDKkXqmwaqU+M5z9x2MCHByBbdI8DFypoYRvJfmiHXZ0CrhJWkGTpvCS/L3yT3OGPHzHS6EDkhA3/H2POt7uqixMnSzi2Amr9ds2gi0nUKvdri0VaaqTnJRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757273996; c=relaxed/simple;
	bh=k69C+BKTshi84NBJuJbWoiSsXN6YGYYdsdkcHPtiOGg=;
	h=To:Subject:From:Message-Id:Date; b=UVoFD/MPmGSk0WZZEVwsSLrqRcJsFDVu8FOlCh5adjEr5AD8CnShxyJfrx7acJY1Dvo4H4f1QGlR/NlG2N8W+GrsK+prYC9CYdHY9sgiPR0BvcAuwFiH9/JOr+x3F5QS7xdo++GfhzgzpjQQC/6Y2wX5CRT85PqYlyH0fyUNZdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=daUe6kGV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="daUe6kGV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7273C4CEF9
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757273993;
	bh=k69C+BKTshi84NBJuJbWoiSsXN6YGYYdsdkcHPtiOGg=;
	h=To:Subject:From:Date:From;
	b=daUe6kGVqH2NKxj8QUeQtL6P8TjdKoHOahQrSU6PieDPN0bx9CdLWuFDra6dbFi1g
	 pB/4B8cEtdE9a3etJ7gMKrZGDqQ6yQJrXTZ0DZ3nNHCFkW0s9P8Mi2Y/Xel0OmlnDW
	 BLgB/kY5/0gUkkO2dZPsgDvTPGbhk6+vxrsuiMPC3YYoJmCujKkh5LwaTkqc2rgDJA
	 EXyGXRqTrKOzgTVDRaSJujsbO0Mrb+V0+SojVAN0rZ/ofj2j67+je++kQJBZFn5FLf
	 yw+TK2bR1Ug/ENWougHeunZXGSJghV9MXqs3VgHLFuv9RqsEaqPJfbvqaJ2PibM13w
	 JQsgHfeiJiUXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E5CCA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175727399358.13838.4211884411582310309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 182fa5d96a2aa90f6165e16a04332e908bf07a327dc704ae6daa22f69fc7ea56
Date: Sun, 07 Sep 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757273993
