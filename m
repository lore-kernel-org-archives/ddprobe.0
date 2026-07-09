Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495D228CF5D
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 03:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783566514; cv=none; b=ddNvr3Le5EXVTYN5OlvlVwa3P3pHAcSBnqiClwqaIHH/8Fyl6gLBZ5nuR/I/wTevQ0i7aw3OG00aSdKA0HoZmCZpSrXjmb6s+tg02FsQeJDOw9DvzKTrGzFWMz9DZ7vLbjzWQroVsIjXPAf3ro5GSvnL0KPfrpPpa2gh51xP5Ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783566514; c=relaxed/simple;
	bh=EcHdh1hjC24s+5HjCpV1BqNmCU0L72QyU0G7ccv30ig=;
	h=To:Subject:From:Message-Id:Date; b=i3A62lLxf9E9DnCYoihSmAFGiAuZUHoQGhYP6jdiAQ8RRN0gdHB3CFjIedQYwsCj4tSVuZjKYLXAWron0rh62TjpdvyzzZyHZVVumby1pnf/cs5sqv9GBIlrHoXN6SV+RoqGoh6VLaMG19rDat6ICk25+UqmGALm44uMfg4ZFo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZKfTY5G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZKfTY5G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF384C2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 03:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783566513;
	bh=EcHdh1hjC24s+5HjCpV1BqNmCU0L72QyU0G7ccv30ig=;
	h=To:Subject:From:Date:From;
	b=bZKfTY5G11OJeXFM0gTf4Sk/L/rStO79ZmuIqe8Jj16zzAqvIQJuZCenZSHIaP559
	 Djtl0ndTRzlKXghAAPF3zn2eRgbmcpYpxqp21hdPNEHgpsr4PvnWfB6kLTx3svdKep
	 ReHm5pGaM7fzPnLUvidt9Dp355ztyBqSWCrPzke460PkAAhtGmhl0UvMHLEv1GyckW
	 E6L/H4GR86s6DAVliXAaS3kuQ9w2Ei/hfjeEnBxycroAIFfNxPnREdQcuWw3IQL7N9
	 Icvq9KwxmoV10mbgVS6QHA8YVJy9KVpUKXCaHFsDwiOiTtNI69BFTcx54nirVzGqld
	 6muuzmADXFzDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9016C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 03:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178356651368.11589.3589099546072609835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd253a81aa8fe498402f4166e7ed3ae176e890954529475411dbbe73b57f5178
Date: Thu, 09 Jul 2026 03:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783566513
