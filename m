Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D8815CD6E
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728900954; cv=none; b=q9lMOBKQFu3sETNa+qTu5sDBjwRHM0gA/l/L4gtBYCq+1HBi8sGbB9CNSKCE0tBx/URGMjr8/mliQveBy8DAAk1/uNFxIE5C55r6ZIMM09FgOiuXufNAFSCRRmcFs+hjs94y8YqgWbNqsRQ5IhQ2IXn0iEJE/Jj+V4UyGs98juc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728900954; c=relaxed/simple;
	bh=u+NrMseRsvkIJicYXdUBl8QhKQkz2rcAObmlrNvFaHc=;
	h=To:Subject:From:Message-Id:Date; b=HaR8FVRcWXDd1409tQ5eL43pLVEkXa7MW/YDaXlbbx2pKo5hUukBSFqj1KIWxrGXSUh3R6uksxG00ZBsdABuy50XLMpaa4HBd5esvp4h+7nHz9ySHmzR1kLYZcDfnYK8Hzm0XXoFTEXHzc1cYdf59LE/3XVGVEUhiiLfC+1FPAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KHAhNLmt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KHAhNLmt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B54C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728900953;
	bh=u+NrMseRsvkIJicYXdUBl8QhKQkz2rcAObmlrNvFaHc=;
	h=To:Subject:From:Date:From;
	b=KHAhNLmteRQV/JoB6qidH7j0jEZBQHHVnoUcYCoZ1L287alZ03/hP6n85jSA5iLn3
	 VyUffnwVwGVACtziRYjHBVlXM+qd9xNIXxtMz6MbMzouY7yJvmVnHL+iuvtmvbxmXV
	 BFMfsjOtmevMWjMWZF9n7YUQvnfCp+NAT+4J35uZX5Mvl3dYOdFY3P2m+5vsVrD/Fg
	 tfSb07diUA9GAc93tSreGFHpNuWvoxxnZDDbcQUFpczIOk2e3LaIxSsyrOHrkii8Q3
	 avvvJib+ZoZQ2LdHEH3UtqrJ9Zaqcbc+brUn7X09wEz9c4guEQzyLVaFraMCuF8BY8
	 2UVR4CzJX0xaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4196CFC534
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172890095365.5068.2546535781456656145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26514fcdd8c6f0feeedb32b6d62c75006dddfe78e0b22bf62f9d0afa4d508cd8
Date: Mon, 14 Oct 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728900953
