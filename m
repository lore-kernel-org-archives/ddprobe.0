Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28AE2D2FA
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726536354; cv=none; b=f/IhTM9gx4+YhTgtfXCgAuIOPaWhgs3aMSuVJQACEwNw4txQ4R0KFPvWHpMKGOQ0ESbtRy5vjVcukNI+/LwGJwamwk7TPfQJqStFixIiY0ugCkW/8BJuND2kgy98E+dUoO4APpRiGbUiaK4SLWYtvHR3oNKUeQ1Sqs6y5iQjy6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726536354; c=relaxed/simple;
	bh=5ZgmPK5OehPkjLvKPC+MSNZH3bFqZI6SYpg57MWeB6M=;
	h=To:Subject:From:Message-Id:Date; b=MJdn+g+eRW6gWGqfVVHYHph4XdwV2ALTegVdvh+d9aQTaq3Cbm7QHsjGkgGVDtPksbPG2ImeTiQr3uCaaV6rSsmT07vZCm8wrXKw65ESsf8tXrZD0ER3RJqyhqgniYDeoBAkUaovobL/7xRUWpjkxFqEZ46+ieQyUEWYwhLBPq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eYsuXeSq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eYsuXeSq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1194C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726536353;
	bh=5ZgmPK5OehPkjLvKPC+MSNZH3bFqZI6SYpg57MWeB6M=;
	h=To:Subject:From:Date:From;
	b=eYsuXeSq74UjMOZS34ZIuYZehuMz/nls0aiWXHkbkW05uZHm5U5RDcA66yzNTob6Q
	 fHkpHXiOa3kS3ffpjmjbAzZnVmhwCCr6Hl0TVH2TrjrJXv0DQkmWofvjEAaadoaBil
	 pxUWvt1i/JmEpXMsfVg+XyLAiPNKmkuHL/RuU8uw11MzBdIB+UVmVHFPBHGKKmE1N3
	 jOVeAPtJq50e8sxjs0v8DfS/Ez6Uvpx71bEOBY++3lGwrqToahHygwAd2BdN1B7mBP
	 gRpy0wrh1xYifJRI7QeNu8IHemkLHGkN9Gljmc2kgiYdAwXuGcY3woi631inkR7KgQ
	 SuXYWP+N2nsxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C133C3ABB2
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172653635360.30912.12653668062008390009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 762ce82260c8ddb78e812e04ac5de9e7fa799c5596ac1ee5c57d97d1bae00c33
Date: Tue, 17 Sep 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726536353
