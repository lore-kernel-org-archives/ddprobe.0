Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5E31A682A
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 16:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783010314; cv=none; b=TTZNj9i3MRoqbnHvCfB8pN9Yj0VKA2gItGodeqU9NM6qX59Bocelk2FXBYK1nWc1MOEFjRNJIrmf3BoXvgpryPps/kl3j/T13c0VirU6HBUpowSQf9s+Ovm2csGrkFG/pN+Oya3YbyYsT9OkGsubJgqVDxjzbiv9+kL+99yj5IY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783010314; c=relaxed/simple;
	bh=AHp9LdMAAz+syL7UlApwwHS5e44NU9GDEla53h+IwYo=;
	h=To:Subject:From:Message-Id:Date; b=QVDkIQhqECPo6LslpY3mumTy3Vv4xMWv2/DxyFOQa+wXQ1AYVndfAhHv+2BSTs+JoNCz2z4gdnBR5mR6CsGV+x23fQL0NP5JIxHkjhuNdC/0UXo1vxkhrIKLoWdXU3vaxTpCoEZbBr2pcLiCCISrv9IsvqxTKWLVIjX2SHMFln0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjkjkFBe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjkjkFBe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC45DC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 16:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783010313;
	bh=AHp9LdMAAz+syL7UlApwwHS5e44NU9GDEla53h+IwYo=;
	h=To:Subject:From:Date:From;
	b=pjkjkFBeYXm26/RAU/cPYTeVa4brBVMslgueQDBpZZRZGsqBXREXdwC3qRJaQkcZ8
	 HuI7cz5yQd1dJQ0tQFoa9u0ctYZExH3NhzLdakM5P//2f+KbMpOp0rWZHvWmQIn93k
	 JV7Gc2TmTLcFdmng3c9jx+lpD//cqXjRvb4GRns3m6zmgeExorFEO54IUIBaJVQmou
	 D2s6jymaI36AOVNTsTwkKZoHsN+MScg2/k00Ro2AsLtYdxn0zEKzcT/PgRcjKIx/2G
	 DzF6wxUSJ4p9BNoagrJrKTW0IBmTFeMi57/WTF9cewQJ7aCFqPtF66MBzjIdvGd8/7
	 3ZdFdlYZdNqHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A93C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 16:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178301031368.14082.10668276899331253522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1954cbf38803e75d5e34c1b95e315652fb296ad20af1aeeb6f0d8aa602caab97
Date: Thu, 02 Jul 2026 16:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783010313
