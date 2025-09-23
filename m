Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE8E30DD0B
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758626994; cv=none; b=sE+UrUjhn4Dzhq+DPPM7qWZPiMEidVbE+pmhTmCk3zcHzaWISZpYYrmf3fnj8QjsTeWNL/8mdCw1I2UAXKKqqMiU28Hq4029wh54Owp8uKCGnz7HZTVG3Gb1Io2KOtn5u1F9B7H7ijNJmN88JPg691cgTLp6D2KRD1nVm581lNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758626994; c=relaxed/simple;
	bh=VFKmZ7cLerZQeIQ571rKWk7KjjKZnlpHsgmE6hzcsDc=;
	h=To:Subject:From:Message-Id:Date; b=QZjkRSizGU8S7vWadIxNxAbinBgISWajmf+rNdiTvLdJxYjXGYbltVU1pEJ2ds723+7S9FRnYOWbmiQagW4eNr01F22h+J+p8o08UwfZ0PqQr30S19JMebztq+RnAR9lMXRZw8SLn4RzjzNx+TNmJsd0s28JxwKA1hz9gNuXyH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQfQgZTf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQfQgZTf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3899C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758626993;
	bh=VFKmZ7cLerZQeIQ571rKWk7KjjKZnlpHsgmE6hzcsDc=;
	h=To:Subject:From:Date:From;
	b=AQfQgZTfbyT/2hf1Avjn3EZhUI2motLpS8m33ckCl64QV1dbub4kQfKv0IuXvVHB1
	 z2Qfih4t/mF+wW4IRBMQNcni6rsQjIOSh6eBC5nFipA3TbcoN8vIvOZbnmr1ayl53f
	 SeG1OCxBph0JE2t/unDukxL60IdsQvb8J7nq7lbyT216GKApmwsTSyNil83sMkvttT
	 ELTdUGUoE04TO9S/UP3PyAAmy+Io6ekcXCbtqTreDX39XGX7j7xKEaC5RGm4r59tfJ
	 gYotiwuNp2Cn/Xu7nQdrcd5tLHaB+paiOfoWXpKIa9xPmrCRVoZKlAESAEsW8rdtGK
	 7XZSgNE/oqyXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918F1CAC5B0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175862699358.12388.1045058473625616496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6542b402c2747ed75532a78370bbdcf92a0eb17639a40273f2489f049ae5a510
Date: Tue, 23 Sep 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758626993
