Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28560229B18
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 18:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739816334; cv=none; b=jzS3eKwopaNgiD+6yI8c4rJ7hYg9w4l7CaUNqyU+kh347uSJgY9/v1XNwErZOr0PLxubd2JXTmPnAJIseynDsS+odukAVMQnxbcE3UfzvmmT8KEF2r/vsVbtf97+eyGucyCPXvd7H7tMPa0eKCM878RbpLvxZ6rZhAHkPiZCVUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739816334; c=relaxed/simple;
	bh=wPWLbOHljahgRkhVkTZ5MmFOIvrFXOf3FwgPKXHQZaU=;
	h=To:Subject:From:Message-Id:Date; b=hLM/2FDw+OaHX3gRcQTILzd4I3g8ZOfFabCnx6XcFGnQOGpKiEKGUQGclFYcPCsFxTP6ym2PpRnSK6JshmFyHe3Xez/wMhQmrbDsAN4/lx8jRgalHFoeKKVkSJjJpA/DvnQ6xmCH6kzmE8Bp/mkEBHr9GY6zRlQYow4s9sMjX40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5dQ0ngn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K5dQ0ngn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A499DC4CED1
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 18:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739816333;
	bh=wPWLbOHljahgRkhVkTZ5MmFOIvrFXOf3FwgPKXHQZaU=;
	h=To:Subject:From:Date:From;
	b=K5dQ0ngnSWMXd3YGIa5BVcfABEu0ohllkypDF1/7kf3Fb0KjxccQdiVxvJF714hkz
	 O4Ec3A6UaPIui2K3WpF5oFtO6GluGz/fFKXe+LmSQciKQL+i8QhdFbja3txh+MsRYj
	 xviWSgVzn/Bjt4peG30MVMKXrreOvVVm+PcXPEivbd3VGH/VZ0eRxbNOMSSSfU1c9L
	 Z3JgypwCxANGhdTqXDmBJVxrT9v4upPrpb1gRHfLbeRXqm0wq1fplcS68CY477qbk0
	 p9BZw0vmKaKfuoqNNrtbd//YxDHCIrHI+gWc2sQJjyef2Sen3SP3XvIiqQIp6i6sTw
	 efWJQfo0E2XXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EB8C021A9
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 18:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173981633357.3117.16422856863850349423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8f3213802132e4c0aeec24ad48e5db9f3596b8d70e4b389c25ad115320a7377
Date: Mon, 17 Feb 2025 18:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739816333
