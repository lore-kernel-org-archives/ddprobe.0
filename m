Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4183C379EE4
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 20:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775594134; cv=none; b=X+0XTW0Lp7EBr9mrb07OE6kfkTfU2yPAdpa3GnHKY/ILfD/56E8ttdHZ6P4ghsAU91EM3IK6BFft/zGe2eKwFxvBkaVh8f9W3Z8d+aUaOZbX9iZPpJoAkpv5LREB/kRWPCTzPYh4CqDG3b85U30JY1ynyAkhpytka3mVeRSPVww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775594134; c=relaxed/simple;
	bh=X4y4RmAcaU+fQQ7G3ZPwghyxX1Lr1gdXC70M80E/K38=;
	h=To:Subject:From:Message-Id:Date; b=f/4zbupPCvj/fl8fUWJ8zsQqzfXjNNOQUPi5KAj5YI2xwZG6oEMxOTkcncm+PqmNMDRfUzcP/NToOz7tbn19emgzAWgnuLZYWR2bWV8kEF7g1iIVbYD5uaBpV1RQhIjqV/7ghFJTd84AD57Bwji78SRT1suAh0y18aexZYNdYdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PgRPW6hc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PgRPW6hc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1AC0C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 20:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775594133;
	bh=X4y4RmAcaU+fQQ7G3ZPwghyxX1Lr1gdXC70M80E/K38=;
	h=To:Subject:From:Date:From;
	b=PgRPW6hcxIqTUcAkY81SmuV3/Dau+CfJzRyiiyP47lK4ixRTTnzZtF0fKBIuqwJk/
	 j4wWIiwJGMYmBtEL9fsJq2JTGTM+VRAYh05Mxe7fTaFmw/tWfmMQ/WlfsT2Fm3Tst+
	 9aasfJJpBn1XL9whgECsmh55nr9tGl8+r8C2p25G5A4YLGhndK17Ip7sIQy8io191n
	 vdaVTe1suDmZCq1QjHQygpQnKlCOtzkHXiMV1Bsw5z2qBnr11bYGD0nMO+5AvTMRl9
	 cXvvaH+GFbat4LAS7k8bQS2NO0hePMKoer7dorLjrb/73e6B8FqllNllxONk+4PJe3
	 WrnkzNbKaapJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18AAFF513B
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 20:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177559413368.27193.10096217529917918321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24466f0136122f8fc86f0c155cfaad08ce1893f756a971c6197773aa8b5249e1
Date: Tue, 07 Apr 2026 20:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775594133
