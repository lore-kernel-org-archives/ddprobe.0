Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D78356755
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 01:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782871114; cv=none; b=a6YYfZ6Pr0I8pgvnhKKEyWcmMN2RokS0q9E8EthccZ25UjBeegl4k+A4DMo++AlZ+uPFkcFOGw+F2ufRgFyNCFY4yOCpOheLv1zsK5XCw83KhVbCmP0sfdRQCmaPbhg6h9Zg3GNkYPtBJk0eQidRzoIV9kIug6Gh5Igg4YwWULM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782871114; c=relaxed/simple;
	bh=K0AamhmV3YfA5n+p3OH/8pFt2CF0h8OnV9+DlDfRLyk=;
	h=To:Subject:From:Message-Id:Date; b=VbVeJ05hk/RGQDXhBCeb9gI2PzSZkvbP6q3iqkFRfaDT8cGGKRRkpeeLg3hACIYdbpQsZlRtL4vX7Moy1G/U/T51OW7KyFl5LpZGErcbH/KpX6qaIPDfyMwWWkYlshq58R0euTbZnGYSAYiuuznf0zET61tpRQ/btOPKP/NiZn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ijatiqI/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ijatiqI/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3A6DC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 01:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782871113;
	bh=K0AamhmV3YfA5n+p3OH/8pFt2CF0h8OnV9+DlDfRLyk=;
	h=To:Subject:From:Date:From;
	b=ijatiqI/XzWkMCwq+aJt6tCDswqTEHWV7pejIjjOnbmkU0HTCN1sCB34Uhjx5C4Zs
	 +HBA8sXQn/SSVmML0t0+oIPOvEs7Boq6PqNu+tsiAcTWfvAvgRyN2cBXd2yzDxn9mu
	 waezmetOM7ycu890kcjsF9prcmEWVbDJYTwHQZ2EQSNbnJRh0/pGSlRf4J71cjcLaW
	 FONMKeP4JXiTEXQdRYRZHUhTxXTIDue4vvKfOQNWAG2E/3/egqc8xzEMGPzvw/u+sZ
	 s2qo8xkJF5VX/xA7FkweE6h2v76kE94Q6wpHsVMyWRGtLT+rYdHIzvv5+orsEyfmm3
	 PK9MzDfaZqcsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC230C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 01:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178287111368.12135.4004549275379720188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56a0a7878a02134e9b6ddfb316781ac46a0d44b89ec5ba4ce95ff81b623286c9
Date: Wed, 01 Jul 2026 01:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782871113
