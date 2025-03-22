Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44144AD2D
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742626794; cv=none; b=mrcpe5PIwwg5qOUkFpzVGcf/QRg7dLDbqcu1O0Uta7anW2XQLyQItx603B9vSYISrTMD3IWhzbOw8+XM49h557JPkWvyo0/sSr4czsGZFdQOIvdEDdXXZ1LehxyeJMSH2yMymUQHTlbDWVpzj+L2Q0xJuzuWnVMh63gYw1WM8Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742626794; c=relaxed/simple;
	bh=+NuTc+CsBHoDmmhbp0Pu5v61m9CoxczE3l+bQ6UaDu0=;
	h=To:Subject:From:Message-Id:Date; b=R4epwa6M0suxnLzcM2+Y13VZymzF/YfKsW6hdoBOhgYvUeXSQxH7Pe7POK+hEXWmkQtwKKILGtkvefYu+kMWBguKBbTX/+HjtqOK4+O1BIuK58NptTi0eTuVnpwnsNHFOsbpcpgde6aI9MI27WjpESX+ZkwNmoNV8vgePBSeAqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gGysNwaL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGysNwaL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B47C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742626793;
	bh=+NuTc+CsBHoDmmhbp0Pu5v61m9CoxczE3l+bQ6UaDu0=;
	h=To:Subject:From:Date:From;
	b=gGysNwaLmgXufqewZD/Bi2z4ohJWjgFn2rzRrq0NVbVicqkqhPLMiAu6NKTERcxQ8
	 yprXpLIVuOjR4S9QgE/x2W3KlOCMYKQudg0KPUusUlx3wdia62KK7FvBrQlWpKki4B
	 1D/lRQkZwJqNoFdvjM8NLA9CoIkMjtYorhy2AGDHsv81Xi89orDWA1qCbMLTplWvXj
	 DTl26k2lZK5iq4Rz225wOmsPTI3WE9tjdpVY1PZQHa2f7BJ6cLZvdDCxrYMy/zrxaH
	 Fm8UIchiTrwrIr+kV15BeC7NhloMq2fV1geIuMcVfEPAByJ9zbjznC565I914zHl19
	 HdUWiyysGoFEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B39C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174262679358.6970.10027747529061515112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 573f9f2d1310061566c47afd0b87490e02f9ba2649104e22d4e1a3c9f1887edc
Date: Sat, 22 Mar 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742626793
