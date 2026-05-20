Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1DE33263B
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779254434; cv=none; b=AlTsg6A1Ji9LTei8647sC4MzaSzIKypAvofwh2jPsIejTc5itXPBbA04FWxmNFkqqrsRJ5rxBTC53pyWofmipWvXoy7k4t8HwOEbkTPQvppAVrxnICtWJVbfB0elr6Ca4SJkFQGBjwDEeMeaErqZqRyveeaG0JRITAR/zDrZ830=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779254434; c=relaxed/simple;
	bh=x3/okpkWC5wE5whtk4t0no73zxJQtS0J0FZEEIlq4T4=;
	h=To:Subject:From:Message-Id:Date; b=FULo1Oq/nCCb3CWt476Qz2rgG6qcFEGUEtb1KQVTwpK3q1AI7DX+qbj9Jd2zmEuKm/rcrGHJ73hSE6mw9Orv3f8ft5S0pa98uRlb3DHeRC1UycL+K6TIws2ojdzwMKr4Rc93c600bcNvmv3XImxt4+miOuOmIlFB6wi2SW80WU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AFhH5ug0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AFhH5ug0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7905C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779254433;
	bh=x3/okpkWC5wE5whtk4t0no73zxJQtS0J0FZEEIlq4T4=;
	h=To:Subject:From:Date:From;
	b=AFhH5ug0hg0h7x0BMV/kJNJqocjJfR0mOjUGSD21012ahF6BrLm3JfQNmIJBoasUp
	 QDZfVuJOqRRIAJAQvmAZrCGefkev/nQIsAv+dwNEkFIpLvkjZOHgWHLNXeyi/y/t30
	 Mghd7IDX1LVCmK4X41zvVNiHZx81kkICIOF+xzEmrn1iQkkNvuNn6KnWuZHwip+AHx
	 8SD7EyrTsj/Yvcm6BiuMKeYxeqIBm8ATZoAymhD7mKqTT99hBXVOgxabgCrpUAlbvm
	 7HYKGui6IsJ5JhQen4pWVdIwfaJ983VEFO0QZ7pO0is8fLpRdVZuTtIGOE6wf9gCZI
	 SBW5quYEb+Xog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC82CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177925443370.18372.12061321421140742069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00bbc03fa81dc9f1a88951d55b409b89a746afefa4b942190b68f157804b114e
Date: Wed, 20 May 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779254433
