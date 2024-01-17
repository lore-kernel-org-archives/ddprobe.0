Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0915C1C2AE
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705501697; cv=none; b=edv9u6xbmKoC5qhfRqcGSn1ou/Z4dWf2CSAuM5HWoKGFsf/1gz0BEWIOuwmEk8dnWX6zfEktx80yYq/qh6fBgqybeLCAzxWegcQxAjmNQIzRXzQbndg7cKUZXHLRBbehT51oks340C83DyLLeZ1mejnvluCHGRhG6XY6KHuMQaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705501697; c=relaxed/simple;
	bh=C1bhqM+zgHKaLyBKcxDSmtoWD08Y7ttp6XlUMBlCBU8=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=BcvLQkuWlTjQTrL/KS7tEIZ6Qa37FMhwM1c0JhNwTg+E9U3FWkWwkTjfos2H8vtXmZ//2H1iEBOIb2xVEyjETw5vyIz1dx+KLPVSq2MdeyOA0nm31r6+Ds5wSr3n7WHxKWh9Iu+RZrw7C8uq3s+7valOBEMx6hh3Fn6p/EPk6wQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WcORBwps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WcORBwps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C712C433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705501696;
	bh=C1bhqM+zgHKaLyBKcxDSmtoWD08Y7ttp6XlUMBlCBU8=;
	h=To:Subject:From:Date:From;
	b=WcORBwpsAYWyEoXkBtdn4medEn+8G26HFXOr0N+oVYp6ModZnY8p6pepvxSBzCXi8
	 0k27mEBXyGdbMWNw/u9nILY0v/ZvJWyTaMivvCVkqXCbTbvPWCt+iqvI+eyqRoojWI
	 M9Z37qNTSFf8c/a3n2qKP1pUf42baRiQXtoSP8iLe51h0t0B6Fkfs/w47g8RdWtLCm
	 1WtuSU9qcV+EpkEAwVlHF0nA05v4xIBFjkbWunhRqyClKZGXPKgXHbJkkEsIe3OaX7
	 9+70rKiWIWwBpelS6DD3QQ32ZJ9supjWX1BTWUKZqQhuJ/JA2iHCjAtk9XdkBgDDHQ
	 J9spkTGuPA2Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60342C47DAF
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170550169638.20100.13887678174079343178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdeb3e2c1897e552bd6aca1f804c08ad4741689f2d3032dd4d891d899122db96
Date: Wed, 17 Jan 2024 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705501696
