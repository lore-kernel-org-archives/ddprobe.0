Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BBDB10A3E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 08:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719994523; cv=none; b=B6nQPHzB08g+7Op/3OFy0vEGNLVPY9pYlDrr5BOpnNjLZ+KT9tSVP1pOQc0+yB//zuKx45eGhxR7NX5LPdelP+Mj/xdvvxGvyLsQASLMtp06JV/6VnXsBNBsPGA4nwtXxZh8gaeRQCxlLJnihRZm5lIcAJX/x68XN14hG8R8FAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719994523; c=relaxed/simple;
	bh=79KJ7qitrqnXysA3RHGFNt3mSJdbI4CVOiplEW1E9hY=;
	h=To:Subject:From:Message-Id:Date; b=Y5VsnMHMeXq3Qt6xisWkRcHWLJvmzlZLMxEgGf0E/pjzivDCD6k8NUihjpLgIjzdVRUCnt/AgCUg0PBYpsdS6qPC8ILb4quxUUJ3VuaQKwSmRjt75H8eDxRWKY05Ulhzto/3xuzpmVmibFzNfuHE7/4HE+9bKBVOtuuSWS8FXG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kML4N9LH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kML4N9LH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08ACC2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 08:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719994522;
	bh=79KJ7qitrqnXysA3RHGFNt3mSJdbI4CVOiplEW1E9hY=;
	h=To:Subject:From:Date:From;
	b=kML4N9LHCpyrvqhuUcwbBhXxRxlbrobDhy74imNaUCxolXgCf4Z5l3DD5rip3lQJi
	 aAGREcaGhIG+usHGs+XB4w+FfOp6ItTBUUQQOodyBd59go8Z1miHDRbbuuh3IGV8Wi
	 N9aC9Xr9GBcHGfJdfr9VgAvLJ4PJ3WHBLAo2ayIp4sErniJ4us2HVTmH2RvwY6MCC0
	 OPmCvV57j9WNFAB50bmOPfWW946CapZfmzQ0kuSG8RjicpG+oe08cOmSKvjl/3/+Gq
	 XeKdcUO/sBDFtuD5ybBMsabH2audU7eJDZPTFDLo8Ek/OYXgcY8XlkWUzIJ30td7Hk
	 kNqc9Qa+IKqjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC81CC2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 08:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171999452276.26762.2735484245973348828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 967e93b1f5b3fa9b94f172776dae3f629ed371826cabee7164ea1e33514ed9a1
Date: Wed, 03 Jul 2024 08:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719994522
