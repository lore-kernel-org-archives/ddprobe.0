Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259532248B3
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757471394; cv=none; b=Q6agMVGDTa60XRf1PCx5ytOBBELvRj+yxDDDGIyTDHReFN9H1wBPvK3wv/NH0eCKUHdLpe2a5JXtcXpbDuXKqQMAwpwBpePtp3NM1Bb5WqL+fWUNpKAMr9t003yrtkx7g6ReeUlY17pKBpBbOAYB6BjrGojj9RUgu+UYmF1BXrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757471394; c=relaxed/simple;
	bh=WOkUnemFQ5u1JC0GKpaR+RQm4qjuiQtYyD41EtT0DVg=;
	h=To:Subject:From:Message-Id:Date; b=UwmEqS12DnvqjITuSupjcaNsDKru+Ih7yNeOtOU45KTIumGbPRtTjzELvaUz2HvSRvX9NysT121dtNLt+lzMWm96eUdxrxsGBcPxeYp6JNVvQxSpziTtuUlbDg0MShEvQcdrFxqPoHKISTX5bJFxHLF9EMpjM70VSjF3oQxTxiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pQ6jRLUD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pQ6jRLUD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3371C4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757471393;
	bh=WOkUnemFQ5u1JC0GKpaR+RQm4qjuiQtYyD41EtT0DVg=;
	h=To:Subject:From:Date:From;
	b=pQ6jRLUDf/z/xNOpaVVHr6f907IFbZ3v5gCo6SUpo5g/alloqJ1mdoVtrlb5y/bc/
	 CZq6O6D8Wot5gZa+8CduuyunoulPbFvV5ALcFBUaIWZpWS9ajSDI3dwj8lwlGaMRYK
	 w87ASVJW7w87/AJ5ekhRYfkUV/F4Wqb23+aUMdiksAF9NtMKKnknXGJRhau2JwYjqQ
	 xpVF3Y+ReVHQuXlGGlwvA4MHj9YRhANZIrGG+2+y02wnnwCMcIaoVtcrw2v1dRzQ/g
	 W73SNQ+8gTDsBmDRG1B1GC/wtnpiBE/EVIaUk8xDQNpiBMIeQmsW8Hb1Tq8y7ABWAZ
	 GNpU/pOIjDABA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC89CAC582
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175747139358.16443.6390561941925145642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 401590d9b49771a7be90fb261de5a8a48c3a3d9e2452cfb655a3f2d326430cb3
Date: Wed, 10 Sep 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757471393
