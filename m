Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4351F4CB7
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749292194; cv=none; b=OgttwR1x6bON0TWrfbnPMLeB3Q0g2LRj5dyi9b2VHwdU+29O28r8VnddtA+GVfSVDpACReZwAxt+ePSgXDPwgwEUxiqcA39Odi0TxWbfCuUv2loHZxbaCCtUn0CBIseIWYQJEtaWVaxQNA1Ly8rfTe+5taPZekbw0GGv3n4vrfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749292194; c=relaxed/simple;
	bh=S4epCGaiFsEIMI4ylXh2WpeiM5Zv/ckSIaV7B+FfSoE=;
	h=To:Subject:From:Message-Id:Date; b=Yd4zpjyVfLu99BvOEpkF2v5zhIuWgqpgGy2R8WubE8f6kUXQFD8ynC1xSSW7pdbD0Z+f86vwf+fQ9uNvniakgYvCnLqyz9JpJvL0mYcCXvP92nxalAaeOa6S2xoD8CQCBIREg1NtrQqBOwrBhYtu83vZCtda0M5FmY1QBXJqq6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJkM7gyt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJkM7gyt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1295C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749292193;
	bh=S4epCGaiFsEIMI4ylXh2WpeiM5Zv/ckSIaV7B+FfSoE=;
	h=To:Subject:From:Date:From;
	b=oJkM7gytt9nJNuhJ+w6NoBhJZR7JqXcEQ/vfJVUyDpxlrzUTO+c41Cpz6wt0Af4xt
	 d6FZBxc1MPyEA07XWmJzpcUT2UzjNRnnRtN7DFf5Wwe1LnxQHeUT/QwNTPvvpItIpS
	 RIXmobJCOB+fQRS2rdjOMnVisTjQIoSACSxYRG1KLaSys/+iTtJoEVKjuUCWrZuhhe
	 +7vD0s222TgSHHSMNwgXL+Y/ZfcukZb8JU0k11uvSK6hD7wfFFcir22jRcc2/PihNL
	 wh364G8q/8mWazFNpBKJg7A7MdiXI9wQWoGPDhrpUU31M9tLJ3CXzYOohwh1QnSHN6
	 Q5v/yumvx1cIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5B1C61CE7
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174929219357.32718.1016270078844924777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cb06e6301fabcee3d3972a5ddbea46a12e333e38b4a118cb9e269e251e5cf74
Date: Sat, 07 Jun 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749292193
