Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B618003D
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 03:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783223314; cv=none; b=VuPlf3WPIRUQY3Lxcl2pk3KycnG3yP3FDckqyLVxHXuPzUmxnnw7eMDJdb/hdwKko9n9HJOZJsllU0pTm1mhGsm1E/dfZeEg1AXj/qCl8bkrN6RpL1nHpjGgJK/zxPSG6VeYeD3t71eZlP1APaotkH6uwosQR7fmM9oGDL5RtXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783223314; c=relaxed/simple;
	bh=Hz8wNQG9tSUw0WdRgpYt1Z6YpcaGVy15aQfAB8ljGag=;
	h=To:Subject:From:Message-Id:Date; b=IAhDLTa5XYJxR1nrEigpRJaKTzxzWr0L0zb+JgjX6OHw8CrK1QeR2J7mL2ETtXnmo/+dvgTw9No+NOcGxodgAbvW5TwMQoovd+N+8sdG+zAGcsyPob/qobktK2tlTH0U8rcZa8uXkCdr16FYDx3ZoXo8mBUvcoPip7fKMrxgdVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MjwTAJ7a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MjwTAJ7a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE4FC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 03:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783223313;
	bh=Hz8wNQG9tSUw0WdRgpYt1Z6YpcaGVy15aQfAB8ljGag=;
	h=To:Subject:From:Date:From;
	b=MjwTAJ7aRqw49NfX9mFeQhNgWWDNgINkxRrHoF997LnDdXgJ5pP5BBWSmq/kQv9jJ
	 S/pb4wds83X0C2U9OyhlGKnK5US8mCvmtf4pqtywZN+/j+aI9LrHc/Mm4e4vktqSOo
	 VVjhFiuo07nQ+p3r3SpKCr6r7WXnh7121KMFEL0wc0e4qEOVxtiyzSaVVY6Bny0VtX
	 sigVB2K2jAtDba9iOb9zRu4BEPUoZhKJAIZRI5RbRqaDLhpG3MYCWNwW6P2qObM4+v
	 1wjJuRWq511d/5MEfP9CSvfCMLs3x4SMEWq/WdpIQdXWjNOc1nmy/m7cNrL1+mFp81
	 w3Fms/hctAuNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB71EC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 03:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178322331368.20966.15563316809591066794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e2aa7bf0de50960950f11381a2eae1f27a3a8bf561f23517516808a30e3c040
Date: Sun, 05 Jul 2026 03:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783223313
