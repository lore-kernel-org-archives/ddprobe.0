Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAF111DE896
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752589793; cv=none; b=MgIW5ZfnlMsw157vvGdzCl8ApXUbL+djqEq+oiTNqoSf4Q4I73AkESgK4ux1ltbI0vlVjIwW9bAuQbFrn7vS/IflXvxPrLr0D/Kz/gUs2Lje4EQ51qf5nW84tjIpm2WGLM3SCRwYbdohi/ZvkJyVoWB7rdO9fpQM/86YpQxa+Is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752589793; c=relaxed/simple;
	bh=CwhJyLI0BxHEdgLet1B2eV7Mqz+UmuzSDENmyTpKpXY=;
	h=To:Subject:From:Message-Id:Date; b=rclA4MwrrUqOBZCOPn6+jluinwlPFa8wXCdd7h2Z6g2A4sJqtFwuUFSxsINEvbAJpwl4M9Oe1WN4JnW6DSdyJwCoOXyQR8GN9I/sRHFd6Pj24xFcwnu3CdK7yPTTuZU/Fxjg8iyzFY8MlXw/fnfUPLEyM7gDMyR+Lxlc6RBEfS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mjBcfWMx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mjBcfWMx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D63BC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752589793;
	bh=CwhJyLI0BxHEdgLet1B2eV7Mqz+UmuzSDENmyTpKpXY=;
	h=To:Subject:From:Date:From;
	b=mjBcfWMxvMydtyP2yDAgkgmmNB9xP4tkj0myyJ3i0wmiixo7N1Ze8a8GlxCLLtnH5
	 s/ckCDbakOXpubiSpofkpX3WzlqisqjF0n3XheaM5Io+CA9P7wQUkWF4HuZHBRefqR
	 YBndW2hwyrC+l8gbhVIObXREzdFzw3FaDAccUpfeWmMI+DPwn2KRvB7YOZtHFdKiZO
	 6jW+RVQKBxXDRoPbBw1i90B0lCU2vdrQYB2/84h1NGWRsHbG1mPtsxYraLE4CF3eQs
	 LKZJMQVwKi+xYbU0gh8lmC6fwRhuYtycQ4dd1ElLNLkBquXCFUNVrfytBOO3q38ayR
	 Ps7Ik+wH+mtkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F73AC83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175258979358.27531.18282277802170380136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b6183e76644e026627ae316154b903b3e2c1656f21107c7ab1d882dc6059f7e
Date: Tue, 15 Jul 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752589793
