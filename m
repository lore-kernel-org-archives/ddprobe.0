Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351F729AAF3
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 23:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776556054; cv=none; b=jdWEqOeLI4ehowE60IlNdRkVPfkorofkBzdryrrzWk/ZRDws/HVQ+mARmJhGT8S/vgI/x4pdELCH/e4xIEwA5ddxEmZdzFh5s0zVcVqHVJM7LzaGH0JsjgcH0Urq30N1k/55U40qxqDN3bKJbvsiJxg+nzTs0tdW/CAwc7v0ClM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776556054; c=relaxed/simple;
	bh=9GIj6FKWj8oMVuRSeoQTU24Gpbq5Q4NE+HsbpV5m8U4=;
	h=To:Subject:From:Message-Id:Date; b=TmIF9/Q8KadbyF+IiBTWQp4N7kI1+C4kUR/B/I8uiNWdSkaWW3vMDGHatdhb+UW9sT1MePJW9wDIHrfxlA2iZ8T1gqj/ePSYaPpiWoUAVCPi5w/Wvdj+00hmZdg7UumhkxByeZxTFsLsnTlxa7zBebP58fi1yskAbJiKmUmTbLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6r/y8E3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6r/y8E3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4BCCC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 23:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776556053;
	bh=9GIj6FKWj8oMVuRSeoQTU24Gpbq5Q4NE+HsbpV5m8U4=;
	h=To:Subject:From:Date:From;
	b=X6r/y8E3yPArRuOk19+3HBewun6ifQt+3L7nyvJA2RDftj4Jz+UhUNIgfSa1zDrlZ
	 AmsGVpaAix425r2BsNJgpT5Ggu2Bj9Cw03bFFE/BhXqY8qfpDYzlIvu64GkhAZWr1X
	 Jt8nFWL7AznI21FoquNksZZnq8Yj7tFMHmPMf3SyvPoD46Jt10WEJCdQfHEkGQV0L1
	 r6GdX5YKjsHtYD32lAmVLrsEOv6CP/jsWyiU9Uqui1MyC3kyj5WvCLHIpc38xNEAvf
	 w1JOUiibzyiccAIhVPGbRjAJpylCrxV3ziB/7VTt2NQVN92OvAi9uzB4EGsjcPva8N
	 pJVA7Nty1otcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1465F99C95
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 23:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177655605368.8211.3750190582109085704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97adc1716a8f4d4e80db404d7b28b65eb21120765a981f20e3fd7865408fd65a
Date: Sat, 18 Apr 2026 23:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776556053
