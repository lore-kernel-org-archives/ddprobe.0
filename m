Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DCE15B97D
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730705754; cv=none; b=UCRMklI1xIhR8pU5znxRV23YkO8UjmX0W0IGWZgO7l37B7yvaKZtNDsdp+GlPy8wZU0Tq1ifHOb4NM+CgApk9q7LP8diXCrpqAtjGnvuA4BG+S7nwSqq+7FUUqVLHu/c6pWWcgGOq6Vptaowdr2dXPGBX8PBnEY05j0WzdayLK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730705754; c=relaxed/simple;
	bh=Wc6g3GQ0rlnF6N8oy1hg2/KDTUozYqSjc2DNwIwMkUI=;
	h=To:Subject:From:Message-Id:Date; b=A+MHWRcyv1EHRWBGx3Ut8axU0P1tO1V5Dyl+3gCGATlR+U86Sr/a5IsIZB1FvdBBx711unpAWNYDvKVrN/ubLZDnf/34TaQ4qjpG8vt7YSNfSGmsQLHzgrDPhSPB2+b81/gs1Nm3TnpYYwlFvavNG59PZgAYD7xseCGzt7SaKMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=szjhv2BU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="szjhv2BU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EF8C4CED5
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730705753;
	bh=Wc6g3GQ0rlnF6N8oy1hg2/KDTUozYqSjc2DNwIwMkUI=;
	h=To:Subject:From:Date:From;
	b=szjhv2BU4xo81rccncMNjAbpiTnPWpaOtixHdQilcDhI4tRYp7oaDBIr5xjVx1OMQ
	 P/61W+8fxr50gUGXVtZgKnc10ZuxhWQTlV2LGZaljTbvpgiBDUGXv6m/EUNLs2EsqA
	 Ti03jymD6qKXOzglv62+tdRJu1d5GKUBSbO8aRjH8YuDeNrJrb2hxMjq0Hiwz23OAk
	 uitBMZwme76nKUBxuOqCZxugUH5qLYhygCcvZ4f/Xam9VnJeAPkmWQSmhU4p79Q6FA
	 uC5S+VtkWCOoP5zxk9cb2VnSTHzz08sgq9fukUvgALrjSRrTltSTEEbe58QGQ4NEvV
	 ir7irv6/+O9UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9470BD111B0
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173070575359.28538.2105381561990349494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9d34b0f92d68d2e00ba607a4013dddaf3c9f09a668e856ea58de3f51d2c63a0
Date: Mon, 04 Nov 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730705753
