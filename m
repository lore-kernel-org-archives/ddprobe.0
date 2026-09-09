Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AAFB27280A
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788961834; cv=none; b=OaMrrqJVXBoUEo5YlnTO1sgWMRYEDJM9arhdzUKri0ScmXlWoWT0m907ETWC0BleAht1l0w0zXVjkWLTsdV0+kxWC0xNsKKaZNUwvZSnMJ8NW+7HuTDml6cE5oohvf7VeZEEl0SGmElRKlcn1ry39p6j2NZPm8LT2jS5psK6gcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788961834; c=relaxed/simple;
	bh=PmZePcWkwbVwR3GdKJPpR0BV7VoFhB8/XVFj7DyCc7w=;
	h=To:Subject:From:Message-Id:Date; b=svBYnfqZu3ER7dS4pwgVkuwqGltqvyrOYTsncDgnu3+iGjD37ywZTwKYN2cJ+UD87lKY9rG7zQpi3+0IDc2ooan05OzyarCuZkvC9zK7yAZDQUSacO9dpErcIpBxxK6eB2ZMIdzS6CM1USYvBxJUa975cqEN8dybx7MM9dKXx0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=thIr0/LL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="thIr0/LL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2573C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788961833;
	bh=PmZePcWkwbVwR3GdKJPpR0BV7VoFhB8/XVFj7DyCc7w=;
	h=To:Subject:From:Date:From;
	b=thIr0/LL9amUE/nIQwADTyv/BRcmSbOGrbQSC0jFN2mEPcFfsPItjH1MxEQOQpwKE
	 P0h94DCUuW6amX3ijwsBZ70+ipruccBgvbzH+UYUA2f3fXMzikHWRH/7fJPNLl2QQp
	 so+rlHNBQiWrPmTigGXX65Kfw19S9pmQgBDvK1ndVWC2YuT/kVoKQn/485W0ksqhim
	 QVCY80tENsMyj1XmOFmQQ08Xd9h8sLYQDAoykmez7+x1YQ7bt3q5Lt+OKNl4ZPH1I0
	 +7F64fgHlIqgjir7JLqt5H+zMYgi80+di1FGkNfj66OXNJ+N1DAMoMDpwWS1Zub/pk
	 CZNoBaSo4KYqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA43FC79FB7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178896183374.16599.5320485649753551886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a178ddb10cad918a0e05a7396945325766236795e119156383a96f5df287ecd5
Date: Wed, 09 Sep 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788961833
