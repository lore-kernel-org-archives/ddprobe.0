Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF561864C
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 21:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719525263; cv=none; b=KcPBPGRk+twejyR4hVku0dxwR2dybrlIB4eb/sEjAu4hSxzz0GZLXvRt2vYfC6NPZj9GoN4tCMtRwB43bdOGChJHBDFrLtXVjCelpK7XorIjogCbNFKotN9u7HL3NEsbdpMOKzIFODtYY+6nInGjsW3ej4wtJvoIS1V1pQCQoYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719525263; c=relaxed/simple;
	bh=A+Rt2GiBiEP/OSEWtNlBYWEISAA/kzNAgN8qrq8SwMM=;
	h=To:Subject:From:Message-Id:Date; b=LuEr0vsMJXJF3XAkbNdf0LI1yP9PC/6vUvF89Ed4986B5Nw/rMtsLnbZgMGCK+itv2oi20yH3ViJ+SUUlwz73xs5zUKRxlwQMcc3KEjVtZbSE9xe+M+P+KK/jZgR0NQfOas34ZfKBGztKzBcPTfHPwpXeCXlVZL8hw5ESlDRMSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uN/2NuKs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uN/2NuKs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9323C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 21:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719525262;
	bh=A+Rt2GiBiEP/OSEWtNlBYWEISAA/kzNAgN8qrq8SwMM=;
	h=To:Subject:From:Date:From;
	b=uN/2NuKsY19DCP7omI2yySBW5RCm5FZWcHYNXD7tw7i0+vML0cWzFA+5FCVGqWgMZ
	 3MUcltKEPTPnuWC8tNUFO1KPQdY1WXvcDcaiklZq2G09nc8KyyOztnFBX6EOxF0MCU
	 XqUKaO6Ip+2nez9YA+APXEon8k0Nqm0AZrjJGF263duZnw/YwKDJYJBlTBhfOtlFdV
	 +WTnHvHxvusAeDV13nE7vPTF4rbas65Qf+etfDygQ+ISMAbez9G53G6akWXF3E7aHk
	 UYyh1pN1CRpW64sWN2uHiKn9SSvFS9Ywi4GKREL0sdfjyR6g1bGlgSxJEBwuKTnnjJ
	 CZIy/5+exKIKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D57A1C30653
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 21:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171952526283.7456.13577348608447735212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c8478d3f460b1294cebf2622785244278dc6ac4800ae788002ad70e388c0d75
Date: Thu, 27 Jun 2024 21:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719525262
