Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6BE2D1309
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755065994; cv=none; b=TCvAsjzR6Y/rpdM0pfztrdOUjZybhL0BrH+4QAfvp+HLiJlflG81P4wyXaJpKox0L7XccsJ31txoKe/sqthuuC4J+KkMSDYFbZqmdfaloWYuGPPIhHafK9X4nGhuR7KsL2DhVzgd09Sdpdfn4+Oz/Gz0WCLkyPc9sCGHFqLkegs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755065994; c=relaxed/simple;
	bh=sV/qWqyUdNVZkiMOn5SPoN8WlxmGZuav5c6rBs2OIa4=;
	h=To:Subject:From:Message-Id:Date; b=G6KQr0c/MLQAKEqs2xsJgYQ65xLjQ+HKXP+iAoUpCkWLGzb/wSKOkFhlMnCzkHIVa0u5zEn5FTG9PJ9QA1OqS2o5PhPyVUGcyljcaThE6Orui7nosBrmbbR0l4PqjVlDkPpMsbgJ1ohsbcXcgdpHUxmfP0OF7+mb/MFygw0Vj5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eMRYcoyM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eMRYcoyM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70AEC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755065993;
	bh=sV/qWqyUdNVZkiMOn5SPoN8WlxmGZuav5c6rBs2OIa4=;
	h=To:Subject:From:Date:From;
	b=eMRYcoyMrUjFoYXEwT0wM+KMbFS81xmz0mbxhhhbaxnOqT1J5BCtxJ4eN5hZFQOw2
	 bB7TvcnBBcSdAjmZAsSzZm9/+NX77aKTPTXY6vjnDSAGsmsXFUFGRmEjGC6ReXEQT7
	 NioXmoDIB3Q72Ye4AvmVbalDAq1PMw4QxVDAk4P2vUvKQ/hgDC9HjAdFjxncwTWuBa
	 xi2dsF0GTnPMrOzZrv2UktnqCBAhA1zcnzi5lsT9IetoQvp8JSvwuTUGbQDS9WOqD5
	 gl29DXnEyVVV/WDW5rBd6I8RLLXoIa2Udk6dpO9emNLxsBm16dfhG2iFW+YecU1yGu
	 3LvOoyn8I6fQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91743C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175506599357.25259.17384838640090479816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65f912adccf98b0bb1d75e3b9bdbf7df3f1a89c930492df4a8df4672f90f365a
Date: Wed, 13 Aug 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755065993
