Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CE713AF2
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746515394; cv=none; b=ZiqAJBZ/0PJ3qeea7EPnX0SH2mcEBI3TEIra2xIBM8KIZ3BsAaVoxsHiQGdSZPSYZg373uzmakwtRtI/0yly8LMTEyyzUO4EUhrMFopcgBhsLFfp+EezyB7WwmCq6om0IIv/hrEVR+HSKtrs+anUAnKti+AlWQ7pt5B9Ot/eiA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746515394; c=relaxed/simple;
	bh=2viSqQ4NXKzk/6yFtIRV+CKqi103MExr+4TV4y4uDZo=;
	h=To:Subject:From:Message-Id:Date; b=sIE3OuRAw2HOs/zjowP+GGl1UhBRKi1HLnhXY4NdQcPvqXghl1aTDpSs31ZzQWN2+ijGIz/aNQ6h6+bieu08nvKuG+N3qH+yEtxK0xPcWmeQJTYE87tsi913JTvsTnA8pNwH2rBkL4UoCm9d4Cfz5ullFuURqXXqHzyx88cDRdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EEcQvhzP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EEcQvhzP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDC8C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746515393;
	bh=2viSqQ4NXKzk/6yFtIRV+CKqi103MExr+4TV4y4uDZo=;
	h=To:Subject:From:Date:From;
	b=EEcQvhzPOlLcQK7pnacxkiiyGDpfdmTH4YaSYSUaINqH5GsPgzgFvG6K6INhTY46O
	 HytAzkKJuRYPWdX0oBkEJSVVlMWBmXaW6iZ8CHGGzfpfU/cMumkY9e8MMfADq8Uc3W
	 Li5vAjOtJBt1IoMS1Wji4US+o1XgW7hBdhmwU6qbQgvPQfRGp2QjL/YtFouQ6Cal7V
	 mq5jGblLlDcfwuZ2oN+Y6MEodDuHBZzmCvcnV7EaDVtIwtJJzuVj4sVXwp0iTGyDNJ
	 /26jC8kckNavhHQjUl5MLMmZqEUhUQpBasJ1YGaFvQjefF16TPH2KwzMemaopZhckQ
	 7z9hV0omF0NSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908ABC3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174651539358.13100.16791356384619306739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef3415b7b8f33cf73af4b1a05e359fa354abdf1799362195bb503bb63841a741
Date: Tue, 06 May 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746515393
