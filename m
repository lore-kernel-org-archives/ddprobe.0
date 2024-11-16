Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F76623
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731742554; cv=none; b=ADZx0OiOsy0ZaM1n3GN8bv4t0+arjAxDy2D+i+th4+VzqDB5f3KlxnjNN0RGjAk5lBVQIo/H9U+z4TMEvMKUqMk4Krme53wrCqoQs9l0B/BslaBr1yuzj5BT9XR6xFlQfYR7cHzFTMQCuPxEwJG92iMCMK56ECAMprJfyfFKNEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731742554; c=relaxed/simple;
	bh=Fz9KNLGbmG+Dx7f7ohNdUG8dN6XhWoRNyB6K1IGCiCk=;
	h=To:Subject:From:Message-Id:Date; b=JBYzz40Z3F6GDj0XgsT7gdw0Comj7U/FLooC2IrMFoU1WBtCah8CnENIZOpik0ac6ZeiEJ4uRktXwF2U+mXpnW09vKGTotaHIkaAzpJl5xWRyY2AH4Mz1nmhpzrlKVfZlGCF+hc2ttriP3rr0lDRNk/Lss9HI9vUuvC1ZPhHXXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKMIyn/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKMIyn/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC72C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731742553;
	bh=Fz9KNLGbmG+Dx7f7ohNdUG8dN6XhWoRNyB6K1IGCiCk=;
	h=To:Subject:From:Date:From;
	b=oKMIyn/kHMofHFDY4wwu0IffUiAIKAJJ4ojtse5CUmJIycehjlvtSBwzULgT00Gw+
	 BcY8rNWoRAEGED62iMWAtn7C/MaGgWDZ7QaOl91MT9UtqoLoN7abqw68MZxUF/S6Kf
	 meHdvXCoC95oJP6Vq9HMPey4NzGu2YSG/Kl1aULDg7GGA2zmI9wHsbC1y0Fw/shKbp
	 QHGpgJRWgODDRG8PR62Ni+OctJKYcUfZVu3fcUezkr8ttwkz6zHKop7Y0UIslVhJ7K
	 nqXYk6YlorNNJ9Jn5dDies+pEfkeCZf4dofqG5isuIcXiwXxkIoZPnr7HLhwbegyeF
	 2ZoNYQzgipyEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BFED68BE3
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173174255358.16125.13591861146245219213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5189604ec8d602b39e8968a2da206d5459aca8cd62cac2283c81a9aa92679808
Date: Sat, 16 Nov 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731742553
