Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A20C20ED
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750855194; cv=none; b=XJnCTPd22/CcWwpA4sR3DI5uUFvDhKz8kA2GaQXmy9WmW/2LjwCCZDiqVK6kb+Ro8VymLLMao6p35I87ptBe7xZhriQWFbEhiG6y9v8C3A+RhIsJQgeym7cjQoVLFR20YfRuziq7FXpA3qnDaDDQ71kUynv1wRvR60qqc35GF94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750855194; c=relaxed/simple;
	bh=ItFLbXPowpzAf1N7Vew/kgpVSKnkMA7tqUJHKJ8ZSss=;
	h=To:Subject:From:Message-Id:Date; b=V7lfYEgtzfAQi+wmlmgNaGeUGKnceKVHbq/NUHDMq5XpXCyEQWJB51nyFo3R9B9RRjJdXzbz/1G6zCmfJzya9auNRfdIZf0UboZoO9JTYY4rPIoUmPLUuLmDzQR38mudA8zKJx5jSE1vsokfJDrMfQjATwt4Mh2BOGLotLJazSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KfI9N0En; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KfI9N0En"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7164C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750855193;
	bh=ItFLbXPowpzAf1N7Vew/kgpVSKnkMA7tqUJHKJ8ZSss=;
	h=To:Subject:From:Date:From;
	b=KfI9N0EnRWf2fmgU3HIKMk3DtL3JUVrdTV1ttsTCETCWH2PcYN3LjYtkg0p0EtwSh
	 c9gpJYOABkCosTjEGmMPiGB/dbaTKty+Ve3QIIorMD2mtncsndlkA0bc309Oyje+Zq
	 D2YdMxrpiEfky+2S8rZgchylGOQcRBgd1lYwx5lX+a+6U+2PtixwKXzTmJVqFSYb8e
	 CiUbLSwR5ICqFWVMooyvOdqq80uM8UpmFsiVKipl/7iKe1T1p9dVl9YJ3WCnsT6SUP
	 46ZVti9VoGKWwzrm1Bp0T3lcvWlHrIiTUcKeC7rMBkBIH4zOB7zor83rdLTZcXrSr/
	 fTRuIFOWbQ5JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918F2C7EE30
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175085519358.23063.11182184178846310005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 728627eca159b52cbfb36b05a0050f7f7a6da70b622618eaf9e8404660daf2b3
Date: Wed, 25 Jun 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750855193
