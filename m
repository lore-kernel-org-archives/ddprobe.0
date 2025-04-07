Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B8712C544
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744064394; cv=none; b=VuXt5mI7tbRt9fl0kFBrN5bORO/hSpugbSIF3LbFdI82spa1ezsgmYcJczA3hiObxOL1CqiThPPU6SEWN//Hkcer2auEktxzInh3pWUYPUnrKCFrxhPfLi/rbk7d1DfupCR3/oipdxfnJyc6PV/+882uaKVlVLEMny7UmCS4GtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744064394; c=relaxed/simple;
	bh=aUcb5FEjTsG5QxQGfZwIkgUm6hxY5m927jDRpI6ekD4=;
	h=To:Subject:From:Message-Id:Date; b=PCcso5spzMSDaOalUzHGgqNkd4kWojqLpG7BAj3JGlyAYP0ZKiYplpSS3Gj2FIa7Ua6q63oKK4j5V8oogmFOqYdFd2SlXkr93evDNRBqrjYvsxmmcZkiUPEUJLXimgiBbf0U+LrK8J+bnS11/rCAmOZXkSOg6h7Muonwf6lItps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ej5xGJuy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ej5xGJuy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD18CC4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744064393;
	bh=aUcb5FEjTsG5QxQGfZwIkgUm6hxY5m927jDRpI6ekD4=;
	h=To:Subject:From:Date:From;
	b=ej5xGJuyuiy+f+FVsj/skVBAzQdvYWDV7a/1nJ8XPVuBf128x2QufSIfBJFe79lSk
	 NgIoWq46pjNrdZGG2klS5D+MNl6CEuiSnnvmw5NzG/TlSlIiD+ngmtV9n2Ap/ZFwOt
	 4nCHp86Z08RO/AC7ee3NtwjaEGM3o9zNoKl0nE1rz7vhhXwTsLGF0Sw1vkWuwpYLXk
	 hx6ofEX+n1Dy8mTkf1vB1F53uMCO8y6kicdHK0DGjt/LnKni2TIc4P1Ub+dYWsqghP
	 6sEl6BFiI6QUWGeWvwnMDytqV7iJlecFWxWJDoHEmwwtI1RERnlxcYFrxEECmJfsUt
	 N9+39/nC9xEyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E60C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174406439360.10126.6376067823051551588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd3470cd78197501000a5ea2b7fa3e5a805fa1951a832a58a211411317668015
Date: Mon, 07 Apr 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744064393
