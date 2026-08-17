Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249BE3A874B
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786956634; cv=none; b=tAbwoy2rirMdeK8nr8BGVXV3RNuDaCFqhKQOQtCc7QOACFzU0vjmkA4WMLyRrDtF6TRfqQ515zxe5jzzTOctR41FKVnWX4Bv+A/tvlKV10XarUyRrlmnExc3QPx31+nTK9tiaJ972ucAC+39YmPr8sUE4Mmt6w7QAEPY+hUYoog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786956634; c=relaxed/simple;
	bh=OR4aEoUX2pqHoIj6rGoIjaiHhMFnYPyEO/OxAPwm6hY=;
	h=To:Subject:From:Message-Id:Date; b=CI0f5/Zz8mEVmB+MEFf6TkHxJNm205WpLi3FHTuIGsHMtrGOGB6qAbtMKzewid87W1FueRcNJoqjjrlVLDqDNjxu5OsVCEYC3Eo63lT9IjzuIX0Zmq2klWtKvXL52hO3D53/C/7fIvc42R1R6iUKHHMZspKN9jZGnCcEEqzgWqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bnUGP5KY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bnUGP5KY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF76AC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786956633;
	bh=OR4aEoUX2pqHoIj6rGoIjaiHhMFnYPyEO/OxAPwm6hY=;
	h=To:Subject:From:Date:From;
	b=bnUGP5KYWOxUoCEj1DdbXc6cTHamixPV60Xw0CaNbUwuboUqdthdMbbRzxE1yz/z2
	 Ptr7SR5lNW4WGiQXaa/Qf90MRACjNDMu7W8atRjDjFc6aB8kJ+NuTybl8la6zLbwJY
	 kwsZlpUnXlKLvihHCHp49YmQp1YcBu6Yjr3y3jbTFVgJcwejAt1lU8MsedjDlScVMF
	 0DtzWBas/diGBcasIaOuvhkx27sFQwzsi0tvkfCNNWl6biQsRggpgAsFkqHHGK2HnR
	 sX8tWSofSO14nHb0yJjr7GlsoQJAz0icpCRyz3Ld3/Plnm29C8gICBFmQGwKXJi65O
	 wNK+5AWlMDa7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4E0C5DF70
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178695663369.9212.12657776162278862074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa06158732639ecdb4bcd7f512c4a1fcfc121397b624f0b308e860504f19992a
Date: Mon, 17 Aug 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786956633
