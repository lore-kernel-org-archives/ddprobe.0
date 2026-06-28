Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3360F3537FD
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 14:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782656314; cv=none; b=CtpgsEGqGJzCFnvG5bL2Wr75QtJiIe+RHujN6IGTJJjMe5ZkSkxYq6SitdS8zfugU809eoEhMantQot0EqpZ7ZSqyRb3aNpKQy4FV5/Ff8cXGM5rXr4uqR10c4tCEKZigvigkVpYf6B9bEWYdH3FP6Sy4CWnBYwWkKzkO5WOweQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782656314; c=relaxed/simple;
	bh=8ORfmjOFN7D1aAIqwSlydCx/KEAfvf0ZRfyU0rD99Bw=;
	h=To:Subject:From:Message-Id:Date; b=AsUKuJvfqTkj3erFPbvHYS05124tsrTO5t0ZHtcbjhkBU5N9sXP96RjiRZ8QWLu6nCl2XdmCO845B88TvDkrtpGFVmI9sEr5LCl398eiEc5D4B1ZOchldbipDjVCH9JnJLi6jli3tBoSjrE6UlBMs8tpIHUI/GvQF1J+LYpwyMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BmhtXkAY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BmhtXkAY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9DA3C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 14:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782656313;
	bh=8ORfmjOFN7D1aAIqwSlydCx/KEAfvf0ZRfyU0rD99Bw=;
	h=To:Subject:From:Date:From;
	b=BmhtXkAYPegjMQzk34iTTD78mRnCgdcSAZnwKePXylc9KdYAC+53lOvZ6EiTDtGcA
	 9MjKdErWd3bu8WMYkSO6HFXl+3xColNwJLL+Ydf45uECCbo68WEKW0XJI1wCVZLpCf
	 +HtjHv0IUilausrsSqLzWqiXp4EQfBTXaSZYG/7T0Q4rxKerNyIA+Osn7kDMkVeXib
	 opxECVNiwwvtzi+OnNASwxBRdcx2d9puH5ygk7vSEramR2tRqbV77HqZ39b28HAr0+
	 1vt/O6IH4xGfXPhvegFVKdbHAV8rbyuRoTFbuckuNfeo5geUPKpDkVOj6R6ZoCaz/X
	 JuRT7kLCtAvJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF15BC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 14:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178265631369.23352.7534879462350532294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 227df5f3ba2f839b75c6914f400332780f676ac7f8d91824a231d4915bb120c2
Date: Sun, 28 Jun 2026 14:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782656313
