Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38748215075
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765947834; cv=none; b=Jo9Q04QPv1PrkKOQCPRJ6P/CEMqPZ3zHP/Vc+FSt87IXlI5IZZCdlWZV3+2ad1LBw2tzrT81523gB4ul4M2bGLDnVl3oq7Pduiph+L5rpnxuRRTFc7P7qGtYVlCyh8pcP4PQ8UIWc44O6bsrRe9zrjY/8a80MfZMRfZVCp1WaUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765947834; c=relaxed/simple;
	bh=PL6Wr/7UnS1JHSvW3Yx3sDmWHwAB6Lr2m/pNhEQS1OI=;
	h=To:Subject:From:Message-Id:Date; b=A5/lEetCp3aLs+j20lAMxg+FQihDE/a6/X7z9x4ysW1+aZjh3ovZWrGMpAeoBjMhOruo24hYyRG/BWUb4HSbSrwns7WWk63SaizRmls43+iaWaxlzhH3wb67gtw22CJ81xZGWInmyOBbSMOsrsEQWaDBM4/b3KkhWyoVkr/PSls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KCNFlDgh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCNFlDgh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB978C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765947833;
	bh=PL6Wr/7UnS1JHSvW3Yx3sDmWHwAB6Lr2m/pNhEQS1OI=;
	h=To:Subject:From:Date:From;
	b=KCNFlDghN9BjiyPwiFGvhWyWpTar8Vj0L+GcYbAG6ilOHLSvo8qRUJbE9S5R5to/D
	 i6p3Aht5PxM7f3m8+T71KN2BeEtU0a7pCe6vtYj8QxjRLkmyMd2NOeiITJ5GdRnHQS
	 a62zPx+MRrE/19EUlCRXtyoJ8XZ7ZS3W3WiGR1J3MMe3a4XylX5T+Np1m3pXKt3gTg
	 6qKUDItsVw3svAuo/90AKH8J/l0BzR/ycLUW2mioCAZYpj2CpI+thL7rn0SB8mHbqv
	 e2cnZu2tDYyTUdVhGPhlAXjZLbz36WkuEelGHjYuQWEy9spAQONPXdr/7+FlnC07wt
	 Mx48y/R7X/K/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84A7D5C0C9
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176594783365.15785.10233838693927558041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0902ead0a3366def396f02144e6b552d87c6e322fc2a1b6b733b415b5587f2eb
Date: Wed, 17 Dec 2025 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765947833
