Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245BE32B983
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770698634; cv=none; b=GGhqIXEby+/E/R0VclQ6bdTrVCMU6jD6Jwf+VXpx+OWKynOdLITBGg/MCTfY4xNJ3MJDANhUqrhstvc9RfJm2czq3uu0wYkYKnepNG17OKBuahrGr/BA29xjxK6/Sr2Q28RRXpIw7p3JIs9tr3YmlMAF8IluEzdHVvaGj/ZYOV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770698634; c=relaxed/simple;
	bh=h3xqwHBeeit+B0MBLNVlaPBRW9nL6FYDkv+bqUjKIQw=;
	h=To:Subject:From:Message-Id:Date; b=g3c/N3syXFufjpngQ2kYrokDF9FYqg9izWMMH8QpaaOs0FADbLaCHsLQTeSAxR7PbSMw2fQwV3JPucHD6MYkNP2GnrQYZ5NUmokpu58HSyyKizV2WxEmZbKRQxaXtiWmyiOJVeP8CdD90Edh65uHLepONrqgMRUvjIgeU6FkRkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cnj7Xamo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cnj7Xamo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7894C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770698633;
	bh=h3xqwHBeeit+B0MBLNVlaPBRW9nL6FYDkv+bqUjKIQw=;
	h=To:Subject:From:Date:From;
	b=Cnj7XamoOyHUPbt4s0lbRYgeJ8kJp3qmhivrl5mIB3tnk+pVHQPfhRbp/WHXHiM3A
	 9s3XJqOkLxLavVnoB3Ayan4uTiwfjfA2AwQVhPcffbcmup9xWgo3xoyJDW0MfSjDWT
	 wWiwU/5Lz7etvBeaiBYr48IgeRTzzFY3bxest1kkQj2Iabgkiyv1K8Ase7cmQX1ZSU
	 ifRQiC/w9ZWk5L2QEAM8DMXWoXcrG6/fCYrR7UKplOBImJXvMs11HCNIRAKBH8CR3V
	 zNI4A5NfAczvOHA/4LfXJ5QzTXouCi2wx+Iiz+0fiZBr80hD80UNOpNuC1LabvuPMv
	 GqEDGQyj6OpkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A500BEE6B75
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177069863363.19905.15848653060622017051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 070548fe87e4b1cb33b3ffbdb565b359adb1e6c28858c56ae9472b6834ec76b9
Date: Tue, 10 Feb 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770698633
