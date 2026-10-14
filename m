Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692672248BE
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792015234; cv=none; b=nzpJ2SrO1EZOQIGr/yT8WQeGY9Md2pQmDiA2DyQfO0QxIGVsFy09RLAhcHtIf/Ml0qcRHN+hEcLZ6eKJTpvz0/QrgqiYeqNnkxbYLt1X2pPrD6bHuBQKIoM3dTMqIHRBLXUJj+aviVbmNPDCr/N3Wcf73YH2UtCwzRtMIZqWz6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792015234; c=relaxed/simple;
	bh=c5AAyv0nWyiLHCLLiHjNJU4z9ZVP92ecKJg+nOs1i44=;
	h=To:Subject:From:Message-Id:Date; b=fnAVreOZs64xS04On9ghWkV3+7HsW8j9LeNs91P1y2VpvBEeXSfyXhW8dFnlk32ZWZO8YUbzfRvDzrJo1zMiE2+T9YhLqZARppWvul78d/Tl50owYKQn7jYqusfFDaDLn04vozEiGjo7m1GLfxq7h/m7a9OEKdZE/dcqe5pP4PA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oR/Nl40z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oR/Nl40z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D246DC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792015233;
	bh=c5AAyv0nWyiLHCLLiHjNJU4z9ZVP92ecKJg+nOs1i44=;
	h=To:Subject:From:Date:From;
	b=oR/Nl40zlR0AKUHJ+KP08U6uyhKJd3E3Nsf4qmwv3n2jFOVMvEeMAfMfFRKHVAyl1
	 vJ3mUCLiValokkxb+zWnxsTc+oZYV/ORY9RnxsGwA7B5gVIYo/HYcPFkwhY5cZj5MM
	 uaq/fPPY8jp/zjDspULIbQB1kN7yrRivrYXEZkUeOJj7YRoRwwGqpMRE/lZZUGm6ya
	 7/lvpfhwRXnZ0Ep9shdkgliYT9VIQLyzGjEwY19xZL86slG1LFJfH7QcSJ2IJfzgX1
	 AWqBKNRS4Vs5kvXaeJT2piFpeEeg2uLJG8fV9eidT+KgE2vzygCFBAJ0LI7nSfHVl3
	 YTYvN+IzsodOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5AACC6B24
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179201523370.3186.18305128300427830936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab152576e302e9b36cef07a7b7465c3ec530c6afff2c87b8154af611abf79793
Date: Wed, 14 Oct 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792015233
