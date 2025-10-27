Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B4E26462E
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761574194; cv=none; b=UIHWZG8Xvue9H5oMmLBUn7eNs1tyFSU8UBXerXwVh3XvjbJsuOSQglEvB4d2RkQPA57LmJRTxI9AV3+sN9GNuSobWySqoFAb08pgKd+88eCAKNoXTcT6IBA3grJghzhGT6lneqjqoUisGnRoMXFjVcD7RdL2BSsEj0CawG5DiVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761574194; c=relaxed/simple;
	bh=7w/rL1EKbmDXYEp1TYktFcUDJUEj6FqXDUq58Y1LoPw=;
	h=To:Subject:From:Message-Id:Date; b=alWxzeBhq6ZiPESwawqfmq92lOgLolNTr4l2qwTMYnMrjNrPNzygIg74OPh6UmvLGmObwiOOSOi+5sUS3DchozGKn/kQZ6qRxNpzDq0qGCc7rvzXAYGowWD643Y1Bx0Yhj7Icb+Bm5BYKo0qz6DQDZsMx5Mo5WAaE63ilLbqDq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUJx1xrY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUJx1xrY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25A2C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761574193;
	bh=7w/rL1EKbmDXYEp1TYktFcUDJUEj6FqXDUq58Y1LoPw=;
	h=To:Subject:From:Date:From;
	b=QUJx1xrYlmzZY+W3bUmKd3iKBKZw0KtisU29hayuvdh4tzmCLexf+zkXWpz+yN8g7
	 INyCEJFYUwhdyHTu873Vd8htASGcCsB094Gx09+CUVKP9yi5FOSrDrlZmTiarO2J2N
	 MIYe6618ul5+kOI6Q8NP5dRLfNMo3rf6qc0Zru9iv+xgUhGxDNaiHF40df6Rfq/W/F
	 tqXYdVGED+YauW7ACNmUAZoCmlyfdZOBwjroX2typqAm02SAxl+MFm+QQoEwu2bUZe
	 oxE7QIeBlc3hpqSZipF86yHUCKMgwdwaCqGH9q1lr7tE+TX4IyJZjGimhCMdm4Zcjj
	 Eliwj+5KJgjuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9011CCCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176157419358.9595.5764473251304392983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2daeb6a838d128ada3f01ad1c6df6157ee35f251827e489696196d8845b30f5
Date: Mon, 27 Oct 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761574193
