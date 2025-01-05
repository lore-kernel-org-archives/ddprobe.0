Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5134F143C7E
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736117154; cv=none; b=b/Qmz+WsIb929cKLm01GiNxxukIbywRRNrk9zR4yEhUtoN6pbO1UXJushD1+cAXsAngEndPhlpxNhzOm3EJ5ZPOPia0MTfBHve6KKpUYiqgH0PwM7FQVLWWcmnrPAJjPjPIvPY7N/OAVmcqbGDS71DvaC7bmL1nSVU475kXRl5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736117154; c=relaxed/simple;
	bh=xri/SiXvSd179As3zKPaXsYPpUdtQ6jma/mzCn4URnE=;
	h=To:Subject:From:Message-Id:Date; b=gfdqSSgQfiL6/2/eEDuD2R2T/koP22dh0xi42XwwsuYuZ9eIl5cLozfX1VDMCCRfVpqjVeAh1BeChGsl3yTNJbSTZ7RKAUvqdb/hbNozctykr4Nf8W4EJK0r1BB7zcAPk097YODWDGCJ4mm/Q3vregt5LuN0C5vyj6EqNnThRkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3Hrn6lz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3Hrn6lz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F9FC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736117153;
	bh=xri/SiXvSd179As3zKPaXsYPpUdtQ6jma/mzCn4URnE=;
	h=To:Subject:From:Date:From;
	b=c3Hrn6lziFWvGL57OrqdZOrX87vEDg1FCZE00NiOMRhpK561Wk+Il2wXpydEi6dyM
	 8CAeHN21NPCmO+WEafqhpthAeIs5w28ViiDQlvV5uceDPjebTcF/J/KhCKDD2byif6
	 lZEbyamKyJds/eFQDDDTUWqtzJTFqV6D04MgC0BKMU0J5z3Tf+7bYM1XMN3pzbkbBZ
	 UTWx5ilk+maxPXYgWcpXi86/9xUw0olgnzajoQ+xauaqSAcJjYNJNEI2DxBCbanRew
	 U8Mq25c424uuZtH/GAYazFUVoowiPfi9wSM0bXpqKIa130bO3OAQnKLDBi3qSi+aN2
	 0NRxZeIVVQ6aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC02FE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173611715369.8330.9329716879708331490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef53b255e8a3e3c0267502f152a076fbfdaa785ee501800cf48a00782b126ea5
Date: Sun, 05 Jan 2025 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736117153
