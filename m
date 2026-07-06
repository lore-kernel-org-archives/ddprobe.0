Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C48D3C4141
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 19:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783367914; cv=none; b=fZafgV58hGytB8l2HwKVEJp/GsZexYt7LKqVq+3fzRK8ABdEuYzVlHMGT7Q7/lvrCpRVXm0M8n1LB0ypwD5hOwQePZVCUg+Xe7UbZmEZZDuYUgXsEhkYtZGelTSrX8vMdi137MXXzv+UjDlfkg4rKwPFmM0ff0G8Y86+EorSFTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783367914; c=relaxed/simple;
	bh=FIMBQXqKk9CJ1teS1WoPZNZoiE/QlLFsQWwymISo5MA=;
	h=To:Subject:From:Message-Id:Date; b=Opfw7kizUrQsxCoNq7F7fgCd/3huIURCJdJIUVQjsEioWZLRbpBZnVMBdJgLSTkI4Qkcjo+KPG1APXIWy4hqWhF2njxMP/9CB2qauSHeKwgkIvShBXquY+jx/GEYPaRJRk25L7DMISvs7vYQRbgWxSqCSk2jKV7Ybg5/GlUdGTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nfdsGm8a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nfdsGm8a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12A4C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 19:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783367913;
	bh=FIMBQXqKk9CJ1teS1WoPZNZoiE/QlLFsQWwymISo5MA=;
	h=To:Subject:From:Date:From;
	b=nfdsGm8aBazNHqTkQV9nC1P+FSGimeOSamJuKBXL8SduGTngEupCcQdBbobBcF+z/
	 iQd/C6n2V3jUGp/8DhHZ8R4gBofzUkla3N/id4ryjahKFxZd5n+e05qe4XSLxpZV4G
	 3X/W3y9ODXtiJEwMqm9E9eEheSM7oH32AgYQYM2H4zAQItkJ3pmftc3Xyr9OkvaJak
	 a4PBOBuAuc0YMX1VFyjaHHS9a/9Hm1Bp7gK+QUomihZ4mXMCBy94xWh6Lo8g3x6DTO
	 m0rSYcEhWLMeer4JPFuX2RGs0yLko9aTpi/3ohsAwhZjRGUqb4n8oPYfDGYn88QHSV
	 lszmJIQBj8C/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC49C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 19:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178336791368.11639.585921077673223974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c2879936898791a9065b6cfd9827b74af3a66dcb2eb44b6fb1a7f9101e01328
Date: Mon, 06 Jul 2026 19:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783367913
