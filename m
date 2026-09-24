Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E2231A5BAE
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790217634; cv=none; b=EJxz3e5EV1YRqTgZkOajVsgYckqXrYHtMPq5MotgITdMHQSdPcPVXe2saI+nnmgQzauFihT5ZkAjzQtQJ4diMOT/DMPnF5xxvmrwDXpPq878M86wSgpvG9eYIrJUPjUiKSuz1eb6exZys/5/9U8c91urfJc4vfbbnA0SU4rl4NQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790217634; c=relaxed/simple;
	bh=ACp2k9e57HV83vPqitRHQiJKaTTOF76I6w3gyDTNIes=;
	h=To:Subject:From:Message-Id:Date; b=k74h57wcd4XpoMEf3c1LgpGk436d0Xdcuc4rW/pQrumyY7E746DlHt6FD/wVvyUO6/yT25pvlQBpyhjJH21RMrck8w4AZmJCe/5wMxtzXw5QOVkQJL/IA6WoRI3Z1JXoHScRNJFCIftvQ8Cs8kF/hBev70wNl/gcco46yRJke3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JzAhCVIW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JzAhCVIW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D722EC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790217633;
	bh=ACp2k9e57HV83vPqitRHQiJKaTTOF76I6w3gyDTNIes=;
	h=To:Subject:From:Date:From;
	b=JzAhCVIWpHZqnEYEFxEhLdrOPumkMC/HNhlGzSu58oP5X4+fZwrjJxDmG5qvmRXS7
	 xJodIw04jZU0DF9sMFQDr5YV51F0Ofi8WSyi+xcaVGDVFcqyXSnbQDTuK75GXnFp0S
	 NJpavwbVJ4NiyDSkxq/0thIvO+fNep1c6VUd3sYKDJdeiF/dfgcikX9XeeFdce5AOB
	 za0oNCHL9c7rvEb7TYQg5gEOwFFYD88h0ZocSsaELmHGC9kbCWfiCe1csF5caYFgT/
	 0oPqNqNyfTwmmMR7bf/kypPjPiT6PajIdL4LRQxci6iG7c6/qnJa8gaTXvnrLPzPpc
	 ibwcjSs74PbSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2655C9830D
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179021763372.20839.6043280475228115982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a95ef7a2e59d368a1d4cadee80445c8fd5a0f932f8c397778f23b4c7f30cbea
Date: Thu, 24 Sep 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790217633
