Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366EC5228
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746959994; cv=none; b=ExDI8SaI2bYq/pcaU064cCZ63++jnpNGHTe7u1sH/Dt87x1JoZir4VY41KdRD+LstL56gBs0tQxtWDQJM3YVC1epPaUQ8WUquHyFKg9n4/EgT4eABjxcF9XrfAiwJlFm8SwFwliVG1jWzxXd10FImxvkIGEhX6KmFYyuJzkNK2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746959994; c=relaxed/simple;
	bh=qimu3UzNz04ndIBbFk1rvJL9K2WVYNs41sUqB9Ee2YI=;
	h=To:Subject:From:Message-Id:Date; b=LgdH6xi2KXFSN7K/2oiNOVGuahhcWLv8LI7HG7c748uPMIosZpGhWU35Kx8JFlSFVkpeo3w28A3OBzQIcBJSrd+PeT+bBGrBS+Sfg6h+hkqJDEwOEhhLBZm/FGn6d2+Fb7BVeWVoQ5ypHAfNr4NO1uSH1P4G43VdNvlKl0M1mLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MvJny9le; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MvJny9le"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44D8C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746959993;
	bh=qimu3UzNz04ndIBbFk1rvJL9K2WVYNs41sUqB9Ee2YI=;
	h=To:Subject:From:Date:From;
	b=MvJny9lecrLwNtIZX5FEqewnGCCZjNTcmH963IPnpOmUvyErl4VBx1KR8GJuhxyrF
	 yTbd0mxTN8mIGIXeUU2oGDnZhQ0uth/jpdkUskmAL1LBL2zzMf0WT/rYJYJEQfd5JU
	 36k7VQascqXyNVMGF73cfUgXcbXw3Sf/AJll9KBxqqNujbyRXcatRtCHU7+uQDagjZ
	 m136SmbiLxJqC5HtqpEnXXR/5lzyeN8jM7j6leiwRfRaBFWmOoURd8sXh/V9ppF6YM
	 AklP9g7jCC/ElvJ2SLBab4enBuXSURdCv1Qa28U1U/H81sw6/7RFRuGg+6zbrkU5iL
	 zIUZ2CznqzS8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E43FC3ABC5
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174695999357.16624.3419960585156566551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9b91be53f62284deff5bf2b0629de802fb464cfdc2d67acaf235a0576c5fe9d
Date: Sun, 11 May 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746959993
