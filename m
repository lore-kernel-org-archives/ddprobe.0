Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F2B31960B
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 19:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764788574; cv=none; b=skaQYqBtMshYhUrqir/fLJ1N678n+L5oW/lBtak8Lbh9oloGNoXvGMipav4FwRQBiFMM0znCXP2l+fKGEptD0QNDadPwYfD4kA6tLdlGmp0Nh0BWhgzdU8cu1KdodcHBtDufL6J5qPZWOUpa+J5XgwymVetF4xdUR+T1Zn4bCeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764788574; c=relaxed/simple;
	bh=mS2JECp3DgAKUWOh9UZ4DE/2ppAH5DxtPuhzayOsrTk=;
	h=To:Subject:From:Message-Id:Date; b=EAPHBDQmyvXi0QHZUjlRgZqlZ8uOUf385savwSvC7OZHAEgzKCSYlJvGa4NtkZk3IH7J29hJV+1BO5z414flbdPEUktonyOQJzt8A6sRnsvYH4aIkgeA5U45KEppLqYd3Kcsc5hyjg4oBa9yPexSFVPxmYTsfB7qUzsv2xc+TzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TiJqKY/a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TiJqKY/a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C62C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 19:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764788573;
	bh=mS2JECp3DgAKUWOh9UZ4DE/2ppAH5DxtPuhzayOsrTk=;
	h=To:Subject:From:Date:From;
	b=TiJqKY/adxfiiO5oKajV9wGUP00phRVqpb+K4mvQbGZ3BLucaGcT8nyezf/4EUh4b
	 XgZtMKkeUAyirM7dAiFmKPXd9Rfiy9xVEfye9Ia2Uwx4aasjG4wG3xK+YWaQn12AHZ
	 IZkcAyvwrrdFcCwzYJfRtyU5K1txDEdvHvW4ASGR0NnFTgl/EqSmOhbyZLjuHT0/aZ
	 +EBl9L2voooJi1TVUDZ4yNBJ4ez/BuERUix4tiIYCOmdREn+qMidjpMazEPSNaD6ZK
	 QDh9Ali0dU07COpDluAZNzP4nd5imQ+R/JZlQqTJAnkyxkcQ+wKm84MyIFNTE9fGXE
	 L9+1kpH9u9ahg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93781D1BDD3
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 19:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176478857358.8693.4921988450046065886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26274d01ae44aff76262b48874aa36c154a37b045dc836b6417f37d1f54fef85
Date: Wed, 03 Dec 2025 19:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764788573
