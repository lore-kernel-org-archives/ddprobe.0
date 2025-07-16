Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F184277030
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752686394; cv=none; b=leKpe1aNgdTDO4seG+trnFHY7kYDffD26EHQIi14swGYzuD3G4pCmgtLTmVH/RBlv5fv8L77Mygg9Q8vWf3iKaZrgpkAPlBHsevv7IXHDlUk7rz1rRav2EKaxiC8Xv0lbYfY0h7hS2Jn+7/jX+OOear679+WVMQ0T1Z50d62OzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752686394; c=relaxed/simple;
	bh=9FbYpvzMw/mcAKFIs/zbJ5CD6gHgFcSaiOf0Cb5Ad9A=;
	h=To:Subject:From:Message-Id:Date; b=UKDZ8DnbdJNxt4PB6kd7k4COMJsSNK8mUhYdmA/ftiFdnGqqiVWO50/LXwHqA3U5YbpwoakJ9jmzgcWgDvaNYh0Exgc7097xx/0pvbGR0ikK+4lm27BTaKflXI+J3GHd45v6Esi+a0YGgBOGCvB8BUPV9j2gy9C4sQEajzeMHZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qxd0aXZo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qxd0aXZo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A822DC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752686393;
	bh=9FbYpvzMw/mcAKFIs/zbJ5CD6gHgFcSaiOf0Cb5Ad9A=;
	h=To:Subject:From:Date:From;
	b=qxd0aXZoMHzByNCQ3wFvbRIBiM+FByVH5xD5H+3Xw5E53owBTY3K5bFZpO98VLp+p
	 gDzPt1buoPpEoeMharUB8fh8NVeJG4sfJfY3hf61IhNjuR8nnm6cyLkfPVvbTCKwVT
	 h21JzGhErCVsg45L956IuitcQnGXlsXHfF9BXD7u+w5iJNaH6MDNvo07fLHYhJvRfy
	 JK61dNQ/eNr1TUYXBr7KGFSFBpHXC3/uosOojLmQGXwHJdBxOYftWQPHWCsg735skZ
	 IdR22rPpZWPTTNIdprDZseU96qjl+PNrWnDOlOb+u5y7p3w3lehUNJsZy47vmjCr8F
	 J98KDb6re9HoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ABEC83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175268639357.11172.10334490208251123839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f694b8b960168c18d6eae7885aa7511fc89df1da57927fc547f3fcbee881c936
Date: Wed, 16 Jul 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752686393
