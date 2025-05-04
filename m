Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8AA10E9
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746375594; cv=none; b=Ii5OhBb8M3rXumnhAxmkfrobb996t/YGllcQs/vUTFG5E7V+cbNsnbzT7/mJtJRCBA9sJkASW7uPKhTCKvC2vrc1bwPqq2wfbx5ipAP/Mz3zPHhCGLB8Zs+gaMfrMTtTBo9d1XAvyU8WDjkpXq8RfhbGW2gdOAQDC5ELFhQo6Wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746375594; c=relaxed/simple;
	bh=8MwD86Yo8YURX25L/gM9ycL6YCeAuWttQdZhIDKirgg=;
	h=To:Subject:From:Message-Id:Date; b=J0HZwC1tyXyowgBmwpYJv4VM86jBww7aJx1wWIZzJK2AYY5cSrwjN+eaukHlLajRN85e2aEguaVYQD9NZwkFUFTme+bNkuWwFxIZXM6O5/3XcfMJtXhpfQmH/ixkZ8PQ68v2rRsq3FF1kaEgMu4nK8xzTKGpN9xOfmxlkLaaukg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xt4bIE1A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xt4bIE1A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15E6C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746375593;
	bh=8MwD86Yo8YURX25L/gM9ycL6YCeAuWttQdZhIDKirgg=;
	h=To:Subject:From:Date:From;
	b=Xt4bIE1AUdDyDSvSeiIEDV+i9HP5bJpxD4g64zPsVTpMhUJ7ckT5oGpR+mmA6W8Dm
	 xho0nifzZE3SwyQq7/cPGYJEnEOXU1GqtJMmZ9W72v/5OxsFO0GQ6meL59Q0M63CK9
	 I+hYgQmSnmFeJP47fuAAL3CvwXHNmqV2itmmuHYq5pwZmJbWnB1gbqvyjNzzRlxfgV
	 +UQ5jPbsk/3FTQMXg8imx9hf7pQgfNsnYM3dBLYcfMwROvqNP9fDZsrwW1zl0FXOS9
	 BBjEBgHSQXHASCgUYUoyfSd8a2jUt96tS+u7HDP5b0qL0cD00bmnwqryR+OwtXEfiX
	 jNRKvs1ubznXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E54AC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174637559357.20164.14938762283607137300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fd67f1d2f8ff68869438034485f2c51fd7e1c3d1ffb78f855ae735661146cd0
Date: Sun, 04 May 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746375593
