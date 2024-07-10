Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CA643C092
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 06:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720592783; cv=none; b=GRWTkrRmWhaRtqPotC/YD0WcUh/51KC0f6+X/T5SAcP6CTOVANDVjvVXIQCqknFjyF3wKME9B+9z+WWAE5KPi7Ae/kR5GB3bBJO3AsCKabqwvEF2HK1B34bSHiRdwF4hJUZqxbMGesCJnuJBk9d5l9ggQj061/55zbFMRE15DaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720592783; c=relaxed/simple;
	bh=EfhpUtmH+zlZDOEg+G7RnwgUD4ZZeICPC3UeMEvxod0=;
	h=To:Subject:From:Message-Id:Date; b=KIpUcodve0+zNIpBwTx+VNf2foeyZQ+B8XHXhGzwJgGizuFayjZmXmrJFSxnBrVsV2hcVML0RcU+ISCSKyp8dhrHRoMIsSOwka6KcBreDhMDGBKnx/ofatARbExE/WEmWc7mJdQGmqXWQ6K9uPObKodrG3ni+29bbvNVosJQQQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccpmF6MQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccpmF6MQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07799C32782
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 06:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720592783;
	bh=EfhpUtmH+zlZDOEg+G7RnwgUD4ZZeICPC3UeMEvxod0=;
	h=To:Subject:From:Date:From;
	b=ccpmF6MQDr6+KCEJOELKAdPBvf6v1E6i3IgCaU7trwvmeB/LpMfNmg32TFx8Jj1/B
	 jQLyjTAseogWUM5w29BB2Pl+hvcsVs8r/9L70le+KNuFbE1ukSDeqt7OPKQIAEHYPD
	 G9SE9UqLpoep9jIGBPvVppB17SM/f3Ql7DQHHDqunYIo1iijWDAwbeU6Ky/Rxnj0SE
	 A3KcT0Cv2/ZAUlCh169e1BGmEumv/5/F/XAf9pFf16sqT/2iNTTCTXNcZFQvdcTo1g
	 0QCt6obCV1c6cd3MrCgX3DdJkTUlLItkwUqB4RCBKhHpNATjXKV5QsmkxnnJpJWrAG
	 /GKuZAlDbJ8iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD175C3DA45
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 06:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172059278288.32034.5163050314872025745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a5a6d78c3c31e4293840b6b6b7a01963b92ff3f313a32fefa79b8202e135404
Date: Wed, 10 Jul 2024 06:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720592782
