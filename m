Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9141FF1D1
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756396194; cv=none; b=O5RAhPle86Nvcoh3Mbsg2KFJY67s7Q6xt+i8x70QU85il2z+9dtwvebN2IzAMdbkOAa0C5Txffzg/19XlRfFZUDHLp538NyF4raIUM9KqtH0Ljp3++IwAnXDMXTi0IIG76kOfLdgldwzC5V2cSfajKwk8SfLruBSy00saFQ8JNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756396194; c=relaxed/simple;
	bh=yfMvnGuBnaJzD1hQPYwOBQFKCG7q/mBJtw3a31aoyDc=;
	h=To:Subject:From:Message-Id:Date; b=FbVsRF7Y2YhOvGDzr5o0tX1qML3v7yekUqfoMF2iw9r68FNs03QIUtmeJ0psvQwv1fc+LHlBPO8Nd7qkEbOBwlivHeNpoQay9fQ2J74302bnNSWoT2ZSB7ZdQvZ+TMhkEAcaMXkSSeXYbrrCfq6hMLhS+sULEmD1PqpmOK7J7x4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ooEsAAAt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ooEsAAAt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B441FC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756396193;
	bh=yfMvnGuBnaJzD1hQPYwOBQFKCG7q/mBJtw3a31aoyDc=;
	h=To:Subject:From:Date:From;
	b=ooEsAAAtK5TySy825idGc2muzYyx6kW1bMSRoZ8kxmS6dIRr6a1tFB2oiUPXrdRBK
	 2awPZS8yiXZ2d9KEtuNHrAGZhC8BKIXmWXszzyo4P6hizqN3wA6uOwzfJlkwuc3KGR
	 3AKPOdUSQ1v+5eTGiazAT1Eru4dKoOfefTWtlNUG32FXRIEEZ6ff119JN1k23dJDZp
	 grFbsxZERy0uT6nOHPJ2e9jf/X1obD1Zpb3Yg0v/yIAF5bk8CpOVE4F0/l5JCvkc8T
	 T8L+6qEhDhH2+Q6HnX4YH0w/e2uw7lOP5rgAncqB7sgHijV+fbIjZXFx+vVbVdwCmF
	 vYi0688q8QzdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FCE7C8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175639619364.16998.7556942450695106179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b27c02a187cb6bfa4a117bf05ea143cf480b445ef15b9010e4af668b42ed6fb
Date: Thu, 28 Aug 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756396193
