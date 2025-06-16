Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2983B2E11CF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750052994; cv=none; b=udou3Guwruc5OXv0Lfv2RAuug1qyxVZjhz6b2YWosgwQCCIZSUPlIlmOBt8t3f6cUSDrVvMv+vwHH1upNRdpgqpf3aV4ed61BtHgjucyly66AUWVr+5fsaXNobnLwhPtqbq6yPcb4NxlmXEkgDy/siu+0kGj85wTAwheZMjf6Wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750052994; c=relaxed/simple;
	bh=uYdcuGbAfehBm9RV4wJEix7t+UiD4tFM2p5quGf899M=;
	h=To:Subject:From:Message-Id:Date; b=ZPEfnvYods0S6udDS0FE8xPS9xblAw9ZNSS9hC2BYut9fCue41X2mw8CvpgtbqBlFFGr82gdjc5x4EPNmTivFH3vS88ncS3VBYErKzxo9sGZaox5D4n2KDb7TFDtRRgROI4IPQqd7qtt/AdOmJ0QOlb71+5qOV6Rtl7kxRRSFZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nIFyYBz6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nIFyYBz6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5592C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750052993;
	bh=uYdcuGbAfehBm9RV4wJEix7t+UiD4tFM2p5quGf899M=;
	h=To:Subject:From:Date:From;
	b=nIFyYBz6QVhUA/nmJ2qz0iuM/DORj5HuyNdRnvDrJH2SjQcH4r3bkyCkjx8iXoCGG
	 jm56H+XU234QDmQ3uO+Bo9Gj2QYhEeFoDFvhvW4ZKL6bP1UvShINKZOdMlt5lnXQwl
	 e772xAyG7omaMRj2GwaLqxRymw4X1SbfZIYxVl6IjhQpWkpeT9p1pYX+3EXsGyj1gL
	 PyxD8agJViVPvvTov8kYEZqWDQDkup30UD4MBDd4w9r0t3HLJrGH3eDXGNIYiE+sJk
	 aQ+AS3NkOMuv7a27suTIRVJrNcovcHgoI63Tl3B/BzTXc4bTBgNYwqEn7YPdozeYCx
	 Pdv2rvi0fQOzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE2EC71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175005299358.7263.14076837674289735066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbda685ecd336f9800cef3d77a7e10759a2cb2551f1a872f5f453a9e6b5e3909
Date: Mon, 16 Jun 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750052993
