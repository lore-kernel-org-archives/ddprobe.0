Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5176C47D445
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790671234; cv=none; b=KaeG3p5Z4iwfe0Oom6arQ+wxRBDlxAFNNSlPFA4eHXpnrU6NBSd75dV+OE37HeH3j76J0+16jbJuJ4JgpmSmI7KfI83k5MS+am5Y7ZFHpmwi5PHqUOQTi78Ny2I498OaMbO8RANFkg0hAsV76nzPVx2/9cMQ2XblkVpeFCYK2nY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790671234; c=relaxed/simple;
	bh=kBuUQP67qz2dOco5HKAfgsE366uFRT0ZGHdVdm5HpAI=;
	h=To:Subject:From:Message-Id:Date; b=uS/0q1k/5M9a3C7OEBI1y1kgIWpv/8gWSeqryFARiLqMQpCUyz6A0VZp4Rn1KRPVefD3mb0mdrPgy9pzq2PFQo2+OJ91Zqkqkbu26MQzl6TwML1U5SR6J7tMG+fuYpFwCS7nBk4gZIPuQD/5c3Rsrd+6DZuzERInbkRoWzg+uxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfl0jNGu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfl0jNGu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE12AC4AF16
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790671233;
	bh=kBuUQP67qz2dOco5HKAfgsE366uFRT0ZGHdVdm5HpAI=;
	h=To:Subject:From:Date:From;
	b=gfl0jNGu83E1HOwMiLhqABJkjtfSXnhua1Yn870SFo0uXqMRrsSWqb1AlzETF4d5R
	 PTKvyQ89qdkXZEB4M5btr6Mxltdum827sjn+DZRen1ryE1IZ4uCaCecTF7vj3PYPyF
	 Ga/dcDSI6ToFWQjJsIrxbCS+GxlbCCasjbeyqM81LRv3/8IRGEo2kcZFsnniu8LBMv
	 tAge3ZDkyFuqvJzCREmxyydY3HEAoVayOfG/pYETyNQ5Ru+lpVWpfvRt24ak0wZ08P
	 iew/xlqU2OdcNotDIXd517G50r3WXTxoToISZy0wxY5ytM5mbpTmwXzyqKqCEuTsan
	 5BPz47Wjy+U6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBD53CA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179067123375.7073.8200659169190211486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 445ba6de8abda146fe2109da1439904d201760c01254da39aee8cc2688a38d45
Date: Tue, 29 Sep 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790671233
