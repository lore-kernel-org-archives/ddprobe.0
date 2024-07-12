Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3873B4D108
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 22:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720824563; cv=none; b=NAdahNb6aSltmeI37o7t6fnGsv7C2UX4HNGcY/oHFxtGOFGN2G4wuybxWo1t/6Z/RFQkbndqRU16X1m1Htjafj8gfPU8P66deR1e6wN6VoLA5JeC0sk8haaeb+9kIcJgSQ1oCT71m/ujVyucuv9Xq3flN1e56VV0qdqBQQetjCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720824563; c=relaxed/simple;
	bh=VVM+PSnzg0bt35GfXkggMJQJ2W5ma7S173ja4QrIRFQ=;
	h=To:Subject:From:Message-Id:Date; b=JykeZLMMwLFLx6H7+CPdElcd/SKp4yiSvS9XZgVUlAsI1dt6a5Zeo4ow6m5nxbTcvNX3cOfGt3gyD1VL3U3Lw/buARjlpjWnTHrNBSSPl5jV8/5p5wcBHTlcj7FapVVwgTS7xwCmgixRreqHShfTkZ420PyFF5glSlbIhoLyauw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aub2cFxz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aub2cFxz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE1DC32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 22:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720824562;
	bh=VVM+PSnzg0bt35GfXkggMJQJ2W5ma7S173ja4QrIRFQ=;
	h=To:Subject:From:Date:From;
	b=aub2cFxzmdzK0C8Esn+ogVtZyZkF4tgq/o1LVhZWV09Tp+7dhC35Exo8dhE4RIKCw
	 +86iSqAreH9PUzqsqaIZT1BAPCsNspv+/NOJZXDaTzLrNikCw1rwRdB5FjyP6xe+kQ
	 E6VZVF9mQCimVaoOl8CgsJ+rPtyJ8P7Tcwfr/mbtZ2YujJP+cxPhVROn7wZKVBDOhu
	 lD+RAqKuiYkHTWxrctYkfRK13UpqjueI/p+bch1AmzEpCwbBbRZfTrsI+xsdMTI5Pq
	 uD95tRKpJ2FoH0rd8ALdigA95hKgM74Pq8/oReqS+ae9psvHm/DlmnyNOhU2ZraUNM
	 zlsBqWgwq4e7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBB73C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 22:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172082456276.4173.13423619473288213764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3288e344e09f1f5824e31ac424fb52b3d8903b3b37314de125cec0deb0dc5e6
Date: Fri, 12 Jul 2024 22:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720824562
