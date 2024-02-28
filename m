Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C71F15D5A9
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709135897; cv=none; b=nQwrrPCNhNVr14JW8q0p78o3hLK8zsu3bRYnp+tQgwyaagjHWCLH9cqDmNC99G6bGH8eeTDmAma6l3LZq8ALF9GL9UcWMf7k3V1k6a6fj763ked4omkMz9oM48FcvI4CXoeUd1ROumjgyrlan73qEXln5G2GliKfdbflm1hRZoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709135897; c=relaxed/simple;
	bh=d4yfhAHgCpWMM0x+CvTQKrBffn8ZrbKMcrUwwooBXrY=;
	h=To:Subject:From:Message-Id:Date; b=ckgjSnJFkn2whA3wGoKjZidQ4DP4u4JDNuVoZyWL0HEMNFSaW21uOqZxETO+1X9sZ8NZljO9vCNtkyBM/AlGhgXMjE1b9WmVIP7TxKq/fPCMZ1XCeawdm89wujwlM2Lt9FL38nG/5ZRJvYKTGR522WOjHu4TpOyjjMMTll1gyRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhLdO59f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhLdO59f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CD22C433F1
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709135896;
	bh=d4yfhAHgCpWMM0x+CvTQKrBffn8ZrbKMcrUwwooBXrY=;
	h=To:Subject:From:Date:From;
	b=nhLdO59fRsn55zd/wjgr8ZLt7QBomQY+hQa3AYRY0xORxjdQAqs8rHaXGAvBum0OB
	 wTX6U4jOvYhAE41EFWNv7M8mZZL4ofIHUl/c0BlDxPLnW3FYg+outri2BKAzp8iQax
	 8U+wZip6hiaitJctglsSoZF4i2LBHeQ6oAL/3pgYaCZFJd4t9QWITvmrt95kM2Iqhl
	 BPiaUjh6qf05YLg2eGhgS5vl59J++rk8khPl0xH+H1SpvMnpQtmPvmd5lygyeCI6mr
	 QsvQGZBqvtA4fbmshCHVWP0tCDy5/8PfPhyQwf9P2WnMrDwwXbhzbO48so1/NjXIef
	 SueqIMR4b02Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6131CC5478C
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170913589638.17909.4197978617597855184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4117f303668b5ef1c309562119fcbc9c99800bcfdde45c7239d8195fb357c737
Date: Wed, 28 Feb 2024 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709135896
