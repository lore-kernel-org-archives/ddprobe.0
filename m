Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85C093CDBD7
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790317234; cv=none; b=VnoOmNCzfbtS9o8TH/MriqvPr+4Ie+D9wllh/k0yRmfGTf7jP9ipABEIX0I/UjP37GYCWbOseYFFQo9+7qe9b59P0tOVoKmHFplffDlex2zVcTsT5oMCUzmNt/rZ8Ab+7WaTGJUxXZZmfh1urvYaRNIgQmtKnQ2sDhVYnKYhr3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790317234; c=relaxed/simple;
	bh=Aof/LVJLsOJ5RheY5zdtzSDdSdM/Zi5Igho5CyCwKAk=;
	h=To:Subject:From:Message-Id:Date; b=kROZcyYC2nSPojlKsbkeXQXHGWod98qqPRGw8mqNqfPAC9V+CZ1R707NKO0DUWMQWCOPUzqXGKOmSn04JHdqm369MeOuTrpylKLywmuSp2V8kSyV+P8bV4FAG2rJ2hX27x62qfaPSSxJl+vIsXWqxg8CzMS4xafuuERYJHyoSxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TkG9aeIJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TkG9aeIJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD95EC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790317233;
	bh=Aof/LVJLsOJ5RheY5zdtzSDdSdM/Zi5Igho5CyCwKAk=;
	h=To:Subject:From:Date:From;
	b=TkG9aeIJygFJx7UmWYky2IcVzTMOB2zJegqW7vqSdIFwI2taf6QhyqHsgXcED91UB
	 DAJlVuOb6gKGRDV/Dzo4req3zIvJlCSZI8uQrEVKd1pIz8P/lf0W0qyVhne7uzB6Bu
	 5j+Od50/MMmVkB6wLdBzj8i37eTArYLKSN9CZd+bPw7YwtXCybJaWPuVdi5h91uKoA
	 787gecJjK2i3Omc2X1s97vDCFAjFTulxH03Dz6ewB1MEejeCIj7YvLK3k3D6ptJ6kx
	 pZjsXg4nrP31h51T3p+6YR5KlH4+6yi6/KfIxKwxEjslepkAWB5OAUAKAvdMnGr9it
	 ffSPu/+3eciKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4ABC9830D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179031723369.17619.4584024065768916353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea06900d585750dfd34d37bf46ac840728a314c5c733d4132487791d4e6df8a0
Date: Fri, 25 Sep 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790317233
