Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E99422258C
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768325034; cv=none; b=PqXKCg5LIbrEA5Bv+S405VAlPq4O3oOHySLwSX63vQpuqImeXbEvbLgD7fLpBUDXN5cZFZy+Sgnj0naKqxnGzt5G7xkTs0AxUr10q0sCQGBkh1XYuc1b8HDMIeF21+bUCbtbrGssb6yijJJifM0voP0Hhgt16xL0Yn8iep22NmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768325034; c=relaxed/simple;
	bh=h6/CPq9Bwf1PFe/YcwL69bFsmINxc6P4c0d1cluOddU=;
	h=To:Subject:From:Message-Id:Date; b=QnKbA5WPHF38Jc7VxpByetBhTn91Xua3tj11pvXFIxteKNw2XH1RpR6fW3vFzp3FxMfttG5y9197tFPVEUy9JWA7qUPNlD/GvUxoXfjbJjjZaxsWF6eeYJcqU5MkiV2wpDAKZcB4QzBbhVqi2tK3Z4sDJ1q9AIkXNE1M3isIGqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QEKeKrGa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QEKeKrGa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E56C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768325033;
	bh=h6/CPq9Bwf1PFe/YcwL69bFsmINxc6P4c0d1cluOddU=;
	h=To:Subject:From:Date:From;
	b=QEKeKrGaIONO7Et/invJgSmymrJzJVQGx5582uL4vlH5uOoB1Q8ruDSUCDY4p5hNu
	 KbJQPBKF1Nx2BewjDy0EjyzdZZf7ONlcF4gUVmf/D2e7h8A0h7f35nCa/vp89+Hslz
	 35fRdbhUaSrXVzO80aWBR/VHVGTT9WG695OgC0Q6ardZz1K4sxLS/Na9yI67EPijmQ
	 m34QzAbWGzkDY1a6imhqEYXPyuSTx6S3/BVJFQ0xkCTt7lPPCvm+nhm6/aGIsQhb7z
	 kLo3M/Jtiu0cCMgV5qW1PWGGa1VOK2vzCahsZmvHaXzRe5Si6VX6a1kOFzQ8xQZNgs
	 E+zlNV4044Fgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F30BD2F347
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176832503357.28736.2130258607795973863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d801033e7145e027d6c1b4fb7ac8523749282059a2da667183e9004bccf2e80
Date: Tue, 13 Jan 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768325033
