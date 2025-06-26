Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB94C2163B2
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750979993; cv=none; b=GC/2AsB+r++bEKfr5UG6J+at0oF12vsfkwZcMBk/tyjmHt8i1GfCMvAkWtxfb3g/Wfv1j/dwgYisJqRcRP44bLU1WNMTlyDeClqhnaApM1VZN2w182Fe51+iY7VpfYx/yV+x4BUB0Gh1Nw+0agLm7dhesJDlYUg6RLoUWPeIn9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750979993; c=relaxed/simple;
	bh=/54raZ9sLlhBr3y6PjxjyBUe6ahqCLcBFv8gfKpdb3I=;
	h=To:Subject:From:Message-Id:Date; b=RI5nPi7YvABBofk45jWG4MLk2pK0ksuuIgrzZqK8Nv5OKFPNLvoGXII4LzFYFUQXTMMc2I48+T2HAjyS8d8Yt3oMF3rTyIwHY3zVmgFCXlVkmGLlhsXUOhbB6gk4mcJzHi72rvY+8lEjJLrZBLJEFMjSOPyjWYtIj3jvEDT1rlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CV3tKMfN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CV3tKMfN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3875C4CEF3
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750979993;
	bh=/54raZ9sLlhBr3y6PjxjyBUe6ahqCLcBFv8gfKpdb3I=;
	h=To:Subject:From:Date:From;
	b=CV3tKMfNp6jzeqMtTTr2LluoU92hSl80tHQwBJ2I5dxz3sEZDwHaYhheTAB3SW/RJ
	 p/cnDjTd+3dJxoFDOvZQmTrwMQpiAUc/9dApg9pRYFPhxwzmfH4BlFyPIIwrNt8f++
	 E7nNzcsAIx4R3Z2fv7SHrcFD8+ez9VPfo3Z0U/IhIuMw42RgNATjvfMrmTAE2Tq6aB
	 6lLt6Xo2GjbisyAip8onFH11dUzqShI1jD8OGLpvQPZjuG91tIvOd4a/x90U+KKyWf
	 lnLjA8Pjk7ie938CCuWRCF95qPJBajg1t+NisyvbVG7dr/sGdqnaUvTxoU0xZ9bzf4
	 BIzVXVSeTJILw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9137BC7EE32
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175097999358.10495.14090753892182847234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a489ab10a952fab7b5d247d02dc64d7b2f0d8d0d8a96e770e5ad55800c7df8b
Date: Thu, 26 Jun 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750979993
