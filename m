Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB0654652
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 17:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781976394; cv=none; b=E9CFQlazlge12cMQSsNT0N7aZpomWboczk8K0sloOgP6xvphiXKQn9JTvnK79taD8Q9De3DnLS6/wBww3mpWyqnW07Nd7LBVzwo9iqLFZ7fRuPoQ39l+uNz1w42GnGGfxjMI77PH8fs/9pu1Zs8wavd05HphFGIe62Kh7yrZFIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781976394; c=relaxed/simple;
	bh=oxHM6p8PgBO/3nbDiSStBX+nwV4wrTRmG+aBgrMdvgY=;
	h=To:Subject:From:Message-Id:Date; b=GgR3MBO+lOms+Bc4fjy48xRaQIA3YztpWkv8wYtTcuJvG8nmUApB9DZGTpBJ/wJOU4mdDKM3kbyHSgOw9GsYm66PzYjneJThrnfZyjtd927kd8ay0qdUXjtmX3wK38yI15DECRNxyyn53a3YoTosPKn3oYj+m4iBNvxtuE5y2+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bs36Qc01; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bs36Qc01"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC2D3C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 17:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781976393;
	bh=oxHM6p8PgBO/3nbDiSStBX+nwV4wrTRmG+aBgrMdvgY=;
	h=To:Subject:From:Date:From;
	b=bs36Qc01U8b9Reak3oNNPmaUUBQBnjTcaQ3SKYNwNX99QreMJt7TYr6yswASajnH0
	 gW089gYe/TDrZkfeoH3W5MZ7hOY7NwRx3OaXYvFnir6j3Bu8E4EQiYek1KzyTJLH9j
	 EhgpyNDpv7nITv5WeEjRocznQWebCRJE9R0Gxpgol7/oaWU6SPvzS+02ZbkgLUs1Nl
	 b9zknD/UhjtY2Qf2bemNT7yZwJUWPH5NjcgulMZ/whUFmqDFjVcUverDSVs2SHJWAL
	 ICeW3JEyRG7WaS53uln3PRxn5QjRJBSp1akrGglEyg+SKGo/gev2rHEpsIt+6/Xect
	 Gd4iWIBHbtnig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8A0CD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 17:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178197639369.24565.9371156252799421529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58eb9ecc67cb18af9e7994532c9e8f433a40581dbf941c131e4f694f1e2f4546
Date: Sat, 20 Jun 2026 17:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781976393
