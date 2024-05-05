Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1E771743
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 22:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714949543; cv=none; b=kZ8mDFvy8BkOxQsiKy8s7TdEJMIx3MmrTtZlpqg0P3piZDyzpcZ8oMgiDFxUeysyojodiK4n5y9rGyigZ5tNghhV82m9chgFd+0WCYm5Xr8etG2Z5L1PVz93ST4CQGvj3OiIJJTBxXWNpD3AOWZ/u6taJBeMe6PKwiivhzvRSDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714949543; c=relaxed/simple;
	bh=XlucBjy8wkNGc42+nVRSupJRUup6Vm/4cJnJ3MJqjtU=;
	h=To:Subject:From:Message-Id:Date; b=GyjPctXDm4aqbseUujP+X56QljefmT0vCZHjgWUDascnCS35fggZdgsb2ZGLSg3uE6fQaaYl8gcH8jLF5M9DYMlh3YHeTz2izI7eCDwCMCKk95Cz+jvhcpA8RkC2Ai6ta45QZFYPCw3kA5XopxZcbrrs9UFRhYYHP7ynQiaD21E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UR8q2xAb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UR8q2xAb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F1EC113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 22:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714949542;
	bh=XlucBjy8wkNGc42+nVRSupJRUup6Vm/4cJnJ3MJqjtU=;
	h=To:Subject:From:Date:From;
	b=UR8q2xAbQdw2lD+oEMGqMrhkukOzG9LGOL9mie1nf9inzCfuLGv07Ue4Htgc4ashX
	 Z30qarQHvE07c2ZCTX4L9btsQFN5WicpH/3W0fSN1/bJU8whBrzV2CKwMZE65zuLFf
	 KfXkYWyIgqy9GR8SaGSePwJon+QVMnAElLaQoK5zjvA1X8Z8r+T1RNIwkCZQmKyysX
	 iBsEJbsB+05tT1PCP4HG/cCphZfLyizlK0ibtG6gfDQBJf5XvbuUYeF79sDERBdbRR
	 bGs7vNYnEX6/cKIP8zHuE5fvJ5KkmBIitUXejLNXkmrNCMeHAzP+T3dIPe58/aGbNb
	 NFKUPjthywA5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4946C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 22:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171494954276.8310.11308188680158985709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbab54290c79e9c707b1c21a52ee7e1e241b90c4c2bcfcba1dff184c029eeb31
Date: Sun, 05 May 2024 22:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714949542
