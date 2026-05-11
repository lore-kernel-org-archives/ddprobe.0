Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DFD24DD17
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 11:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778497834; cv=none; b=raWsFyvCq7Q/MzJv8T5eqNYR0IKUFoxWn68l0ehihk6YDqQjRlzMOkQ4jF2vE1sjO2RoFqKlQ4Rdg8spZOqtYcrSlyDyhtLYBdCHb2Ak1BQZdwNr6mY0yXTM3I8HAybaIBdvHWtvR6RIHRnwWoyJ8yxhzrGSspUTXlvwm6M9yNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778497834; c=relaxed/simple;
	bh=c33MWn7BlJHKakaxWCjoBREZMRX3aGdBkeqDE1AV24Y=;
	h=To:Subject:From:Message-Id:Date; b=ttXZMoG5Lu4Vh5Inrk0iCBVWv6Sa26ptdgqbmvasqRqzkfmPrcCfNUQM+AzhNWjkXkEy4ioqXVDeHcqbUL/go3/cshnviJmRvmoT+BpziD6NZZO/jP3AEL4wOQYKBomRhh/XO7js2rsq3MPqMDApz4EQEYNEiLB6D4epnCDNQnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iiLV2KdM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iiLV2KdM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B31C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778497833;
	bh=c33MWn7BlJHKakaxWCjoBREZMRX3aGdBkeqDE1AV24Y=;
	h=To:Subject:From:Date:From;
	b=iiLV2KdMFkn7FdGUSiVsN8eCESuHNrVIFlbQhXoPNroSJgFFTej7awSUwQtHldlMP
	 gXJCdQYWa5K/yaLz+eCKGgX8/kEht7VX5XygYYaKcvhI+5xvHqEhtvhDmkDW6PuHd1
	 UWDtMeNYNqK61XNgKbBdFeWdgPbM6y+dCxxaANh7f16M/SoAgDbigzSkWuURYu8k1L
	 IjUPGNQS+8t2OVWSptnDCdRmKPXOZ2LxK8VRFWiqcuSWKXJbQE/b4f5KB4OoPxdfXP
	 ys7stKfglCB17aVal1Gd4KxcnXf09qIzeUvbCe3Pyl6/b+Ft3vk5qp/v1FtYTday7P
	 Hd//K/wdFy9+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACE0CD37B5
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177849783369.23572.18211344911150850251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc993d109c6d8c8aed0e75e351951dd683aef124c33b80ef146549237c8e308f
Date: Mon, 11 May 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778497833
