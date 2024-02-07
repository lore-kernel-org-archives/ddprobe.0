Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD8B1CF83
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707287897; cv=none; b=MWzAZc/ifJ/0NXYM22vbBIhSiHDl4qmqyFZHgCCuk/7Qn7aoUGDvBXMFKpavpVrcMlb0Btj0RaIeK4OfLANcwEzA7tvynKAcYelUFsI1+4tuX79Qc1DHXtxBi7FjjTkSwTcYnXvp2vwiPfiskQ5wbUoVgbbAkJ0l5S1HnvhcQbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707287897; c=relaxed/simple;
	bh=B57wiBHTeCwcSCve34W1T9FIhzH4jRvfy7Y19n8K1II=;
	h=To:Subject:From:Message-Id:Date; b=q2rjyKJqyHS5tzFpeGg+luJu9I6dk7iFoys7bobQcZumXU8qpAnJjRTUKmRvvYvlBUajbAamvKOwIdcTA1As3xo77g8KRruQZUW96NxNUKjcCSJLAeJ/NOlBZwJjpFpsMXHb3G2IKTnGeCzsRiNtLB/UVM0aJzofotEzwc3uFv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hh4PVuQb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hh4PVuQb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AC7FC433F1
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707287896;
	bh=B57wiBHTeCwcSCve34W1T9FIhzH4jRvfy7Y19n8K1II=;
	h=To:Subject:From:Date:From;
	b=hh4PVuQbFO1pkVSTyaV8w6cKJ1nGlPjDABD72quql6R7cAw54tqa8oVH01IJR/h33
	 3PIJ4kMGjgQjJ4btsRzXRwbagb4Sp1YucVUkwxou9A4hW9HB+ltWZQOJLvanEGMoxS
	 IthkGbyBNIn5175C0WSXTrGPVMDa0q0QWYrHxEBee7UHPsDB8ISpW5k0a2nXqQsx55
	 ZcAGFBl+1wZiSoZFu9erVL5rv+eLniMnlu56GTyirkzwJS7YI6Rq/F+ydyG1glv6Q9
	 vQE7ePaNTCJLmi9LdWHeMZUSJb4b0ZyGCGqJPGIHpGE/vVnp3QCyxmweWv/tXWLWiO
	 PTsuzUx1fgCxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AC91C4828D
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170728789640.7736.14879785304049392850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7ff3c47ab7959e8bbd82485682323c50c1a16977d654524d32d65cbd61e00af
Date: Wed, 07 Feb 2024 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707287896
