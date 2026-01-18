Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E26C5256C9E
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768766034; cv=none; b=M773TVeexadK7ZJUQTpDC3tgckBvGigF2pK1M2PPme1Dzputq4yehS+pwM0UUDQr49qeluScn/+JJJOYkIDPKbWByGqFqo2rm8gJZBSeVeTyvgMXUjknNnf8tq3NUiTnBLUVwjtgncrL+qkR+vaWbCDqeV6HtJaVytbLJx5gSac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768766034; c=relaxed/simple;
	bh=filjPb55bkfjn1xTrL7O8hghyMZukpRvGoSgOtaQOPI=;
	h=To:Subject:From:Message-Id:Date; b=m4wJ+V0ZLB08zAB/yYI5ogK8V8zhUr5Zs8hj4d+fXYqB6WAf9QyhQhwnrG77I3C5MsRFS2hHPnS8xKUzz2sNL6a2pXMghcCPCsLeQM0Nuf+MtBoPjeaVO7Doek85zcXG02qB6tv/SCdANh6TojqHBXuOc7BoEjDfDDsiTmT2P3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JjPNVFMG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JjPNVFMG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47A5C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768766033;
	bh=filjPb55bkfjn1xTrL7O8hghyMZukpRvGoSgOtaQOPI=;
	h=To:Subject:From:Date:From;
	b=JjPNVFMGQNx9U12mRquf0eNzj4T26xB2rF/LeiLW7IqIB7htFlyvz79uwY0jS3re7
	 WObj5mx2Nr13gy4GRdLk3HkdWCiR6oj+nxuIKSKVUzEbxbdnSUPnScXOR+XgKgKOuR
	 l5kihW+p3dWEDLfvYlMMjwkV6xV48ZEnB5xCs4oyXw8/3j3cDWOKcBnqweFnEE2Z7b
	 x4P4ErAYwR9kgZZ0mWIZYPg+uCgp7E2Ai6pV9IazJ5WEM4jJ/p5A+yFaMhjagcsr6t
	 ZVCax7mVcCCu0dHSTdNbj+onyjprF0MobVTGGixGRACQCXR2X+jsRytbxyZT3ig6jr
	 7iNAkMefPYM2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D8DC9830C
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176876603358.18360.368991734346625452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 677d3acf1dbdb8757cac5dd6e25ee85ec35cec11ae749c7a8a5a47ceff207ffe
Date: Sun, 18 Jan 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768766033
