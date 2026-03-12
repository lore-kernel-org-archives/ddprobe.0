Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE1AE573
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773279294; cv=none; b=lblNdOLByF/ENDYQj5zzMvpjV5orPIGXzPZ36AV+usbJP70zj60mV+6H9xWOtXbAGBbUKqmc1IlgbMUiNTtHyzPy3N/G9dZjSqEcX/vHWC1Vuru7AWM1Cm1Xq0rFGi1BuSTTms68+ObWxlF9LPj9gBG1PBLZD4xO9z8nP3sEOJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773279294; c=relaxed/simple;
	bh=nsqylpri12rd6mKDud8MoOeej1Zflr0W7dsBvguvLJc=;
	h=To:Subject:From:Message-Id:Date; b=YTn2Zog9PGRTNZIhqBDPix0kjjKt4mL1gLWSQ167AGGaX5i1789ow+PC8PaZdStqZKnhnAPzDXJKnYuZHSlst+dQSkzoD4HENNX4iOokOwp5fXRhtXaI1IGoWxyDCrD0r6Ql03ePplYNIqyocBGpsYJm4rlEPf0viHErUUc2lLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jj6Jxen2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jj6Jxen2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A403BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773279293;
	bh=nsqylpri12rd6mKDud8MoOeej1Zflr0W7dsBvguvLJc=;
	h=To:Subject:From:Date:From;
	b=jj6Jxen2yhoiprqLrCIR5ENoGaPi1tb36sOgiYguQpwMxo0jwe66IFZpXIKk0bHDx
	 NYq+UAlT3qVOAi9aWJyEbsAH5OSCixYeukplsXL3t24IbtaYBSdveOjKpNg+xu4tuY
	 AwD7jEQ1Hext+79qkQiYyd7IGKKUMmA/h47K6OwVY5sf/HUrdOXMkk5zHx07LxDIK8
	 yi6hpGbgL/fWVfOfragzj5ndo797DgLntJFuAAHoqmySTZIwamxmBgGRqUxdSzOlpY
	 LMVfGfoPQyHFkdA/d3THQLt+8eneWabXwnz8HGMVZoGhWI8YWySYD1ml7XOcN0O0os
	 4MdGR5QvxW0KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901CB103E2FB
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177327929358.21565.1283239216599682688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 706f5d324a4ed670fad94b93dcad566b72984c3d41141bb5bc8f87e53b576af3
Date: Thu, 12 Mar 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773279293
