Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 814A7208D0
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787111434; cv=none; b=pRlM9wICnICZRhc2gZg5wQR09WZrgL+bvr8gZZ1ro6umCfW3XIo4JgMDNS5FKovA5mVIuAIbEtSNlb51DWwiouswFpoJNKaPyow8PdQfGGlR/iSu1YDX/ACVMymeDNbl2L9MG8qg3Y1JPD5XGGAgefiY3FH7uCZDBGMS6MxaPpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787111434; c=relaxed/simple;
	bh=I/dr9wxBi25Mtjpm6gAlzaMh7xgjO2Yz36QvYPAVl9Q=;
	h=To:Subject:From:Message-Id:Date; b=Ny3FAzchBuqTnbjOPDs35P1BZtjXItsSVaGruTgVQbDp+Hlf7+/WO2Li5EpeHTMZ/vMU9Su9MVwLoQninlYFyrN33+TE+IAHeOIbpYIVUhVZ/9C6Rkx5EqzVdnnmwY7/QSFGC538j8XJVeTgIGx/mpzdA4VwtJtef0uUw6A2pk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HxKvuHBt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HxKvuHBt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAFAFC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787111433;
	bh=I/dr9wxBi25Mtjpm6gAlzaMh7xgjO2Yz36QvYPAVl9Q=;
	h=To:Subject:From:Date:From;
	b=HxKvuHBtfvyGJjh4gtg7w2mpljfegw9cQhP/pNi4c67KWphSW7xvIECIliYwXTABY
	 wbSn4pZZBc6nQfgXBxshA0CFJ0uSz6U9dS75p/O3EgShGZQBM82W+dNclrFKSjZMbd
	 E5PqXiyckTj59zCQXDj3Q36rIxymyOxSgR2ekfcpYtseqgVe1R5luVsmmnLJGCUiq+
	 43jmEQ6oBrHUQCzfu/cwcF2lJdcg6zndX1wPMh+oSPKXmCOQUIKxGgwY4w2Cqq3LX8
	 n7R88CywX8fWOiHrRNkQTABpd/QEPSvGb+8kLIGjwc74Hpt4QGvCsX+rwq3rxs0Sf6
	 aIwtPi3TEp/nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD43EC5B572
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178711143368.18327.9448159783924605925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bd4059090959060861b9142c75322ce481ddb21cf9bc90c83d33283cd8dba1a
Date: Wed, 19 Aug 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787111433
