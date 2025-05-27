Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E6A256C84
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748343594; cv=none; b=NPfHSbtSW5iTD2YSJLfEJAjY8IJSL98zGQ7n5Sa5eZz5Kbhn7BhBkNLN8Lq9OzeGIBaQd2REkLR3PtowSn5GVodBw9vPV/T/m8YMwJecHLD7n5zVfhktMxzDhEypQMlMrJxLvlhA2PaDE01Eh1/xiRlW13i37V9bFycxbqeILeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748343594; c=relaxed/simple;
	bh=byR0RPE0eA+EVt9VNcT0lOmu5NxutaK0lQhE3S22BcQ=;
	h=To:Subject:From:Message-Id:Date; b=SeeBjo6Goxv4DXqyxmEOhipio4XVaFVVPZ1BvNoy3K4JdpB3RtPjJACoRfk/tx+xOcGzG6uPrbUsqzGAoSSnKMh2Pnxu6tpkVcDNxHzukhEhFXKXND4tkiX7UWZFjwyvuSxC2fZnXiedG7v6JbbQ8AI7IBBHjnKiyxrW7Y6NLuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lLzt88gg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLzt88gg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68FFC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748343593;
	bh=byR0RPE0eA+EVt9VNcT0lOmu5NxutaK0lQhE3S22BcQ=;
	h=To:Subject:From:Date:From;
	b=lLzt88ggKpfRG0s1sFg4Rli5QqlZPB864tadYRjtYpPbA7E1Xab45qKXsz9MKJyWK
	 xn9vpgy7A24SWbnKNNFVX+9sfmGsm/nT2xHe/PoMg5nglOO659m8q1Hi8By7lDDCVI
	 2Gp2clBbLmPSBD8En2pJi4HwztQntwLf35X39n6cu0PKguG8CE6iPbQDuR61769rqT
	 Kozh6eLOplQdRkMpvwmS3v5DDznJtQKtpTZdm6N7NnF19VePiL+2uEYZsQ6DSQhE7S
	 PRIxMRfUZK0oGtCoHMeCQFLhjUj75L0Xe4346bhVq5AACsRxSedigStGmZsIL3C9/x
	 DLjhohBB6n+ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9353AC54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174834359359.13986.5429192150953839663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbfc0807f8e7f5d4fe3ab3595ab196162df96dc0a2bc12b624e87e9cbbacb42e
Date: Tue, 27 May 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748343593
