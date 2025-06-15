Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCBB2609E3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750010994; cv=none; b=Kgj5rUQF71WvCisMEVToZnxyT3jEVAuLA8ta6cPNZ1hVsK5gSujyi9b3Y7cF7xyd3YhScSdGVHpOW26LwW2Exdj4b+zvEq9/ZQCs5/0C5fem9k1DL577hDYCHMQnQhfHU1iYSseHShEG2XCHER7jG5nbqC6u2o8dg0CqWeYicQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750010994; c=relaxed/simple;
	bh=tyq5Jz/a5y21iG+CBsGOUH1LcIHVsqcU9t3YjdgK3OQ=;
	h=To:Subject:From:Message-Id:Date; b=R9QYj8hogK1jGP1+X/gK7cGzUNiWW8Reo4Cz0ZL9OzOUZBZvOeun1SiYjCt/JSRxDzydDU3nu6sSsv05hNfv3HzVhtWQr94VhCrOdBy1DktXXFRzGtRUnxQCVKgDIw/AwKWgzRe6NTRYmNG7wABeVNmdNiDFNWX/c0k28fzLF3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pGj+sk8L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pGj+sk8L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E7EC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750010993;
	bh=tyq5Jz/a5y21iG+CBsGOUH1LcIHVsqcU9t3YjdgK3OQ=;
	h=To:Subject:From:Date:From;
	b=pGj+sk8LRCJWb0JwFo716LbiV/MX17EQyNSxA/SDduusEibj1ZdpjIFMO87dMp9YM
	 fi8DxKXbJf+8w0tJQM+Vcicnx8ibxHQ9+9TAgcHlQD4Eu3wwiFFasy3HxkMWOTHfSX
	 5N9ep6Od3BGsKkvrPZ8iOIlvRHycZxTUifpeE3Ym+2y5oS6QlyCq42LUBsNX0My3oF
	 bPCBbn+itQdv9GAmY7ZbhyLzLAQNMwzPcI+XNVq/6tV81PLJYpf1y750WmXePZ8HLZ
	 lGcPHVN2M70PW6jD+sYNQ7KPlE7Z7lazU2dMBd1ZtfJ6OJmAbsVfSHtNjqSMdeceX2
	 qWwf5gZEcbWQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6FEC71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175001099359.7903.7006034068614016090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 417902910588626eb815b770727e343cc0f8cb30bab7a9fc0786f0effaf6d126
Date: Sun, 15 Jun 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750010993
