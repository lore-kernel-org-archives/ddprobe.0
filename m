Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41DF2195B1A
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743793194; cv=none; b=JecQ9eCrqRYZDfBoQXkqz98Udt0bZ67O2mojzcw7OvAljWaN2AOdbZbVZfusFweIJJqeSaLtiS3nvBdaSyG/X74YOWgmkXsmv7u2bR33kyezH4wZc1DqoO4QRr4Ar/Tu1wDh7sQoVlIbEDrtlGJSBiKz3mLt5LLgF/ROU+V+uUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743793194; c=relaxed/simple;
	bh=FXNRkpyxcrcxnJt+yF173w2CFqlr8i6p/hmiYWksdTU=;
	h=To:Subject:From:Message-Id:Date; b=nB/DUwkh7AxIIl9+vQLQPy73xL4eJ5wDCT/MiM0A2z4n0KEgr/50GKRxskCVzhQa42t7n4t9BvfKWTbPMfsBEAaeGtMD7T2uXZrY+IBelbu9uZTwDh6zAq03WYkJEAe4LCQbJDWGpuODREn0lwJPzlVGcgS7fiYhooX/uhryyyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pys+85ex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pys+85ex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5A0C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743793193;
	bh=FXNRkpyxcrcxnJt+yF173w2CFqlr8i6p/hmiYWksdTU=;
	h=To:Subject:From:Date:From;
	b=Pys+85exCG/bJLoz7EcikuEfGboX5srppgY1tMbkS/srLDaVcVK8f5gRc7N2CyU5v
	 EXFudQ8UScp9w5IsIhpWCj9V/fNH+HtcO0DZXG/euEI5PX3wRST0qjThD69/fGPMMk
	 TpRKI2XBY419x2Bv7zSbgWwwecKNEsjkQZKY4+uL4SCxI7f1wPQXCRaSjgtZR9RagE
	 SiIaH3OFtmUnKByF5/FSOui5q7fZd4kJopFU6+yrvxrVo9nuZM/ZaHbi57mELch3Ij
	 IiHxQMMwHiCurd/HsGeazolbtsXxkAp7scaxMQtIIbkc0OEh1ekCqOoqGUgCQtLGpb
	 J+zi5OGpLwflg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E8DC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174379319360.23030.12116879471059022014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 495c6f32f9652c210c7e1b3d034d78ef9e6a1af35b2c826961c53399b86530fa
Date: Fri, 04 Apr 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743793193
