Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBDD3909A7
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785399034; cv=none; b=VRoYVMUwfbq53TM7OULSeasyr8J7Xj1mdy3j9FofhZkLsXgHT2HFLcDLFod64WLGNpfZyZl4e+vAQD2+8cEtKBo29Rymwju/H2vtQ6gxJ0huz6bu+nHvwr3sV8Oy+9+yQYlD58ahOydm6EyX4mpxDEPCHLFmTJLq9u3JmYTaqlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785399034; c=relaxed/simple;
	bh=Nc7ten1fTBIGxYASAcZ+rzKNIbP90E9NSSdlsMAMIg4=;
	h=To:Subject:From:Message-Id:Date; b=PPq2HHvdu2iYyTr7OO/AW4n7W7IVPhCm1fdhk+8zGgTxb6ZjhPRoQBxL6x0f/E73QfR/kP2flnk6u7iXdA43yWXKSIBgBMpnSWCq+50zSJKy8KLUaMbgoSh+IThPNkFI+pViccTQnugUyXHR8m2RmLKAAU1gmKZH6Poy5eTAeVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W62IzBdQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W62IzBdQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4C1C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785399033;
	bh=Nc7ten1fTBIGxYASAcZ+rzKNIbP90E9NSSdlsMAMIg4=;
	h=To:Subject:From:Date:From;
	b=W62IzBdQNyj2gMql8PvhwsEfvVftY48cEs1sSLEdKfyInNvbTexvhhRpB9E5EHxxh
	 GsoY3uhcTtsCAQhX+2RshiSxCM6hj1Oa0HwZFq45bZnAsSifzb+cndNyD+5ukKcgAn
	 lnFg4Qe/gflu6a3Z5W0UZubjXWMe7a+gdXCE3/q0Byd7r7D+qUPx7u15pokbLc5Mzp
	 9B/WrBBvFV/xYHOMRj5q/NyjQrbZlP+FGPsFzGERhUvIqt1YyO0/7LWfe1KLuZc7gw
	 UrxePZu9j3W1TagI8ECPrOUAla9z0J3V0Oy80YevX0GQOO51qkG0abNIsmsNKvPksb
	 xDH4kNHpZqU/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BAAC54FDF
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178539903368.12392.12708054845421235817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4073f44cd8e70f5f60e61d7fe77c955750bf48e94a483b474083bf7396220f65
Date: Thu, 30 Jul 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785399033
