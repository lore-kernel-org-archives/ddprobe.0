Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A89A92D23A6
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791957634; cv=none; b=NC7hFu/LyfsvxColWF+iLKsgF1y2OeU6UGHC9HtSG4j6tKyimJ5jtzj9fqD3wBTKRdGROc4BYgpBYaonhV6Go4MATaIuQ+VWQBBFa0YeyQFBbHGInIvxLBGg5rmBDCk0mJPCI2jbi7ZTuKUMiFLalANDXHTi85v2hVNkw6ZQFQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791957634; c=relaxed/simple;
	bh=gvDmgU3OGLxOpQglrHal+YO3ja2ubMDsZA9+6kZr8Is=;
	h=To:Subject:From:Message-Id:Date; b=pd5SPnjpNZXtWxUtreF4Ta/CRVpmR2K+ThFf/elRcVjILbHnAIT9koL84bIyAPRn99PZiuoKrdq58G2rk+bLCtVoI+VVRpgMIeQtGtUmKFopXKHTavtF7K/eyugmTYe4dt/7wS6l1/k+XEeaTVSHOSii6LnX3e8EO07lqpOp45U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZRfvAQsq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZRfvAQsq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFAE9C2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791957633;
	bh=gvDmgU3OGLxOpQglrHal+YO3ja2ubMDsZA9+6kZr8Is=;
	h=To:Subject:From:Date:From;
	b=ZRfvAQsq5dx92GV2ufCKQ7Se+tcCeUtJEgi8JK5engJk7aACjtSacsfcqu0tRvOvk
	 VppVQcEU+t2mR0uOCgtCIUPSuldJ7x/T2bKj1LxIJL3HFiSjwWk0uPVcW7R0DIziIy
	 jTsHQINO7yAlpZjD/uCUuHgZ68ogD/VYCTmUSwEE6VEoSdpOo15XYbdn3s6Ia/Mlks
	 uohHpSEuurAelIoO+TvzyXPdigQWlL+DPZl5VqiL7yXqAfT/8MSS46hmj+hNCl+W/q
	 VUdUp6Kp3YsKe4h8Jjpt/MN8M/Jnv7QwdV7b3K9zfE9uMfWCBC9q5SgGF2MMlnAtal
	 KXYg0GFLtgqHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B92B6CC6B19
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179195763374.12900.16712733530455250719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7c6fc36ddd72f95773962fbcb3325757045411f95cd5d92fb6a6a5e4aeb14ae
Date: Wed, 14 Oct 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791957633
