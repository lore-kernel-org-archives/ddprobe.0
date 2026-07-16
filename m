Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 144433D969D
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 13:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784209715; cv=none; b=uuuk70PvCkcI1kMjlMGY5bzt1GqIhDibT3UHkqswWZ/ENYLqpU2BA9waA5x/lqapwNrQOfxKvkOhLYXeMOhHgHh0XQb/wI8kxuNmSkzOteBY3FmEgED0P68YuLKrTKpOBF8CFU3ykeIaQ/1021BM6hUzdYuLpNDB1DWUXDf3Dfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784209715; c=relaxed/simple;
	bh=Vt+2gq8fvgbvSIrH2bdiOKknQzyKSaZUKCEsDgiCHBs=;
	h=To:Subject:From:Message-Id:Date; b=QfFPmXL3abSGOu/toSgDfuc19lofIV/FzuGn3b8C1yrP91AXeiiPYvMH7hkgBr10spTed7niMiA4xMTdFF7ZLKjrRHydGkFjOpX01CZT7WdFT3klW5Dricf5RHrkBAS/WJaOD0wnoI9K5lBLqMT33uKLAsq7WWtY27O8LU1vO/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u3niy31/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3niy31/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52F6C2BCC9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 13:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784209713;
	bh=Vt+2gq8fvgbvSIrH2bdiOKknQzyKSaZUKCEsDgiCHBs=;
	h=To:Subject:From:Date:From;
	b=u3niy31/u2rI/yYfTuoI6EUSLoz2sZLesvWUhYDo6wF4VPR5wjYBCKmf1v0Z6ClZB
	 vyD37rJzUt6fLw4e6fFOAbLirdpH3/f53C/OI2XXr7Il2Ha+s4yMdZ2HEjijYpYFOm
	 BS1XlH3jlUr4IxjMSoaVzW+41FluevlBz52zuWuRnYYE/rRF2GOeh/ofACNR9c3cNp
	 O45DzKn5HBuSWQo2Fu/Zp6TxhW1EPUWIDbFF2hkfyeBOVn55D29PiAlx7Clw3J5DZp
	 8zEPadIXXKiG+4m5tS1ana+3if40GSrGsU24WFyu9V1mcUl4lkm4ueVSom+/ET7g03
	 TU1N1qFHZ/x+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B310DC44512
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 13:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178420971372.1328.6375421691968988075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 720ac2689dda86726f8ecd12a6114ad9f1c5c55c184566b48d31f9665b3d171c
Date: Thu, 16 Jul 2026 13:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784209713
