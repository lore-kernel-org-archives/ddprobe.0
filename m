Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2875E1FF1B5
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754509194; cv=none; b=fO2TOFPiT3t3b6VBvc+51D+Lbiwh83AlFF8fFZ+P1KSBj7os5CXlE5uepPz5NOqNhwaZE2Gp1SREaNm0olgPwI+xqkZk3PB0eLUNuqU1kFPFHiRI2whYNPrTEOwkJVUUDLvkor1ChDXm/3J2WlGniXuXwylvE/27S42OPcYUT+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754509194; c=relaxed/simple;
	bh=GotrpJDkhr/xOCq0NGi/36psPvK8vlIq4wjYGovlUU0=;
	h=To:Subject:From:Message-Id:Date; b=JKrzaEYWbDjinlsmLx3nQ9c2aDqejlx7zCjNv5WL+yeS6shO+UaIFGZc/0JPqYqzFJ4hTC1h9EoGVchBqNgbfP40Xcle9NOqvAggzY8bJcfF2K3JiOn9v6LaWvmxOtPO6KoP15sTnwdx4hv5EtVtNQxo9pQACguY4vQTnAF9jv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZ1/ppgR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZ1/ppgR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17B9C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754509193;
	bh=GotrpJDkhr/xOCq0NGi/36psPvK8vlIq4wjYGovlUU0=;
	h=To:Subject:From:Date:From;
	b=IZ1/ppgR6jVFRuVxn91CvJtOKnHv2CSM1JiX1V4pQECilLZLHGb8dSw1cj47iLkvi
	 uYQgWr2A+DZ25O1LEssBava7OnNTW2w3+YbCiRU2a7O1ZWfauvY1shSYlLq4n1kYNZ
	 TBBJ2vCrmTEYVJcF17dPLYA+HyAKCSnHCNc8ab1m4o6wID+qpzTtjs2T8z9TTQRCxa
	 8Tf5ooPeqoSKSxXkHGUeEOrSo06ypiBXMkavvdPcPmUmgFhCbJnTBBsMnQeoHlrwGp
	 5aFYX5Mu57YStOiu0sizZ+sa2BLLLMJb6W4mlw70L+FkWoQ2KakMdqL62M0t+VKoR9
	 QLuDvih3pzX3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9005FC87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175450919358.5157.5003209514915028454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abd6eb8bd995b7a5c0a174058847b2240ec91d9e904d8ec27f38939bf0b6c353
Date: Wed, 06 Aug 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754509193
