Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A02219CC28
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771118094; cv=none; b=LUed/rBD3VVHF+QOAVxaDFvBOaaNAoTCkYM/nOhIVcMuyMcGohV4PChldXKyxEMPSQcg0MQ5Ye0/QNoajL2cqnzKEnPdpeARylLRuMycGlemN6l0FcEx/bcWzzFP8MqK6tycPhj8+p1Y7+/vz/9bTdFT0YZc1+qa0cJnhsKqtXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771118094; c=relaxed/simple;
	bh=Oq9y7WgY300w023hVx4e2YPiRzTciORdKHkJa0DI6+U=;
	h=To:Subject:From:Message-Id:Date; b=fhADx9V5LISDygYRRSQHQlFzVii/rY633RSKA4EKhUP7cB6tfO96268kXrj0H/aKmrMOzCvv/1WpB2YLAYBe3pak7rhVRSpudv74wxNrH5/0YupUSY1gInjF4wVgRAqIfq1ZUNW20gSwwCxM59qkUYvQdCpmX6ICRXBuAZxaC9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OlOlXfQ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OlOlXfQ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0180C16AAE
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771118093;
	bh=Oq9y7WgY300w023hVx4e2YPiRzTciORdKHkJa0DI6+U=;
	h=To:Subject:From:Date:From;
	b=OlOlXfQ9/UJ97E6OTQS8B05H0An6Id8CDqCXpry2+0uKLRKtBtGNP3y715QyG1MrM
	 EpXXSdk77WipvlYpJTKsUAqN8DibPkz5rgr6EHoDQdNdgB+3t7Lk42t18xPQssT20w
	 0ktqJBFBoY7B9IF9jfHeE8ulGTGMwMV++GicgGV/ovQi/gvG423cDCw0E770BZCWHh
	 q5cTMFXEQn4iHpdtQIQAtvJOYV2PNPpGgM9x9euLEPo6FchqR4TH4NKb2gWty6F/L9
	 tsbFwUiui/h4wMhnExTzx87OccXWda1X7frgbQz9SVGzBONDuj+Tb8LhvFqyyATX8W
	 ioQDb836S0Kjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD08EF585B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177111809363.15306.13682701963408781448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86d71db588674119a9421842b2091d9042cdc094102ce907e69bfc93bc07e181
Date: Sun, 15 Feb 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771118093
