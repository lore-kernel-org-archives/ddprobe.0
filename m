Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28149EACD
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750129794; cv=none; b=qSc5dtfitSvCM56IeRfug6ZrIYGsOz/TgSCsaKsP1NZJfiDAzu5CveJeydTr6Ym/1qS7NB0nXW2RgKt+RIwTWaQ5ptELbMfkeOerKcyE7pcpeIDY26tyu2v6+eqFKdVBTzPhX1x7t4tieg8mGe6EMIvig7ieRFMlAIztKOkHMss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750129794; c=relaxed/simple;
	bh=fTSwEvGEgMXWudmUocTMXXwp1t4IMsLuJ4iFHp3/pHk=;
	h=To:Subject:From:Message-Id:Date; b=M02+V2GTiX77Og0oq/HoHiEnLOkWlvo78JQKE4lfMCXKRjuke3wjPrfn6HIUmeDGVGz2QJc7m1gc/ArI41yp+tbqMva1cZt0ZTpJF1qPt8sbbIc0BIWbW1XgLIlF8CRtt7pHZv/6IFGCkp4aWYozKA9jizDFOjRBMgaCZ362cKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfNp98D8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfNp98D8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53B5C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750129793;
	bh=fTSwEvGEgMXWudmUocTMXXwp1t4IMsLuJ4iFHp3/pHk=;
	h=To:Subject:From:Date:From;
	b=sfNp98D8NQaUnnFstJ+Lp2dWZZPxjrqFMcLLnkvhSCaRg/HSXKxZm95bZIwtgjMw9
	 NFC5esxzE97xgcQXU52lT7y+OT3EVhFshl4vJAjK8FaD6RtUMjZXtmxwrtftwzAxj1
	 TWeKUQEgVsIRL+Kg3V2zwjclot7VsSSgN/cbMupb2XsXsMqPGx5sC6vLwJuENgDGS+
	 ++jzNIHArx9nWx6qTOK6MTUlwU0o/4QqI3iRl89nc/uaVPO3Hq9/FNEhBVDDuzIw4n
	 dBDBmk1qM02xsQ9Vb7c3zvNRXU9cQopZRyWo916+yxiB5r+BVEsWUGLBcBKSC22lDw
	 2dyXydmCAAnhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9063BC71159
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175012979358.17957.6863435902596716311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 361935dd952c905fef382db13dd10c4e578950c5ec615211fc433330b5811b4c
Date: Tue, 17 Jun 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750129793
