Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE0CE2CCC1
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747513793; cv=none; b=gvIBi07VmcMC5UzbOVoj5vDLEZJyNuwKHApjJXJnVl2dlXn1SumZ+sMe1iZaACvTEBaNL1KtW4Fwfz9EFU4KnP4yW++slCedunXX5+x9AMgPY+qYtNWWSgE2jx/IktbTltn8O+GGUfGZTE+s6El8YkTztoTezb7bq0bJVUxeds8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747513793; c=relaxed/simple;
	bh=BdB74XV870Mk+V5ogIAL6xAoUrbKo4Q1BHRM/Vw26EA=;
	h=To:Subject:From:Message-Id:Date; b=qXU8uoIcA7wwwb1Kh23UamzzrYxzU+LQUfViVrJk4p2j3qhnM5gi3pdgnoaHmL5zgmgXXCGV5HaKfsJ9RLXHAmtPwNLzLdoEpNEglqAkmLePxE3eDRa0RbpYwjeTBjtMNhG1hWf2VicskUSwmNnMsoPRLC7G1iiaACMzA91n0a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRTYNExQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRTYNExQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E97C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747513793;
	bh=BdB74XV870Mk+V5ogIAL6xAoUrbKo4Q1BHRM/Vw26EA=;
	h=To:Subject:From:Date:From;
	b=mRTYNExQ0TkIqa+QKmfWGJ4cTk/FBFs0oaA5drpECEdQzNwaCM/VTekbK6dSvsbs8
	 R8/RbVKFVKVrQwboZkO5KduvzZltwwbvJShzJtoBaHBF36fcOAux/TE8MvAOXN8mM8
	 Decik/HXqbzc9Wpflhviub+yZwMmPjZNv3ZBc4QvVyN86Qv4kSrKe0aZa4GeCh4J+g
	 7UQ3ggqBcv3uhKG+4jNRy9kuplIZHPdMwXrj/v+2bc6kuQRnMI/ie21GsqluTs3Hrp
	 QnlxwP74XpBo1Cs8V7UqfhtZDGRfCeYM2K8Yf2IEkFOxIghqRo5XiTXmi9wyQoiuET
	 LreQLJJ+eubIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F51C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174751379357.2197.3557317645664051644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a00a23e14b549dc9393292438d957e53ca1c4e2f3863bee8a2de30e460f2fb7
Date: Sat, 17 May 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747513793
