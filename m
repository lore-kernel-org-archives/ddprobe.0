Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23617271478
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754397594; cv=none; b=hA2h8w/1rDxo134kKILZhMCs60Sjwk/Q9CYWjmd53O/ggAFzkAPYuQr0Hx15nm80VTIG9ar9ZmcXE2gTWitAKckxBmyMJA9POpdVaUUVZ/qK/BDiclZ54GgUvhhBAn4hEzGFfHRYdlTtzDkc+K0+YKlDY9M3kah0lr6sZoJu3ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754397594; c=relaxed/simple;
	bh=CQWO3JlngmHPRCEl91Z0hwa9T5+/A9hEBgNxTXmbKiA=;
	h=To:Subject:From:Message-Id:Date; b=Zs5Tzfna/Izb0EyOl+fw9nq2HALMFuQxmkiosrYh4YW82/7GdDyZZFJcpSRNEAZ4ioOKJ139dYxS/ApJ9LH0o0HjWUvm6f+L+ul4hvxVsNMjAnj9a+vwtHrNo4yJ7Dwn0p0N7H9f01u5yIw6xV0LMinLC7vfKNGZI8RzDIIZuJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhaFRj0X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhaFRj0X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BA5C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754397593;
	bh=CQWO3JlngmHPRCEl91Z0hwa9T5+/A9hEBgNxTXmbKiA=;
	h=To:Subject:From:Date:From;
	b=dhaFRj0X7/7W4yrGf6duVqXSSXcV9t8AWHGLks5e0MU9RxG8UXP2VOpmFNYisoIYW
	 GypuIo5iF44bPasx6F/IU+eSl8Q+ActafkuyHfwqgOUaDM5g6i4dIIDUNOFVuiguR0
	 5sPZyTMljuNfOsm7A7Vtzav96p5706+t+KIagTD+SEQb6M2diFtf5juviN761rQDjl
	 BAyuepQ4afURHIfwRIZXEqvoG0F4Q5Fn553KLwL7W5TraDW8bxLAV+8umxX0Ro/Cm3
	 xBKgdiXzyoaxVJMsegJu71vvQUAz5HShqrqVCsATC6wOym1c5PFPAmNYbBK/yvwkRo
	 YKFJlROKZ9wQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EF4C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175439759358.21484.7798453732504772873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18a0248ba5a7b4724c6f5efad3d8b4ec2774773832192cc59f396859772f1670
Date: Tue, 05 Aug 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754397593
