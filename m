Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C68E1F1311
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753427394; cv=none; b=FCP/5g78tSfyBybaz4vNzEDI7WQRCOlrqKOz8tL2O1AFRpg11Bk3NF8sqiTJtcpszplw+JuxMkwRm/zNS3kgPqfcwkcUtaT5dE33iuUCT57+2ML8cttuovngiDedze3L0Wrfe3I3tDfyMFjdnDYdNl/BrlaWe37zlU/Uh8D0Bl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753427394; c=relaxed/simple;
	bh=KIeCX1SCwK3EvVDTSzxGvFpqt+jLXC2XcF3KVoDmIM0=;
	h=To:Subject:From:Message-Id:Date; b=R916TsTfVMy7UWrB5vKjfF31DW9mnLAreQ2fEAZmIOPYntxU0w4x376vTwguwUNy6ccXd5CXDth7BgmlLdBaTb6KVRb7J4TBPRziQzqUUeAeEFln/3HxPF/tVwquKbuFtZJc8rPa5nulSu5v3PC2stq5fz8oKp/P3UlepsWSaGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PrUZbCHc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PrUZbCHc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7818C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753427393;
	bh=KIeCX1SCwK3EvVDTSzxGvFpqt+jLXC2XcF3KVoDmIM0=;
	h=To:Subject:From:Date:From;
	b=PrUZbCHc+NBUN6nERLJwljWXqx20hD11WKavdu1wvEcLCJCLEgnhVlzBeGrK4tggo
	 eNI2pDjMcG/H0PoZJpMNth6zmdd2InIewNEIkhJI1zZJ2yJJJ3qn+o0KCnocji1LpK
	 oCoGoWLJ1JOhrRz9n80JASc+sdh65hflte0Rp0ArcaYNHjkI6eRxkptqtoLqhNEqlm
	 B1pF7bh31+Ea9SOL1rWEpazL8suwdY2Occ9ivY+pUMMn0DRXjqj82y4VEo5jXyEhv0
	 gIiEExfF+oxim+3m2bgpc15SjC5WDxgsE/uXrjBPF263NJBCWoZbqSBZFbPkr8JEBY
	 AN07rUB5Xvwwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925E0C83F26
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175342739357.32232.5125038414968326844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57bf036edc4f10563619f279d1ddc1b2ef18b540588f742ee1bd395a10bbb108
Date: Fri, 25 Jul 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753427393
