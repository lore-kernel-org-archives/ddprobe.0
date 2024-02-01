Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA942A1D3
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706764097; cv=none; b=IRWESI48TdmzXnnq7g1Fsn8AFpL34hqOOAvdS8C1yb8lT7Mtk4gE8ZJqO5GIiaq65c/j8tR0NenUAkLux1CXH8NdVrxcmq6rlzGw6nWygcqF+dOolD2tv6sAC7FnF0fm7nk/RkxVeVtxqP5lsZ0xpZyUbNuCOl7LAqY2BZ8cPbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706764097; c=relaxed/simple;
	bh=TXNL6NrPd7rfY47RE0dIxBxNMH1urRGpvd1Bp3tXmso=;
	h=To:Subject:From:Message-Id:Date; b=GfzwBy23rkqLoa+iBJZrvbRDKS0QDRAcoM2y7r4lE4DSciYkskVEqTJVcoZwJQexcMhRjb83zYWGcp/L3dbtiLsqpZyXAASSGgGNjgR70N1vaiiVCRfEbhvJ9FMhttjaBXo/eUa5ZV3f4AIW+rUhYxikhRLHzC+yM27V5X/aLLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WsGwTyX4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WsGwTyX4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7716CC433C7
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706764096;
	bh=TXNL6NrPd7rfY47RE0dIxBxNMH1urRGpvd1Bp3tXmso=;
	h=To:Subject:From:Date:From;
	b=WsGwTyX44Neo4Qxa0jqfmcQGBbD+TqUbp+XeCT4y/pSAxDHe3xrxp9FaHyLVXlFRJ
	 lr9m8CKkMRfhNOod13iwzLyXUQgmbK2i81JJ92l+DKbWoFQixKrgahNPgIXKPcG4g6
	 A9e+iX9mdyL0RqxHRpL4PD7us0m3xPHyO3+JJRGAowpRgtc1R3tmhWO1jmsIjBghBy
	 3THCCiGPLTNRnbJTRM38FL628MFa/5ZyhzGfvvdPofNIuqdhe7uJG9vaVdm0baMIo7
	 O4F8BPybGl+WJNj/sxyqtqjRPWtr9fceJojaidPS51oWHpLJpo0gn4coT3wAsfkvW8
	 qKV724kUe4rig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FA5BC47DDB
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170676409638.25783.8151783182809882437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69efae301974cf528b704b049d71bc82056d9b3f667b0f458efff8610f28190f
Date: Thu, 01 Feb 2024 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706764096
