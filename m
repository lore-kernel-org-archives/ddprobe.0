Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2A75472B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 00:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784422114; cv=none; b=u4NHuU29syE/+gkKvr9rKTfJKxpkBrKUFyW4qcOrd0jBZXDq3VBASraB3jBbYokGn4ADsOf3he7CDYRaM2CtjcLTZ1CxTHUIdyeA5EyHX+p9jBC19DDvroFyEZpnKAuScwZtRmu2qyPUT3jca+Evj0kabafznDDiYhfhRbLULwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784422114; c=relaxed/simple;
	bh=iXfIp0aRLm4Soyv0904CLOuIUVx1Un/L7kzQps2il6o=;
	h=To:Subject:From:Message-Id:Date; b=uwPKonJylEnkCx3NQZx1MMwafQgaF3C1tF7QU45SMgZmcV3WR09lXEbIiW5Q1FMGs2KZO7PTTAa/C9ObE5D4scUI1uBpGVKgpqTznY1Do+5KguP49oqJeDgBaIoulpnp/UpHnw3Sq+PVjIVDB8rjBh8WIaaZx6gZQr+fkuqbuy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F+rpZDvx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F+rpZDvx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE89C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 00:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784422113;
	bh=iXfIp0aRLm4Soyv0904CLOuIUVx1Un/L7kzQps2il6o=;
	h=To:Subject:From:Date:From;
	b=F+rpZDvxuhoijhAfYIy+Jfi4fg6MjMiDYTfTxK8/lPerhRAuabbXVCpIvbMonrIBE
	 WCcWTtDFPp7IwrkBhiZOcc/dQnuSCfGu7Q5aBTg3zytksTovm26HUqgfgiuJl5Z9dF
	 ml3KJBE7oocD4udtx1zDCoVGIjF5VPWUX+OLfJAe5vKpFpIoMuitBwhm+ml9tXVxDB
	 zuRX2tXYgVTSniVpPHrX/dhiRX7Rgu8j5a+bIQQZMPIrFsmma9ns/cIvNIbLOK8Q82
	 zlQgT/G2gW9BXSRkSJENjjhfKLZwZDmP7os5KdcfoEaDI1uznv0yGswEn7DbEvKO8G
	 onhF7f/C4S8wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0F8C44521
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 00:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178442211368.557.2561215394275528898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5979baff1efe12b3be4bec63a7732710da5841116b38556de594b842426c9e8d
Date: Sun, 19 Jul 2026 00:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784422113
