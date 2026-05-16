Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332E9231A41
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 22:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778971834; cv=none; b=oPziFu+5GraAgJIzS9jeE+ZszAOAB5FHpUesZeExNF84XKX4k8WKwp3UXCBV02sMmib7m4A2pufPOoqd8q1zuF0DKVdxNbONNrT2CxTH2UHO3iqGnbX46Ap1uF4rYsuOTItRB737ovd5CNicGQoK7VelXJPVfs7wh9mYQpLOJuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778971834; c=relaxed/simple;
	bh=GQzsVIOlc3ughUynW5ZlNPTgiJNwPKAKgrRsybfMZ8c=;
	h=To:Subject:From:Message-Id:Date; b=LWYcklmzp+smuKeOhYDQVhfD3Zwg48F6hS/czqa+I2xA9Djz/jNSuwWUbKMwULrU8m+sRZlSVYkDiKm73M9VXjxgfkQZgEugNzcCbR7IWucmsvqTSglUlYq8lVSYb2EgYTpWFvXfUYRCMYR7Mi2Yjk2JXb7XA5q8w0+d2/T8m3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZ3+Dwse; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZ3+Dwse"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC599C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778971833;
	bh=GQzsVIOlc3ughUynW5ZlNPTgiJNwPKAKgrRsybfMZ8c=;
	h=To:Subject:From:Date:From;
	b=ZZ3+DwseIR4fuqPIFM/T5HNdO035qdSVMUsHO4HEWmiViSLESymCXsRNUAu3lxssQ
	 6olMFFV+pF8b5yqlQ1fm3cww4j6PrWYdWJd2//foXm2bzROL9zfiKdmhbN1YFRt/GM
	 a+OMA/UxtSnT7KUl/QA/XUTw4yxff1Nfu3AWVIeAnoO1sHRB+NKoU9/3dxRR6jHX6g
	 JtJeIipBdt5S58tYO3tpju8fV9Zapa4l6yrsIXr7iCuF0sPpOO6tR+ljM2NlYPpozD
	 5wGPMqoEac4jN1eaYWsLfgL4M204etmCLNjh50cT23mGkRykIDgL99YLoQlCZaR7+j
	 CaUECQxBReJhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B62E5CD4F3C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177897183372.15968.12627966319708872105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 064069bb9629b101b711c3076027f38de143de4715a4fb6ad10aa72d07a5a986
Date: Sat, 16 May 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778971833
