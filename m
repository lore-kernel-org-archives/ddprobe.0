Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDE784570EE
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 09:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787304036; cv=none; b=NnDPDb/sftd3/TKVcBKbM4Hc3PKOEZxYC0sy1pXqTEYG+jsUUfGaRwS9KCez+qTfUsI+7bvwugWfggmwFgrboVuAdF1B178yTIK36AG3tbsBX3KEMbazyad9M2me6zmaaSpU0jx7ojfqArk0UldWbbRAsTGg6qgLih9wpsYJbvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787304036; c=relaxed/simple;
	bh=8uZ9ZTmoOcNrCgTWeK/WKCR6JJHq0nW4N1tBe3Ie1oU=;
	h=To:Subject:From:Message-Id:Date; b=IoFFoYsu1uS8l2n1XLl5/itWdXRd1QGi4uTv9S97a29/Lgby9MKKKLV9viyZngUXPStLu0OORdaVnSVAgDM8VXGLdo9uSUlKB7de3ypOQhzW6rtX0lHxpCEdADbYfCIYFt/PQN4yxSR6NkhoYFDjbvZTRMzsm0jlqeILvzvySN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXgOLmKG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXgOLmKG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E26C7C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787304033;
	bh=8uZ9ZTmoOcNrCgTWeK/WKCR6JJHq0nW4N1tBe3Ie1oU=;
	h=To:Subject:From:Date:From;
	b=EXgOLmKGf8HZjvApM6lPYMzDXz7MsYVHIRucV8kwMqDfxSf+9FRHm6mr+rmibw3sF
	 vx1GlI4KsRIEzOVrBJtxDgPkRi8ResGDKABMyIRNi/AVedkkDoysT/Fc/HLQEAHZqF
	 8EWGhIh7CbTQrPEBLKswWrHjskIxRjp1/8K+/Ii2cdi42dwSBzDtT1iki9fsHeuV07
	 9FK7O5qePFTRQu6bAIjG3VKvrdH0aFTsKJwzCMDMmLpiDVE6cWjL7uNzDXIn0lHNOC
	 17ZMt0hPQ7L+glXUHYXJ3FNTk8lo8nZ0LHvln1DFnHo81gVJXGmGJd52Bx4b1YbcjO
	 z8Qd6kXdWjkCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE514C5DF87
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178730403374.9674.8658696382045790801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d1a1b94017bad1d22e23d567338651800fde15b0bb0876ffd4df94e29191238
Date: Fri, 21 Aug 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787304033
