Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5621F1313
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748935194; cv=none; b=SpvPH4v9pd1aOn/amO5H7bPdc5sMatGEhS8WXfNO32LwpYb5qBL5dSHK5Goc4AbVNL5uaU4i7lwVdrcakT1e0nGcO7K5WL/p6jh557BqhG+zyrWrQVQLZ8YMUz2W12oe5GHjGj2+a6sdaqN2+kl/A+BzY8WOJn04gpJXNqJo6VQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748935194; c=relaxed/simple;
	bh=uE1TBKa1jMIqDY3iars2+weXMbDxvMegi634u+GnZ40=;
	h=To:Subject:From:Message-Id:Date; b=iITmqjF5WbToy5BiXcgwCZc+HBLU0zcx4XK/uToeGJAOguzbEe51j6VV0Ken16yb0vh+Q+12uE9DZYu7WQbbAG+1YoUG1ODQWJO1icqmx4ms7kAxWaa4Nvz3Fp41KXUM5HFgZbGDt8/GgFbFOw+B/l218E7a6hoyVVBLKV4AXiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gzgRRBKX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gzgRRBKX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B49C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748935193;
	bh=uE1TBKa1jMIqDY3iars2+weXMbDxvMegi634u+GnZ40=;
	h=To:Subject:From:Date:From;
	b=gzgRRBKXDwJXhg82/HTChfCoZc3dtHBP2pPqCqjuJMQBAal+dR5O+G5Ts5/lQcxd6
	 VQ5fIC2z5Rz4jCrA/Osh7TDbMEE1CSNpLa0aiR/2GJsfpdNrFdMBFGY3IXuTWGu8+q
	 8as38CfqW5F6445kfF/pvw+OBnfQRloTr7H1tgYqddKE1FVKc5MoVDbQxIpYyJT+XG
	 8vKc+7nAKEz9eBEGO2GLGnHpL0tbWbFhkwNHLE2TepVdveb+pz0EcWp8RLI/mUS+pr
	 eR9rqTp56A+j1sopXtMI+jwzxB/L5vOZtgwx/3aG3KuhLo/Hv5nD5+wtZ2IrUVgmrS
	 pLaUlf8AXVzUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9503FC5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174893519358.2973.10001333166413342201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1f2761d6db1715a68fc1088607b8000d78e8fe4d3c30981d393dc9f48b7b353
Date: Tue, 03 Jun 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748935193
