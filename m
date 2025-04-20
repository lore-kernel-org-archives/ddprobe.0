Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE20EBA27
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745149793; cv=none; b=FI2dPqHEDCFXOFwXP+1mWNdxqd+5BuBm5CwkVex8kb0GFVshIDxujGii1kOSPLV912qMfq8hognfLHoUjBLPi4YEeEJSg88rCUFqjtdedj6iLx5zuoHFKc/ORjG5BI3pTeO8TgTub+KgfwNsobJX4ECSoP6NMpATdOSm3J/OFR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745149793; c=relaxed/simple;
	bh=kaWpIRamvR+bFrLtA+1EDdc1MV6t9ghcvIyCXak0tWA=;
	h=To:Subject:From:Message-Id:Date; b=Txz0eei/mY1Niv5sIXtmT09t4+FFVegu9uU5vnwpy9bvDgKoTxatX0cynztGqJXLI0fA8IDmQhmSWMcQGCjsMfZT8ILftSx3nU5VeMfYzxYgieiuuGmoq1RiUfKoTV8pL5VCH4aYa1iWtISPRjJiJhBT9p2ux9Y39sP183s3aIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DA13fBVG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DA13fBVG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21A1C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745149793;
	bh=kaWpIRamvR+bFrLtA+1EDdc1MV6t9ghcvIyCXak0tWA=;
	h=To:Subject:From:Date:From;
	b=DA13fBVGAbvkiQEgWFOdW2AFMW5XDoWhmxdNaxhP8BOO1eVzHg9wS/bPzPI0cv/rs
	 mmVeuQlkJwWAb5wNJocRbeqHNMXIUZpnAef/vP9NWSjDJKyeS4F2cuDKNPXHxW0iCk
	 u93YolA7k8vz6XmoEuk9IoJyBaGj1ZHitxvCGx/YiWqcwnHOHbOs502wHKZgDuh0ya
	 qUUplsUVqQ4PHcF5dyQgeBSwjI+ZtaLEKxRd7uxee7Q1/uezokyQfB0XoTrTBj0Izb
	 Pg0uk70TFJuOaisVDGf6MvF/JZkmvIWrTSwd6CUrT9LMDB/dWALiVilJE8GtMt7+/w
	 f2EvdF1c7n8NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDFEC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174514979357.18779.3317902429616903795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fa3f9a28c05810a73f825ee8b4413abd993189e6366614b2e3ec78126c77456
Date: Sun, 20 Apr 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745149793
