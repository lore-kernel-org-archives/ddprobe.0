Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42CDC1B0F33
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745698794; cv=none; b=vALiBoD0DXn8y+lR8P1Al0eEUK765dKzmAFPuLdeKxtdm38HweVD3iSHimSR8RyKZ6hSQzdYQNmmcYwR/ZKsIPHibS9QGjfpV8BGpZjMVv/vwrXeD0hYwYXQZPIRUJnrsLpRwAgRScQn6xgzBj0mcv2vW67g5bF6rKKwbFx8OzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745698794; c=relaxed/simple;
	bh=f+EdQpFFYeO0u9WPOB7xCNT1WeSiDRpS1so4wyVfTOU=;
	h=To:Subject:From:Message-Id:Date; b=I5pn2E602mnB1p/NQZE1Wq7Z5qLeT4Fu7gCC3O31HcWsGUYlcVKDXfh9pkJqQ1IlyvYVftoDLffp92ZjYyp4XO1y46WXDZFQBq7qC8qPfd+5MIAmnBmdGPzsHBugP0e3jpgVbXjylOk2135TLG0r28DUQ/kIneDN80ov4clRIak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l9GeO7ll; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l9GeO7ll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A834BC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745698793;
	bh=f+EdQpFFYeO0u9WPOB7xCNT1WeSiDRpS1so4wyVfTOU=;
	h=To:Subject:From:Date:From;
	b=l9GeO7llOASTCsGv+XASADoZHBhYyc9I9pPoMD3PpK8HCK6wdPO/h2ew50oosBY8G
	 An8c/O62M2UfVRaOpqYGNhe73ZYrZ7nxftUu15iwgax01NbUEpIPEKQTZm5VFWDgF+
	 r5PZg5R6JgyZbGzmefNHWVISPuWjeJJywJqHe7ewAHEj2cYZxNXfA/w5ER/1Qf8NaY
	 RUkso5Ily+Q/Irws9jL6GQqkhf3Fsql5pMC/O9tKcOR9hXrFE7i4gg5AmIfORIFY3o
	 ohQJ7xQ4Qzu7ZFfSIhD0HIbR7LByb2ANnD0Yo8qcAEoe0Pu9Dd/NEzfcM6vLOys64h
	 Cxxfq0j3JvtpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E47C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174569879357.27079.11640516714658200940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f5e4b2a32024e8b174acc025413a0dc061c77ca4898d3d30d71603194243336
Date: Sat, 26 Apr 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745698793
