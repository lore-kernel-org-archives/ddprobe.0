Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280D43FF1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767344034; cv=none; b=bv58pAVnKfeOoZ/D673qHGuUIVxK+uhGW57IqgWBfJ4Fl4m8D6ps8uDnedRBb3ygV1XeDdC7WZnDParxA7ugJtLpz7LXmxh8n0Q3HzRQ75XuSHSXJftcJ3Q3gojUbn2rqSjHxQX+4ytT2q7QjugNizGOSiXYUwVK5YDu4H/vT7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767344034; c=relaxed/simple;
	bh=aKOGcCobkzyzoyVKPTfLGkP5vHo3Z73+qGID5vEIj7o=;
	h=To:Subject:From:Message-Id:Date; b=fNC5PSH7e1cADtIuk9eZsb6zNASBT+DIISx5sD21T2e0mFNRsLBFAepBCqxUUXS19j8TpRZ4QT9D1FVkdshWdpA05UML945CCjQS0rrzXZohJopvlZnsF93vhD5rw0l/lbM3IkdMQN5QcrNCxs370V9dyACKbPlywVIVMD/kfb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ra/IXGCT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ra/IXGCT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A653FC116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767344033;
	bh=aKOGcCobkzyzoyVKPTfLGkP5vHo3Z73+qGID5vEIj7o=;
	h=To:Subject:From:Date:From;
	b=ra/IXGCTlko0ycZetyOe9Lhdq2egEy6UBbBOAmj+VsLq4H5HG13oXH06C/i28igXy
	 nJfGcKw1R9virPHuruX66TjiaFb040v59wTAtm2PrPbLd5GIpPhnfmaVQDphFT9QaL
	 mCqeRbZiZk4Fe330/0AM8TTVimsKDS4/kvUM2CPu+9BObLQOFYXbydkAZjLE8Im0Nu
	 vx64rqHA7GoYtYzUb/6zdKqtWKUweNqMm1XLs4qIYNG5Qlqah6nU6kutJ+PGk8sGN5
	 d3d6RHE7CG27pQMp34WsPA+pYJHQoG7Z3nQNWNEAfEOVigz3feMHDGTGiexwwfLSzl
	 edMZHU8v2icXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B5EEEB57A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176734403360.31279.10105688195584492374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 155cdffff9b05d046d4f38a97d0f09b7eba079b90fe96037f3de9183513ce54a
Date: Fri, 02 Jan 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767344033
