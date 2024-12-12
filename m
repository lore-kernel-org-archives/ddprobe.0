Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A1813C9DE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734000355; cv=none; b=RiW73cad8c/Y0m8XJR/zImN3ASxa6Bhy4+fvJQcungsp2uUaDZ7rSwhKRfAGzzULGlXKC3zTEzpl8oidOXAYaKH0VQt9DgrEO02QbhIQ0NdNkuXrQjE8O6KM6y9u5VXPgLmlWqHW7HigC8hsSh9yb6F8stJM8/H5RjWPg/TFDdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734000355; c=relaxed/simple;
	bh=aGP9Ol4ZVhmhf0qK2nwVgNpcKX1WD4pzaHPbGvanSRw=;
	h=To:Subject:From:Message-Id:Date; b=EwJX0b9UtUjH1jHuZpt88w21pcXbY4ahe4wRp8yeWevkDCs+kfmZDhDN7gMWTTFUpSUmdLecaUoGqe0yTwmnWUVg5hi4G7bzGqT07cGe6tGKMoTSHePeaYAI4I4Iv37Yj2Kbf+SQbSeGJ+sqwAbQEP736ak3ZgupnQtutdbyt6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IECopaIq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IECopaIq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF48C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734000353;
	bh=aGP9Ol4ZVhmhf0qK2nwVgNpcKX1WD4pzaHPbGvanSRw=;
	h=To:Subject:From:Date:From;
	b=IECopaIqy39IPq46loxVequIOdwxbqEcaG1dTNS9cvTBh6wP9nLJ/qxxpT51r+/5u
	 Kv8sZPhIs7YqoBdin3BfAXgGgR3VPCf7s1ia7wVxsQrUtpCTdIO+pu7fC5MTJPtPu3
	 KtBhz3eenRR6kc4gbjSvi7cEW3xUdREmdarrrVZKlaNzHjOUfSbJLiSFc/kZgFQfxu
	 Q+QQabYUQONfprdRDU6552w+WoADV1D0DmplfNvoexop/rYRSz1euJu7Fbi6NqiKQX
	 wl4M+DE9hrI97xEyz/Kd8EUh3naU8TQxdfO/8C65UQox3B7wn66RzPnqz2ffh0ITqB
	 uID7eWaVQacKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F8FE7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173400035361.23390.2548346257285901401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7af01355d901a6483e4aa0cb8088bbd40dc954958c09b1bb8cab8b7b1b9be6fc
Date: Thu, 12 Dec 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734000353
