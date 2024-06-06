Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522C2199255
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 21:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717708043; cv=none; b=SVsP/6Fa7yyGZd5SR3zk7K2OLqrbuXxVZ2Rg+QvWLl5OY3SL0eC1BtALNsUv0Pn4lFvpzYWPk0ZcitnuPvszD4YIg8C73V6Y6FfUFyAjy9WebjRKMeNFT2dPxy/7qoVdjA789ODsOCR8a6jdtZuNFFpTIYzvw/8WR5GPFi5w8FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717708043; c=relaxed/simple;
	bh=eXjvOtqb05ckxw+gjDZ76Gny7bhIG8r5Zo5iVuHzNw4=;
	h=To:Subject:From:Message-Id:Date; b=UTNLasmLK6kpwvmXiRfPKN7rtocxXYBGwDovIyvxdgMHqPEFTBfyKLbivT4C9ohBJFhRga6srn3QkQFi4AzG4hlx7FrlGAJCA0h8RgsOlAT3v5vZwp0hJSZeDhuJ1XZlHar7j4f6vKQIpq2frS0k/kIrZlOyXsq97tUi4PiUxgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGnNiqxU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGnNiqxU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2ADDC3277B
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 21:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717708042;
	bh=eXjvOtqb05ckxw+gjDZ76Gny7bhIG8r5Zo5iVuHzNw4=;
	h=To:Subject:From:Date:From;
	b=YGnNiqxUblFg50EvFQoA3AvhB/SJ1KifJFUqytCebeHSZguFvzceOnux183C+RiAV
	 l4xWLPZhfo7IpL6ukEFqlxCVdAYzAPY1XLoZSY0FF//Dr5r13HdpUOZIrwhRhe2Lpe
	 bGuxI05V1zAPXBk5/0myCgCWk+hoZjFtsTxWmzt2VfJCeJmoPh1b55KyXlvnkiB13O
	 9+C2J6yZT4pHRGSPa6fs9I5e4mTVArvIBOK6rsCKkyf6v5JM27X6hX5m/lwwt9ZFRp
	 UN5bSpDa4E4j/Azp4n0j97jo7XM03Q5KH5p99lS6kcLIvpt4t5IrsW5oRFwMLjZLUF
	 RwHPAs4lD6Kkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFC96C27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 21:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171770804283.5015.3588454356201024605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23d6f1ac506c7931f964f3365620e336bcbdbef3a46883156f8f7d7fa2c72097
Date: Thu, 06 Jun 2024 21:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717708042
