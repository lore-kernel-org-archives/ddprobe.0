Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E1F22258E
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754729394; cv=none; b=ejjXRk3zb3MGSb2YmDx8yTdyxt0v0WaX4V+AvyZ42vXwm2ymttZpsNwqh00En+1prrcBEPrawdt0zNOHIn5rkvGGzYKCJF7YNs13asHreRXoeLTQCZJniJb66et1AgijZbAOVnJ9yCaGgsf5kwzgvwfkFXC9ydFga/StjFElpH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754729394; c=relaxed/simple;
	bh=Trgy5ODeI27eG2D4epfbHsZoBb2diohI+d3E0mJ3j1o=;
	h=To:Subject:From:Message-Id:Date; b=LTEqTR3DfLVqHtah+DBY7bJwijKPouHpc2T+1zFOaUseNg97UQjQqBJ79nIYkUfapi359l2fnTpRbUAasstw0DLm0Wz9tI98tVJAOJfDjl4hg31xMnLf1+o6YKSLmJ6LYiVyOrLHCIIl4Q25GEMDytKFjFRl7Gc05+irWzZFBX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AAqSh6la; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AAqSh6la"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2D8C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754729393;
	bh=Trgy5ODeI27eG2D4epfbHsZoBb2diohI+d3E0mJ3j1o=;
	h=To:Subject:From:Date:From;
	b=AAqSh6laE1l97t+B5NbdGxOFv56l8W95ebyR86MjeebzFe+mrDWohQLxtFmXbtOXr
	 AAWNaiuelT39RyIT6menSQ1dktpiNJsxrWAWG6dx6/v8hAWnGFDVp/WApTBLmJ+Ejs
	 zZ6UPablaywKvadyOsN1HZnf6Z262vtZTfc30gUBrwqT+2YDVYf6npImreEO6w14sV
	 4dQOfwDlK04ouEwSoqEJqdYWCy78KRB/L6ggOKCaThHbFEMAMHunzDc02Z1FO5vGv+
	 66F5wnvm4pj/09ZkXxuQkpbcRGSdWWzKmMUYXvwfbaAhkedQZvuw30zuubfSULZmpP
	 KXNkDE9RkoYJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91597C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175472939357.9718.15687751007727525909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebc2b212bdc84affa09fa12c4315353c5a159e895273ee7632fb553f99a12854
Date: Sat, 09 Aug 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754729393
