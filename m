Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503BB4C99
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 15:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719676463; cv=none; b=fAoqBUDJQ0wvJmCWD1yU3q70wrmiTVo/6m3HbC1AvVtOosL8XM+rKUvDFBELtT0f7CEcsnmO+C8vUa1eK7NnQIrfbA7qsqMkkjVKMO6wAhoJMeSqVtw+yjzAXLF9prpwSSocBe9Hu+vKOC7mhMNrXwKKIKGFgwfnqPgqGUcccrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719676463; c=relaxed/simple;
	bh=GJOHek1O5rdcmOUbgYpEB5n/+kHcMRPVuFFuq1AZ+ps=;
	h=To:Subject:From:Message-Id:Date; b=M/kkhYnqvvs5p/cK2kcK+tWC7xWe+VpNB42+EuCzr7To8JmqI1N2X70rgelx/LlglhNYYE8KJcxZ+4VXTP5fVmFiDsEdFKUuXi1swLlJC2pHas0XH/XpJFZ9RKgjvIc7y/clHOHyfM1Aw0OegQtgKihN8impQJS0HFdhdz+m96o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=suDzexeh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="suDzexeh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D74A9C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 15:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719676462;
	bh=GJOHek1O5rdcmOUbgYpEB5n/+kHcMRPVuFFuq1AZ+ps=;
	h=To:Subject:From:Date:From;
	b=suDzexehmPRJMVcXMulFvuOYofXO504VWSlqxam2bol0spQIyYFxAoCrYgVmIMQvU
	 XMi0JZG6hIaAxgYM0IkH5HyopYaDMEfyd/oOXfjliUkzhcs3mFEM8weevRd16zdFsC
	 +i+vPEHIB0+bIGK3HxwVftR4YRpC83XC7TaBnkaElm59KxKMKxmC0oqRz17qpzUx6U
	 hpwP+pRNtqoL2GrXdljg/z8UYdlWu/7undrRy3YJY1OWxajtIxwasB6uCqi6xuywx5
	 Rv0D6Rgt1TZavVVwjsY+r/rAILKvKBI55lXbhXLADolSRrH3i4tUTG2OcGRdtEaclm
	 RjpRpJ2OTcw/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4FDDC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 15:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171967646279.26512.9546591248014338916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 965523b85038aeda1fba4e427cec7494c3a31874bc8ae04ccd40dcce323388bb
Date: Sat, 29 Jun 2024 15:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719676462
