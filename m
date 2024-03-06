Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B18BD502
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709701697; cv=none; b=UKg7/IVYfl7SewdhP4bu+TbuWoBw8NQMQKn+uLH73LHfi6nJ/5J4ziOCze3rG+b/juaD33hKqcxVZiUP4F/DEpAqUwvSRbRjzOOr8NXKilYdyqEA/l21ixKweb4FrDdXpRru/lIxUwDLUxMv4uh2DNJrWzYKvfcKZMiCFJzz7RE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709701697; c=relaxed/simple;
	bh=VOQwisY7tSiEb9Vm59RlHu8YvFEdCnQDWJstxxlU3SM=;
	h=To:Subject:From:Message-Id:Date; b=rxC15S0abktq7qSncVcwJ1wnhTrIf56OwCW+sBrFIfTpkG3S+/uZZKgDkD701Zwh+XWXDo49uxqeBJat4PYZQtfaxlQRiV2Eiw++x63ABQWiXD1oCKqs94RK7/8GX5vK/ytRDtoE8+1uoWycnBoefDAK/R0f9viLTbEYeZKnHuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pikd6QV9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pikd6QV9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89FCCC433C7
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709701696;
	bh=VOQwisY7tSiEb9Vm59RlHu8YvFEdCnQDWJstxxlU3SM=;
	h=To:Subject:From:Date:From;
	b=Pikd6QV9xEtiYSUFxso5FthiS0MI8AebZXLVPl8u5qeK00h6rmEesFvk+37/LP1B3
	 0OozPDS1hMaqE0k0PYEiC0ETxJTUO2AzZVdqqHqGMer0x3of5lRgJkfsIoDIWd9HqV
	 NSG9CljumdQJuAdPXNsHi8Pu2MWsJ64MOmMbp0KryfYUG6epaqctcAHkKsfBMp63JX
	 KX+4i2nlyMp2bY69FG9US8gGs1aLHz4f4/5VGmX48rtk5oAgwRzyeo7bgXcU2WDydp
	 TYDRvQiJU6l3CaxxFkDzQOMJv2RnF8+jJlJCbnVdPeusX7fDzZpKUURzvO6pBgmPav
	 0BBqHfwtjv0Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D1ADC5475B
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170970169641.30859.2988058453640659748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1faab500db7e8c9062a77894605c6a1da9d40f2c41d26b21e94d5d06f7181ccb
Date: Wed, 06 Mar 2024 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709701696
