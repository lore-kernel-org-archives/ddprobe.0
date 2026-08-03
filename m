Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5124A6BB5B
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785777034; cv=none; b=RZTnxiz+S57++CFae8q2QAB3dbWTTxg8yjTyzXS8hrEUueWgyyca7IUOsjMyZ0opjGOuWSDe736fXqLeqnDrPpGh5MV/h0ZU6ubZdHt9jy+5L7nEoWAYcq2tOLCvpkE8b6Py6tR7teY2kP8hEwpyRqZB+SVGx58w/49HkXJSR2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785777034; c=relaxed/simple;
	bh=tR8y/fYgDaE25ybTD/8mwYMDdX3GrWwjSFn1jxCL9v4=;
	h=To:Subject:From:Message-Id:Date; b=BJqhjHAmqKgTN1m40kmsK52QX+Tmt9lHz4yug4+ArSvpMDPBAqtRJZBL8Z5K+xE6BYw8hXvsRvCUFTyOSUbOaKw8eRGD5xyir9+AZs2CNODrzJchqZVCk9spztbW7QwEKcj4CfpYWhuZxsr0XyXq4XoLVSp7HwNa+wqFR7TceMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qk316yIF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qk316yIF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC77C2BCF6
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785777033;
	bh=tR8y/fYgDaE25ybTD/8mwYMDdX3GrWwjSFn1jxCL9v4=;
	h=To:Subject:From:Date:From;
	b=qk316yIFI6yyGuG1Z3Nes9JwN/BhniMPivwxG6G9erMM1ccQ2bc/ZTdVBhQAZHSVX
	 +kPklCRM2tea+3L54AHDKYapaDORstJF65HaKqSRIYFuzN0/xLtN3Ruu/78mUNDb/+
	 63PB2Li94DnU/+ZBBjmL6XsZbqccdS02MvAQnlu2v4nARf5aKaxJeP29lp1jhe4F3h
	 sI/AidgbvK/1U850QZw0lz+RWgpWuqNKs1BxWx41+Rwt7cx+2zpePPgyHXQenLutjY
	 ImpGrIPafEjyO7BjODAV9dzYqR8xUi476BRO7PdbDEsB4hbgNXMu1NIJzGZ5zlgaut
	 YwBvR13w6MuaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF76C55184
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178577703369.28433.3226409122356145009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fdb94afe9a72a8c3e490bd64e5ec2ed17958919746980d3216410eb8211f2a0
Date: Mon, 03 Aug 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785777033
