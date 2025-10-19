Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534861AAA1C
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760850594; cv=none; b=O2l7Nwrtcxhk63eNoEEbZ4MX3y92yXrl+Gf3SmvYBIlVtVN8RPH8LW4aYAl8VweNgS4rP7IyN8TdIv4yyWo8/lzcdTlLxTWFLztymVAEG0QbAY3jV91Ub9TQfl4PnlvVYLACGwdPIv6W5518YqrcHJmf0+Pnha3KRg4i8yXYhPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760850594; c=relaxed/simple;
	bh=V/9F+ir9HZH8noPrBUKfqg9MkLiYG9u5RQ5K6QUUDek=;
	h=To:Subject:From:Message-Id:Date; b=jx3lByKkuAbOzCNCoQ/VRIlD3Zi+X5afytENboN6hJRmZ4Y9O2gQ+YiwCQ0mt/Xe+9+FggqwI3v0YR9nY/1i53rZQoYCYS2K2zMgp41VX48gRJx33B04g1bTz6eQLVQia+N29yRGgYd2WKsG1pf7kZWBc2u9mcA2C7hqEV2haVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sP3pxJ+L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sP3pxJ+L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8C9C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760850593;
	bh=V/9F+ir9HZH8noPrBUKfqg9MkLiYG9u5RQ5K6QUUDek=;
	h=To:Subject:From:Date:From;
	b=sP3pxJ+Lgo2DtEY9TMIgCbD58+h9Eny2SStEzza+5qHLUrb/RIvCdH6xmxbkEnBg5
	 6mHgHw+NIcDmR3Ny+ANqWrTxnrMHwBJJh4JElw/Iw7WbxB3ZsBO2zKvYsJ3mdr5l8N
	 ACwKeqkBQdFplFOYGsRKD+ntusiG3c4C9dauOLbxrkenHsIN62oDGDV/6IlmQ8iE4d
	 Mmsoohv8CAwFtlV4SF6OdlaaG+md31pVdaJCq/6g+WlHJS/juKaPGSJt093jmEy8mg
	 Jz+e2PZs5BhcV54Ih5Ts9vn/9j5hx842YawISoQdyQa4y3VNkhE1T/nswxUKKswaZQ
	 nqbriiUYeurvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966FECCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176085059358.20459.5965866151237384461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 574db5470bf21bf4d6ef081fe36681c4e1d29f08a4c5ec07bb1c2863f185899c
Date: Sun, 19 Oct 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760850593
