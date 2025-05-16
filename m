Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37277481C4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747373395; cv=none; b=DsqDAZer1eqnYZg4vLhipobUPYT7yVIEteo8zExKz5xGv1AOmv3eOeo7lQy7QfPRiJP1OKS6EdIGbDZ67K249JMwO/fiYT4CvmILaCjYORHfJHHbUDk8RiVqoEgwD5m2dl7csZ+LXmHecJucl93fMtlC8KQB2OVuOyrn/QZAyVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747373395; c=relaxed/simple;
	bh=1J3tZJ5sIrjTaatUJq76o8Wk78Xy29xzN1wpxxegB0Y=;
	h=To:Subject:From:Message-Id:Date; b=QO54iJtEbxcCdfSvenweIngpE3iPXj8ywhSkiQUoqOyThg9nCblBva5Qrx3LHZ+d8kQBFggHUPb5Ml0rlqI8g4QkSB3DC5EaQuPLtRoAldcrVEfN9t9fzalzeLU3tGpfr1fE4viOaYPlKMukWndxbB0aq0fGY8DYjzbsQBcTe30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJ9NgY9m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJ9NgY9m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CB6C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747373393;
	bh=1J3tZJ5sIrjTaatUJq76o8Wk78Xy29xzN1wpxxegB0Y=;
	h=To:Subject:From:Date:From;
	b=NJ9NgY9mlm76wfeWhgXQ4kzyW4LZXlkFvImejxCVhUCYrffjtwuGwSq98iFbN99Lo
	 K5oLX3NaXnDOuc7Qkb7lL0hTbJOZH/ciZbY2oKcFJPQbu8Wxvnb8Ib6VNtmELVOJep
	 QKno0gS+PVD9LPHYBOi80/IEPFxEqivQ9mcs2eBxRN9d+pDxZJaiO+GyVMJQ5wy4oN
	 KL2pROUtbwiYXEUL44HNH9pSiGEiLU4/udXnG444ppzeOUJ5ZE9QrmHiliuBjkxxeK
	 eMmaTKJkNHkMM75TMzVAl6diA9omO3/5+E9R3bjnr9jaWm9k8VEf/sYy0GQSr19v71
	 +cIyCcsyjViDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9B6C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174737339357.32570.566092622661240152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f6f26bfb6c43c55b55f16ce892f37fc697e43ef58f22f6514fe625978a28ce4
Date: Fri, 16 May 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747373393
