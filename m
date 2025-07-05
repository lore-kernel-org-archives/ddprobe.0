Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2526A1B0F1E
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751687994; cv=none; b=aLq4008Q/9uTWVJcCFVadn7oKWSF5STvp4f30A9OuOQG92/hn5THgqegzKPhuVA43+I/ykRrAqapeAVsSlLUJBGW3PF/Q/GpyEOq/rTyGVkS4Ue7lVqHnUoA+bEu817PMLL6vZY+cH8f5swMQOWZPtxgvUHm/lV8u6YQteo1S+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751687994; c=relaxed/simple;
	bh=LQyGd2pl2seIFMtSKPdw0h3r2RKOzEAmv31ugh+mxJk=;
	h=To:Subject:From:Message-Id:Date; b=ITsv2TkE3A8N8Mv8nNZAHemnv+/mNbXxY2zkj2MMOovcSgQcPuY7Y4IJFsGt5CCKbncg3ty5w04APmCJ6JpslikcDkVVpnkmVoSj4QFoPX45Jy0/bncr90tcHNpaWZfIqCLczieqDy/qe49yz6qRmUEE/oEMkg9NkBB0YP60HbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EEX1u9Cp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EEX1u9Cp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8200C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751687993;
	bh=LQyGd2pl2seIFMtSKPdw0h3r2RKOzEAmv31ugh+mxJk=;
	h=To:Subject:From:Date:From;
	b=EEX1u9CpZVSYlrTn5d/LOu9gfgdodcHecs7mxpjlhNaX/ciAN7x62z7n+T0wp+/gQ
	 GXdRbYw3B7g7OZr3S++A8V2xojOXPJN4jz3U84CpPbDEWZiuytvEuQs0BBa9p3WMjt
	 GgV//17I31hE4q3Z3jHnT4Qw3gxaUICFnkvmABIj68qA5eogCr/bMd2Kx414VmO5yq
	 sp3dBat2UvyWr3f6hJZdsI3v4jKYn6yxdJi4OczK0TFfSOhL58UB0ZsaqZrcRc5B5f
	 OhB97OvBwVcSJO20sHZKtss+Gc9BMvcxLOHTT/S+Q7T/RvoWH8AucxoR4Uk+5yj29I
	 Ejmh8dqEmx2kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9151CC8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175168799357.7182.135806704498622256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 355db369420c4194f61d4b63b1b547cac0fb1aceb3562fbb1a92ddf1e70a1b6c
Date: Sat, 05 Jul 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751687993
