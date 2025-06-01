Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4367DDF58
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748774994; cv=none; b=SJx2RHjqwz00QBYpKoKQ91KnOJlhavc1zq7aFf4T3TukMkdB4eQJ24B7v+4b3XSDXk9InryrAwVwibf7JXypLp9f+uG+jQyduioUY2igh7n+FFJwIhK0hz7SQUFBWePxKVhCAvkR0rXvUBIEeAu+ulEJqVO9TKWa/68BGDoIknI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748774994; c=relaxed/simple;
	bh=2xaBSOWvhFRuuj+41wcZ4OoOz38UwreIB+fNcQJY7TU=;
	h=To:Subject:From:Message-Id:Date; b=uwCOQYowprFT2+maF5WCF5BY9UspKgPX/N8RqNaW0886gg2tJUTMGiQE0eF3h8kK1uzlMbp9OPC/brX+JFTQWZ6ndM8EHFhLvVpho1H5I8tFzDLJWH96pMi11XYWdsAWi2R5Es5UhUxNUf6LFdl9onG/GaY/F1u0sjcMYUa7q5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AfNG56Qm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AfNG56Qm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C65C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748774993;
	bh=2xaBSOWvhFRuuj+41wcZ4OoOz38UwreIB+fNcQJY7TU=;
	h=To:Subject:From:Date:From;
	b=AfNG56Qmp2w/eq+t+BcgT51jw75/kmUKt83cCWSzSGo6sJfgw6ypl9KRaZ1nDaUs1
	 8a4+iq/G4t2arUVLoRFj+9cdQwdCunZnJRUBsWfvWWuBPoft9/5hzx0x1fiYqYzUMH
	 agnMJ+YjZKoWhze5PsT4wmL0SCVGObrB320hjzYj9By9kiLXo8qpsFXBTXoyc85u5T
	 s3b1BbRZenOR9/bIFVGzb+0/jF0tcw/adwNvAt95Yi6sj+5j8v0iRyrwBy7TbJ66wk
	 t0htvo7X4L0PGpJIeXf3sAKY85qALVERrLYVdXUlKq9n/aHLQSlQVKWBmBcCsmiw+C
	 blvQEEnPffZxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AC7C5B549
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174877499358.11166.6566259795337134736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 203075e9ffbd1ca89e0840051174371327c34717a3bae941b2bbfe3fa4be86ff
Date: Sun, 01 Jun 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748774993
