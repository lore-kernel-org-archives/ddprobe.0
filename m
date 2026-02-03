Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5801DE4CD
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770144234; cv=none; b=mpYMuaF/yiwpINSz3LHKIW+GERPuzdsp5Cbp2fnmIuEuyC+Zbp9//D+NlXXXZ+/4JxtGQkLlG8H9vFBSh/N6PKwLMtWSaVZ/baW/dSvqX1515oTcVofJGwgy4N+DLx3PCspn4igBtnJZ/ium2jSLYEJZ7CARFh0txky4HbtcUbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770144234; c=relaxed/simple;
	bh=+NnvpI9IqT4mf2sD65GF5lStjfBHNBD//sGMtQgHeT0=;
	h=To:Subject:From:Message-Id:Date; b=FABfue1EVyLD0ON0wpTzo8OVGbvzfg2jKK1U/10hykOszynip+f7Y2MqNUCAU96hjXA/iPM/jiTkdtglqY+4RWJe38fvggzRbdqmNafRB4azyu+2l/IQqcRPLHJVmeu1PJLBGAXJE+EXuKDd2TVsL/JJB+9lFcUoroWlYbPNYJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jciw7mhd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jciw7mhd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA217C16AAE
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770144233;
	bh=+NnvpI9IqT4mf2sD65GF5lStjfBHNBD//sGMtQgHeT0=;
	h=To:Subject:From:Date:From;
	b=jciw7mhdPxbOcCbRRtuiKI1x+Rr25LJnjWHMjHVwsN0sZ8jKBayoq2tjvwoksGyQG
	 HnVAdp4QagzbpIJHsxdPc/w02btSkh0liEMQloXJez7jBzAKcGKSBBlv780UbJg5YN
	 PC0VIzuFYZO2z1g1CJVEUjfoNflAXruIhlCs6Qq3PBPujDR0DYUGCcM2TQUkyNiLCO
	 Wlkt9kcuYNtTWCS0MlnJoqK3sa0JVJpa0XpAk54hPHNpq/ln/TbFe/WA+KyJS/NHtk
	 tmfmSwEZ5H2piPd01sy+yeLHeM9aK3KCbXUFvCiddqa9dWkGeL4IWE+gl22ytXJ/HI
	 tLZDXIdZC3lNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FABCE8784C
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177014423363.16991.9482000586527105060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cc3ae0593ac24965a49999523bc7eecf0ea55b139cbf4e233f1d5110b0bd7de
Date: Tue, 03 Feb 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770144233
