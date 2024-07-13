Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8278518C08
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 05:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720847963; cv=none; b=nsNwaHAWf/9A7bqyfaM56x+Myo6xwoJbvi65Xi3D2A2JkfNnxjj4q44EzT7mn0F6Lx6/50wAQrSxJ7G1rer6h8FN32MhVAvBi6xk46qR/+3zOqRT9mUgi6VncNlO004TrjeQbBkyUsDS/+P4t/Hlu3lh2MEcsiyOhzP7yqZGxvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720847963; c=relaxed/simple;
	bh=Qqla9kPGi3Gq59xa00YXVs1mi+aUCCzXozKiVXxXSH0=;
	h=To:Subject:From:Message-Id:Date; b=t2fe6D/8nLVMaae9eqeLXGclj5maOiEdbE3zq1F8Ndjiw/HaI82Hej4rq+X0He47jpAfAPO8gSy7FasIhOcTJH+i756frN+bLRGDpW4C0CMVPi5wpIpn4P/ZficnsKEnG22P2i9025wERBeQb36V7pNGdinm6Dcc4NCY7mh5XVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5s3GVGv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5s3GVGv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A3B5C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 05:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720847963;
	bh=Qqla9kPGi3Gq59xa00YXVs1mi+aUCCzXozKiVXxXSH0=;
	h=To:Subject:From:Date:From;
	b=i5s3GVGvh/ZJEKmyDC+VY/F72DdSFVKWCEJay8fpiVXJ5TgmpNzzP68pkUpLpuEuP
	 T+kMgpNYNaPJ11i3Ej53qGI8dxeB8CUDO/1kfbXkoBKWtFQvIVXbMQd5wdwipAqCCL
	 fT05zUkK4/0aIlkVDkirsuiVaQ6vdAm+Hw8uco3VqpUjiXE6fvL6TBpegtLJwxIu0y
	 UynRfWYBKDFMCJZIsbBBd/E+fQmZPNobXTmDd6NMhCS8Q8oleMwsV7lH5CIMAV7J69
	 z375CsEh/FlVIA7QHFodemcMiDsemXB+APs9R7Xu56KZ9rgR1qdIILOE2sksaf+QBi
	 KgPcTeaeA/J6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3536C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 05:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172084796290.11325.1334366575126514654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eb510fda902dc147a59e4e0d74e367bc6d37f19574fdd55244642bda12fac14
Date: Sat, 13 Jul 2024 05:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720847962
