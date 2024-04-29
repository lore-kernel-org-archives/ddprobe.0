Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525C5D530
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 05:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714368143; cv=none; b=RZ9eAgSDRgOJuIcerNeIgGmiAO8m9OwdB3lVguqfv2dt0zSYNbp0i1jFXYIOyin00/MdDdym7GM9Pi0BvC2ySvmTUYUhriWpQhRcqBVwOLeZ2PhkIOW5mbIIb4cwTT0zEZJf1Pzqg0fQCSRus9afgxw5+KBVEedSIJk1mSbYkyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714368143; c=relaxed/simple;
	bh=g1IYjEVOV6wuKms72nNsii4F2gjm3ViqQxl6wBahZyY=;
	h=To:Subject:From:Message-Id:Date; b=QOrgroyqUfKfanB5MC4IgTRZomXnCUIgtbjpMNyYR9338QBMY6aMay4tFfrAz32RQkjvfJnuNx9WqQ/zu/zvm7++io88h5BeZQdsKmNyuFZ3JoTF0Ei+VKJ1CJt+OOmNEq7prycF5iPoMp/cn4bKqkYtK4mpcUPuz0GHv503fDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GpQ50OdA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GpQ50OdA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E16EAC113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 05:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714368142;
	bh=g1IYjEVOV6wuKms72nNsii4F2gjm3ViqQxl6wBahZyY=;
	h=To:Subject:From:Date:From;
	b=GpQ50OdAk9t/4ZxR4IKzuqFU8HsOGWuhcuMX0yquYyDI2Z8Md2zQm4d9v4Rw9Ke/H
	 LlNCpOGcuWbbji42SM7D8b4OGvaGGakxNrK8VTmWEsKL1Qqkp6NeYIERBCrsB5bSPh
	 Fhl5WU1skLYJ6TCt+uHUO9Nwkuzmn6Vimv18JcB4xpSFUC6AIzDyr4IUyZagFUwMfh
	 6q2eUd23HmVSYNZbCQraqCZ1sAVoCi1LlyRvh5vEtZ+ATVCl5PTHBhqb+ADxvYpqTl
	 hRuOx5ZB7wVp4R3EDSg1T7SDNY6t+n1MHemi7ffQz8a+DMvHBTvbpI7EiYJdXn+mrx
	 xSml18uirKBzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE513C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 05:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171436814281.5966.15646806847835336437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2da692f4fa052a2b556cbd767447c0a10c06b79fb91be2b50c138edd56bf0b19
Date: Mon, 29 Apr 2024 05:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714368142
