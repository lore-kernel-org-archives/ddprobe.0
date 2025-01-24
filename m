Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3A7470815
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737716753; cv=none; b=K5dzI785mkH4vfyGQSb6Bubw6/X7GacRxRbnJKYSLxLQcE2CJd9MVVXVjMc0IgwOSmheyM82/lKdwmcl3nkTmTr2aWZaaV8C+j0t9mLxG0PbvFW/a5P/9rxcBnaUJ0R46qnnOUGIkP6dbvqV/dzB4JU0UkRe3Pn4apihLSGQDZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737716753; c=relaxed/simple;
	bh=xqdQluBtWYS3Oei1DeToXrPzsfvlE6rgNNZemGbFvYY=;
	h=To:Subject:From:Message-Id:Date; b=FKtZKnviZzgzXpr+MxVCC1ULTXGQQtb91ypLGLty3UWlB7vBZfB3Jd9RtCKp9n7HN3Shwo/XbGZyCJ/anU/Nf0nxvG8tAA3lK+LXwsVjGVY7nW2h7Fx39D6p019FqgF58n5zuPGJXoLs8+swbbEKqGmsoVj78NiqToKS4XjErgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7uBDx83; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7uBDx83"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB85CC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737716753;
	bh=xqdQluBtWYS3Oei1DeToXrPzsfvlE6rgNNZemGbFvYY=;
	h=To:Subject:From:Date:From;
	b=X7uBDx83ApWCL00/no5Vah2uC4LzzgyCx1TGuA/pDezhXHF7UPVeJ4bsJLlToB7PG
	 8QbrkuNBflfxniuZ0hRaVILW3rTzCt/xSPyguVFHMWyAFkAV6pSKQ+LYeDnkhkSbs1
	 cBkDtJz6vewd7KoXWzea5bISfzCAR/eT4KKhutg5uGgnJOeIauWXM+S4NsPiHpiWrQ
	 GYLR1hui/jKx7BV9S8UO7XmQlEFYeCv38gPcR3d4mVKvTuaEjQbMJoPy0/mRyPp8NE
	 IxdgQgTqdUCXVp9udLmWatVDd27x7IM7Tq+H70uWes2GstWBXP/BHK8TUNaeWSzI7/
	 Z2fEK6fY7Dt4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959B9C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173771675360.6457.18351867655814685758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f495aef6455faba32f0c5bbfca6f582d0df691819c121a292c9baf0e27f810a
Date: Fri, 24 Jan 2025 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737716753
