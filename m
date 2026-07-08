Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3443229405
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 04:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783483714; cv=none; b=DL3YOrhnHKSqGCswF2zINmdPCwTlKEJ+OEQS5Pqpu+ayu4yCJJVJlU5XZeI9D/UO+tVSzm0tb/52gV/G5slcG2joMEa6g9fI4QqSycyOT/Q35JNbZG1L29ZmGsxaG9R9DgGNAMhgLiqh0lG+KQraAZjMu8ut0GPuzlIXn8arryI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783483714; c=relaxed/simple;
	bh=ISpkIhDuWwjg8Ul4bNHZuFOjXhWZeVGP02efebuCJ38=;
	h=To:Subject:From:Message-Id:Date; b=HTEfCVtLJYaFA703faVT2XZzvmEaBsYlOrVqGAAbbCUZV4bQjzAFhPeSlcnLPdYcJ1XQ2//ergULGHtfl1QCYs4YQcr4/jH8EOnNYMQ6S4JZ9vYuujRmCz8qUqCgVO3Nt95eHcGQAymorEhqPzgHtK7WKwdcgoXcsFgRkm1gNvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTTCt9C2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTTCt9C2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5E6C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 04:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783483713;
	bh=ISpkIhDuWwjg8Ul4bNHZuFOjXhWZeVGP02efebuCJ38=;
	h=To:Subject:From:Date:From;
	b=tTTCt9C2G9jjsny1MKHK9L2qXsuA9rZZ3j6XDXL+0fEfCD1eMK2DdHvSatShN/krO
	 HS1Xd10kF03jaMOs5Bg/NwgaTr4yCtjS+Lym089gnd7E2dySk8O8UnIqyGpXxPNLyz
	 6NAcghh289dp85gzGwO89UcaoDnpmpNbMM7Cp5RhZOMEyQwCQS2AVs0Y6pRWNXO/RK
	 +7KB9U7sozD5n3wNcCSXMGxyHZrL61kni3iAMr0uR4uDFp2Gp3Q+HN68p61PKyuodw
	 JsP55ouJTkiSDeucnIo7Yfc/+dFNkQncU/726leBlLUahgsXVT1MV+Ivz017QuZlyd
	 93T3PWHsSATng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8716C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 04:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178348371368.6458.2346808392759782410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3d04aaf0620672326b4498553de6e800a9af6b2fd0494daa434c65f010c90ba
Date: Wed, 08 Jul 2026 04:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783483713
