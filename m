Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 767122561D
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 23:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718495303; cv=none; b=QSD+YZJ43ABtiPnDSL8U2tR7SAx4AfHL4/sk/7SYzpwqf9vAay7pNj7buAP63txSCTBCxiiy//pPu1kZPEs7EePbGRebyZXC44hR6CH64IUuriAobojN5oVzzKreYcjG42h4vLLgP5FY/h8/YdBK9xlOhTJcmtbcll5cbqCP7hY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718495303; c=relaxed/simple;
	bh=rkBoSREaRfMFvmy4lVRqvuSXC0zBoTOlX+jwK9/JSTI=;
	h=To:Subject:From:Message-Id:Date; b=AQ7wqd96Ztwd/XVHvHBq+zbmrzq0IRIP2xrjtTwGIqJYhE9EY+Bbfwy7CR+G+ii3Z+CUfIJ592/FSOT7hLnGH1ZWGbtKhrWnGoUAhQhgHtQvkZN7MjL9ksOreZutu+dZXaxcQl/bHtjAhmfOJBZEiRnUWCdvYtgo1CMjzhIqY/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtnBS/ib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtnBS/ib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5D10C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 23:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718495302;
	bh=rkBoSREaRfMFvmy4lVRqvuSXC0zBoTOlX+jwK9/JSTI=;
	h=To:Subject:From:Date:From;
	b=rtnBS/ibNt7BFP9WprJXMbt4gwEksalPDJoMmiaajal4g7QdtsHpc7mPBHJ9nvTvf
	 cGi6sAoTtu7pGAMXFV2pAeGLWiIajbLZ8p9iOuODChXa9sqUbjEQmRNQtFgRzbL+YQ
	 zaxZSAnMYQv+QGDF5RZ1r4zXlO5agGpHNaIKzpf818s2ljzqu97a6/FhfYW+84xq85
	 UiXS57eLCX8dJhylI3e0iHU8SZXAftFeTfP9ZOnYVvyV4jFKVRwjJiJgbEpyZAb7Tp
	 E3gN8oyMMBdMbCQM20+gsqW3J/4hnMLz9LBjideEoRTCoi8YQc8MzxeMryqJRic6q5
	 SIcupDSnM+p6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB89DC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 23:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171849530281.1642.9602444890552445511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40abc3d7f97b7d71c00cd4382ba7529ae73bb6dfdd200d76158dd6e958750e4f
Date: Sat, 15 Jun 2024 23:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718495302
