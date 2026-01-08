Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44AC1292B2E
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767909834; cv=none; b=Ama0wD+QNGXGbUxG+ymV4UpZdhhGLspbaiOZJFD2s8vl63cqMwaL8LBwfrsu5PdDIs4W3CgR9+YVRY1ODflc2xvEmqL3bekXZ/WNmcB0Lpy4XQZkDMLMnIRsUIy1XQ9uKov+4QYeaEPS264zvfSB3367xL13eVPa52LIPSn6RqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767909834; c=relaxed/simple;
	bh=mGXhrToueXKhl1DGye7JReIe/GJV6iJdQLHZBk5UJws=;
	h=To:Subject:From:Message-Id:Date; b=LyNeSsMIAuspHzDg2s74lP3ojNJpWLfd+DQBDw0Dk2jRxHUPkBtf9a2dr5oCQwPxc/T7o93oLvSx7LCpn4zsXiyK/+c90hfKqoc+I5uAyMlFtQpR9Zl27VD7xhOlTUL0yXk5HEa80GwD+WRxTNi0mzrtYVVMC8AGIUqI/dBYdqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FeWLPHyl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FeWLPHyl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2FDC116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767909833;
	bh=mGXhrToueXKhl1DGye7JReIe/GJV6iJdQLHZBk5UJws=;
	h=To:Subject:From:Date:From;
	b=FeWLPHyltTNmZOh1IBuuYkgJ1KNKWJo9meIM4M2U6Z00mkfA9HtK3wAJRUQmAfmRx
	 wucoo2QJsmTzvMrlnyGumQ3DBCMU5WAr60h0mlLYfPTBGocdM1xSAKeKvDsejkEAya
	 zgDeV7jwweUWPOEhDbPRErGrCrJHEqYYMkgm8+wuA+rKhVl6vJZg0rntXFHLCQijbH
	 U2UZm05PG8F78MwNbzGFm77SsxNMA3d3cljU3XOmVxxcifPCz3LO0vPaeja5/StzUY
	 Pdcs9agoJSroCvCCcuEuZXguZQTyc6bAU0Dz0nR+G9nTx6Sr3fg5gSECMu+qLSHVf1
	 paEXmDxnVqGqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBB1D148A1
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176790983361.29081.11407419758334176018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac4c763a0c6be68311cebffb4ec1a805b0f5cbb807422c97cc6f295b6ee4e7d2
Date: Thu, 08 Jan 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767909833
