Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4766212E4A
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738458954; cv=none; b=hDIeayiWK0+opYNmF0pLmhbMOFZNTf6ANqHSFLZNOx0atL/YfvlRrk7hTAENLsuynzfxcHrw0Q6mOFqvdjUeZX4hwAV5jLCiLhSL1+psk5yR8UzNRi28JYkyt15Qk9xE0rDIV/AKo3P4v0EGUhX16sHtwomnIAbhxB+XFyw+8HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738458954; c=relaxed/simple;
	bh=rpUdMb2bkr8211aauPoEtMIYcRc8f2od9YFaAjMVvso=;
	h=To:Subject:From:Message-Id:Date; b=bQEJpfAgOFabiwsKBvC9EjY4VLPDPHfOEvvXMh3eWX1ZhxIkZ/k/gYN5hixj+0bOWZ5O3ax6h+aeQel4lmfyezl1Qwny3gukS7ljaC0j8se3bYm9UIoxZ160TerwIxcoPZEFEds2lU+ZRmCE+6yHivtAil0o9WcTcO9o+JRvlM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqqNg7qU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqqNg7qU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A983EC4CEE1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738458953;
	bh=rpUdMb2bkr8211aauPoEtMIYcRc8f2od9YFaAjMVvso=;
	h=To:Subject:From:Date:From;
	b=IqqNg7qUm57EG7eHcRJ2FW/Ev7O9iOmJwUVXLjy0hk9d/8Nx/XqXbYGAYHJy26crv
	 hhE6NWB7q4m8um/VUbo0PbVLtPrRIKSOt+O74yIOE5SGKxP+u16oNyMYcVtai4phg6
	 YEdtcEAqfFMSBgr1yPlUfpnM8XqSaqiH8zKnXuJtXb9yxEynD/JbizaN1HsB0JtTDH
	 +q6J/lRCZEHFbTSAoBGnUY/mn0r4Fi/pnwjT/gptQPimD63ivSfP8o4ALOYzn2y3VU
	 4Lq9Mj85qNADUfFOA9APgP2XSvddKZ08WguuQqYh/E0C/b6487Kwf3XQmHtOZCIwD0
	 hBZc3LjvLkVkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E8FC0218A
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173845895361.9408.1071987303929236553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: def089e079b12b2e3091e5192abe41810ce62790f5dc1b9dc4a3434c1ee8430e
Date: Sun, 02 Feb 2025 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738458953
