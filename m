Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B682D3ECF
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 21:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782854314; cv=none; b=l/3/UTp6ePOk0a0EPi/J5PzErKx5FphTFKproP0wtUTrCiNPS/qj63KCfJsr7CJxw3hgnyW3f0JSqwpdjTnfDxl5tjnAbX0gsdLQfoZRy0uVYvyAolzxya6Cx+D9StcwQwheNSZCQ6LCBay4NbBR0/tjUhYQyGRaz6p80YUyws4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782854314; c=relaxed/simple;
	bh=XumSxQQAUQ6KXjnFKIBtoym2NTOwUPBFMRGiTMpzwiQ=;
	h=To:Subject:From:Message-Id:Date; b=rIcY/iybUeD9qpkZd/l7k7Kl4NObRsoN1wM44cwqeqWF88x722fnDw38b4/v+4CTOJRpTtlN5dSyaNmVEx8WzPQSM6KgsTZ08V3572uWM2lu9Yo3tIumbqR2OrtcFutS8v3n3B1maswNheZF6gpOf8YL3QDHWaankgrZlLrcKrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6+Plv5u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6+Plv5u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C64C4C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 21:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782854313;
	bh=XumSxQQAUQ6KXjnFKIBtoym2NTOwUPBFMRGiTMpzwiQ=;
	h=To:Subject:From:Date:From;
	b=R6+Plv5uh0tyYfp8DO0MnxCSdpw4AgO1hQJfMGj/N76Of72ecO65MxhYU4DNh8Gf4
	 fJy0PSWeYlxU6pEh1p3Pm/Pp1Hi0p32G0CSWbKzwpVw3XSIqa1HwkV+iudOr0RzM4t
	 BLlX/sQ0OQXW5RUK8yR0K2ioKaPQoM/yshjHpheNk+L/Ch+7qlib1lp4Gkwr68qZXf
	 FoAfpcKg+bTWJ2Am2TANECpF8eC2wTcWTCY5CZtebjQMAMeJEGtbee8N+ojZ7FlkP5
	 wGdlYAPjwbiF3ZUwCxp72y9rWL4xeLEKcUoH1bnYkkDrT7W+NAD61974zkrCuz1Ivn
	 oisiGcdvGEUaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC570C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 21:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178285431368.23085.16286879359288983105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18dbfcdc6c18d11b293ca860e58901aa6fd51e08ba0c95ba3c639ae9cf2cb158
Date: Tue, 30 Jun 2026 21:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782854313
