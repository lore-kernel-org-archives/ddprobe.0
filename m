Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0525B8462
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768015434; cv=none; b=sMOYUCop6hTr1H3Z1TGLSLE9TyCGNYpKWbusiAnaiGGdgKzvJnY23PlugMZPsrBhcgGf4ch/DcNv0owEQH8UOA5NdcIHYdEt9nZiSog0o6MoFnL/Rw2QC6qJB5SAQnhcAYUWto9h8D3VAPy7VkS92sGps4oBGq8Q1401WpvLbOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768015434; c=relaxed/simple;
	bh=XVMCXjMOMxmta/T/RdtW8ErH7xPhoU6T+lnkPLsphPE=;
	h=To:Subject:From:Message-Id:Date; b=UPh7Xvsr6CcFDw1zQvn2vNTL4V3GPHUiUkM5sdry+RiDTV3vPRBAYWFizHj7VMezCfnlf3YXcIRfaIHH9z1YhWSMawa1Re2MNpJrsD1nhxpEfj+1tjIAOFbfsmKOg+TyJGmZx7Oll0jDqPl73xEM+nck0wnZhhRyGhJEHxW6Q2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qyIFbnh5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qyIFbnh5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F833C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768015433;
	bh=XVMCXjMOMxmta/T/RdtW8ErH7xPhoU6T+lnkPLsphPE=;
	h=To:Subject:From:Date:From;
	b=qyIFbnh5vPhpkg64nSIa5lAAl0+KqpK+/R7p0YfaBdpdsgXoPwe0EqYRvRidG2IZM
	 rjfNWZv2NmueqCMRkJz68f+eEMzOuJIRxv6NiwGYymxyWA12hDf7uLjY1NxMPd93rx
	 JC+OqmV17ldIATzyZOP8qau0l0v4dTwQDy+uUEE+sRLM8FCW0tiyPaYuzdvr35Hr0x
	 ufUCmpHOMqOtw6g/hKQlj1B8e1NLivy6YfXGuoYy3+75Ib6OEAgcVj1D38MQcCRYJ7
	 jfGTzACvkgHQgPzD67nKCt8QXEgDufkDI++5AneG+5TTl7Un17VeHyTiJ+pMIS6f5G
	 MVLDUC/YmG2JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC09D277CD
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176801543358.31651.3936382407679918675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a625b46ae3f2fc8f2b990b692af81b98dbda534e23dbabb79bd8e535e960f2b
Date: Sat, 10 Jan 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768015433
