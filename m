Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202CC4685
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753508994; cv=none; b=Zuiq79QpZfbmQB+6wR1VwJuCJqao0m8XRFVzi5Z4jzfnwG4VIH+bq+NFqXye35WkWUydmWQRBQwDbhqLWLDIJK1FIaeKHBdmbdUOmuEIqgGV6Qg/rs1csToNcrLWGw8bjIBQLUSQhkKf6uid2Wg49EFXUrJlqmB2meDuUnchFM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753508994; c=relaxed/simple;
	bh=Zj6wNae0XSSH10O/lpAuVgz0yTk/CPPJaattr73MH3k=;
	h=To:Subject:From:Message-Id:Date; b=AkdCrZm0MGtC2tYYahWWicJW3/ugU5VVSsecqvrjsnOUn0qYPCwz09V7Lopq19vcuUoAoApwDZkh9vlUcvwo8RoTGYHpH0uzWbXqtaexA1RYuqx3ZlI7nC3ZhTnfRS4ixtCz7ZynKUhZkj9tgYQuDvjVmA91xgTbMLQMnhenTVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WVGQOMMi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WVGQOMMi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19DFC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753508993;
	bh=Zj6wNae0XSSH10O/lpAuVgz0yTk/CPPJaattr73MH3k=;
	h=To:Subject:From:Date:From;
	b=WVGQOMMiNg76rm/f84Z+8RPp1nyLCvK0RNzZ9SP502OdIszcGbOQWiWqE3rD7vZCG
	 J336fZvVRm0j6+Y1W/2nEunfZuusGz8+dx8xt3gG+tGCcnPeVNUcAMmyzWBtR2bDyP
	 yBpaS4g6/pVcr+Mhvs+5W5B6WQKchmybDwJ8wry3AppdPPuNZGtU30rgMyQflDWygu
	 gxd01rs0lzs9NFvu9dfRuMDxOWXmljp0Nn9476o6kTiWX8cICqnOPdpy9HhVhL6Buv
	 42Gm+uQieQjQpvAxDzVZ8TWTPDz0tfpS3ROwwqnDXDMBZ4VRSiPZZfsWRCSa4lI7hz
	 6RO49B0AiBVig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E27C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175350899357.13173.13050489769274000537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8e2c449c6654c28b5634884afa7a3e527cde015ff81bf0f587658bc058f4eea
Date: Sat, 26 Jul 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753508993
