Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4570F14A60E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 21:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720472783; cv=none; b=OIGeHkMQ0L4Z3aQ7XCITh8v3GF0acFDwNffOw4d6HUv7Y2lJkpBxp4mlTvEVyxb5a+RfQ1OaWSPS9TOVL2pZraqOoJh1XiFpNw1wqUNNb4eKbIIfioG1CDEa3CIs2LgjtOSPinR+a/eZeWjZDCv2s/9tRkRkw1QJ/tWJG/Ft8hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720472783; c=relaxed/simple;
	bh=zm/9Zs2rlKHGFNdmvEwlKhGb5gxWgFba5oiUP7immNg=;
	h=To:Subject:From:Message-Id:Date; b=HeJc1HTV3QOKB8ZoiJWov2CVfAe7qlHwzaAuS6/7HpISRjA0jdC2hgnwcN6pYjRa86ZZGED6Vczj9sUvjJWUCCVlkFNDrr/8AO3JYK1PoYrC6AfmEgY3UWvcsluGJFibVBEv+0TlfreXvWWZuofc4Ybn/W7xMUTL3m/TTOjhErI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZtALiCcq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZtALiCcq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6CABC116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 21:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720472782;
	bh=zm/9Zs2rlKHGFNdmvEwlKhGb5gxWgFba5oiUP7immNg=;
	h=To:Subject:From:Date:From;
	b=ZtALiCcqkXlriN+zdmVsX/4iC/glHBYLyhTjhkMN6IG5nF74WDMs77p63BCQ3Zr8m
	 A7z0wdVeFGbzmGT5PCw/xWupf2x63RG1ZnYmDnhMTr1dLDAD2eBjnpEfq/HmVRhzfk
	 JnvrZxYpKW2Sna8yskq1eFMc/IdU7a43E7CGp52HFxu6yWoRjY9U556UKg17yWetY0
	 LK2b6SIm+vz3JWNszwQLZN9h9mWDeKtxtWHMex63CFcW6pNLoNkEXO/Bkj8hK4nkTi
	 quCHsHHQQSwXwIpDHBfu4bE3cP1Rg65Z5cK0jxdZWtAon4yd5q3NvuTa+oCw/QSy9O
	 QAkcVNIQQRLOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C422AC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 21:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172047278279.14730.4514536338520425964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a682e3c50619b856e13c39c41c966341615b81f9868203f22b57971afa5f9abd
Date: Mon, 08 Jul 2024 21:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720472782
