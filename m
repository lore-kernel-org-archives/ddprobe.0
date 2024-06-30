Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF893D967
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 10:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719744863; cv=none; b=eFvaup+aQj2cM+WA6GsiJCCe9S+79V5RSwda34ISA5srDlC3Q8avJYwgEV4VBguJOzm/G9OYYfvcNQqFy2r4w+Di3k3Ivd/vEcOajLWbuIFDTuFjKbXry30y/0CnNgKoc8jid2c9Mr8icpyE/3NeFwgrEUbQ6bk2ZUU9uyBYgqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719744863; c=relaxed/simple;
	bh=r9wh3LGLci/1JpRAFKy9STsVbDwuCOakxJIUF/6eo6s=;
	h=To:Subject:From:Message-Id:Date; b=hTsG5ctaM+nnK+E0szSsJ5adAaZiHTxNgoYmkA8GhSnVy72bvcfDgFtQXrAlAoxFRWJmx+SJAYZI8UkDa78pPAwa9hQDl2tRfJeCLOaJb+M4r8uIZC3ciGrA1LZFMBxyUr5kN0e7+pWLp+SaM+0cysLSCtK1tfM2uq5axLerAfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VeznlXSF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VeznlXSF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D625EC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 10:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719744862;
	bh=r9wh3LGLci/1JpRAFKy9STsVbDwuCOakxJIUF/6eo6s=;
	h=To:Subject:From:Date:From;
	b=VeznlXSFg69+9UlgAJqNZ4CWZ7OpJ0SqeGrqUFVAwGK6vYGeB0UZpS3sXScOAoYKE
	 3pahqRzx7xq0jNXPYABYowXJ9AY1JgPyN4851ny+2S/e791yxtvOD4eeJkIHPTMbG+
	 LF0pBVMuppIY/p8ki8esKT2QjK0jnvlK1DeGznVJ6+kgyksY6I4JIlcLVmHvexs0D9
	 uPYLZdatuODGDFt5wpWxY3R4J49G3zx06JVDUx2u4Hi0ZdqjsbtXqag967BYEDFFI0
	 twVed8y3ACEHaM1qrbHm3VONI/ZEPirdmgyRV5gMalTE3P0Z9dO1s8YzORm/KC/OF8
	 R8TJ/fVJ6ueiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D40C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 10:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171974486279.30884.1544112476016670243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ef4abe03cd4559f399b482baf5cb8c82c1643381a833ab92baa811107db9e62
Date: Sun, 30 Jun 2024 10:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719744862
