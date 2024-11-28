Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297A11A29A
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732800954; cv=none; b=qbmpLNLEARr0WVW02W34OblPZ4tAdYOUOpQw8duXPMhK5HcwPNpH75UQmcgztn69WgN5JwDED9WTiTn0scFeYNtiovofcKEZm2mjnxnbL1aBzU0GoEgjuaepYoj4rCDYXbwZjLgJzylfyp2rLMUSOvaDjd3dIdfKC0CxuLFHCBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732800954; c=relaxed/simple;
	bh=3vfHlpeiW2EikP5RRtX4p59sb6BixqchPt05K3YH1RA=;
	h=To:Subject:From:Message-Id:Date; b=PUAARi4scx/cRIIoitk3Dzw7FgqjaQRRGmrabcPgAQHFbfWdGPRD8LSFGeZl7m0YzcDTTp2WQr/Osi8sppkeiGrZ3nv+iny/H4bFykwidy5CnRyDI4oo/p9ocrZIYG4GHHz7EoI+wmjSLScBPDEDDjszhvYgzRhtwsQENiZchoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cDOfhKW+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cDOfhKW+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAA3C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732800953;
	bh=3vfHlpeiW2EikP5RRtX4p59sb6BixqchPt05K3YH1RA=;
	h=To:Subject:From:Date:From;
	b=cDOfhKW+ZDmBz9X4OVu51l2yPP/zvOPLUQI25HisvAc61vru6CDcXU7lIjLjj5dTf
	 obfln6aE0iT4dqDvFb/P5zS0r5IibUs/p7RCkx4gCy4bodFtF1xgeLRtOfMwtoOhn4
	 MQiVom7+dRoUNjVbmF4AE5/aopW5lBT6BTCvFqD0ncPRwaEhruWcFnx3aGzO4yaSsY
	 I8ZWvCrZuAsjgYoPt10KMIDY9ai9f5Nq2X66sWxTM5T2w4oYUJcnm0/slFFFhsCc1G
	 0fuwe8lI03BcMclajGJ2uLL00AmxxwcrFZPdDB4P+ZDVtxUSskEPhohqet3hQLl6VD
	 MQJBB5koI6IIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95329D6910B
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173280095360.22407.4628238742929003064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cead9f5d7a694bc41931849dbc417e4fc4471ce6fdc0b8f2051ea4eec17883b
Date: Thu, 28 Nov 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732800953
