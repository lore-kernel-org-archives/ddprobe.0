Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D93A10F0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 00:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780877074; cv=none; b=Y0upOXFwnWV5A1WKD0IqolKIGqOSZafHEyzds9J1t41icPL72QqIz9UzWrQ4MZgc6UV/rRTaicuMzhwjJkKBVm5qJROX9183ZcGF1gGhe0UcFvohRDzPiV+7OYtugnQGVNXNcz7Q2ng1Dv+gRgniJvAuSX3ztaD6SiF7n8ezl2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780877074; c=relaxed/simple;
	bh=BwtAH1GXCqnldkzDs72h3x5zju6frXCsLWqmvI1Z19A=;
	h=To:Subject:From:Message-Id:Date; b=JPDc9MjeoB0rcxqY+i5c+KO8ENFdycSwq9J/WMsWCWk5IuPn5pA440+aUSnlS+Mwxptt3fn+6FwSKTMhrmOYdu4fQYgfst2Rwb1FP7J9HkR16ot9hpxte+elKgL2PI8AzqC8qyzDPMnZHVpXHWk3U5lhyPbrfwprb5BFC/AwDPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KvK35LVM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KvK35LVM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9D09C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 00:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780877073;
	bh=BwtAH1GXCqnldkzDs72h3x5zju6frXCsLWqmvI1Z19A=;
	h=To:Subject:From:Date:From;
	b=KvK35LVM6EzLcAa2l6EVdn0KbiqZcjaVchr130Ae4sHwMM2v1FC91g5dQMHUpYAUt
	 Mh4t86j3BX3QbL7YZMeM8QfMsDVP8k+pzsulrvMmOWQogdSwhdgRgxqARPas1VFn0C
	 WiL4Ia0bGvyg9BJmNCOHBM9CNIvd3gH9bp/TAUhf+QJVaJZsBNvpTnF1+C+2WjXG7O
	 QBij4p16oztr4dpQ/hLDjxufpdJLVS4DzabRS4jSwZh4azRTi6YZuC0K8GAE0oN5bx
	 ORWAx0HShbnkr7cRRBlyrxWG6sl0qSaMgFF0wJdVJ9Gyu5xAvpJF1Jkj0pVjjYOi0C
	 yxCl7vszw7H8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CE8CD8C9D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 00:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178087707368.22300.9761111376822882654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9f7603d17b9c6e5af732bcf37765995e69961ec2dabb13039c7dd1611f41f0f
Date: Mon, 08 Jun 2026 00:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780877073
