Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555B72E7388
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 17:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780767274; cv=none; b=WCx7AVj0i0R+FEN82HszH1cvgrTYW07qPhxeaEOeDJpokK+kwDJ6cPjff5KGJm+kWww//Gch0OVy6IxUe2toqRD3qBR3o5eiVuZ57QB4sOCwnzgvFnCjUs4ayquS5RTbjv/RHzMQLfvC9z+eQqhpXZDMZLDFkbLTNa6vPOBgayo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780767274; c=relaxed/simple;
	bh=sWOwh6P/9eHSKhIdow6u5eihMbg+ey48cf5GOKI1N4k=;
	h=To:Subject:From:Message-Id:Date; b=u3baXIlNiDmXJHiC03u9aTOdACcwjyicrDL8T8TDIhDbRd294sme5CB3fhGfTt/PXO4YVNep9MQhicCcufAMarOrFPXr6hArCJCqrSrjLA1UTHF/pDK7MqqlgMS3MwYNdiuDncY/EOVZvZUASiAweAUaUULVFxQNFSvYfI5xSv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dgkafYcd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dgkafYcd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3069C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 17:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780767273;
	bh=sWOwh6P/9eHSKhIdow6u5eihMbg+ey48cf5GOKI1N4k=;
	h=To:Subject:From:Date:From;
	b=dgkafYcd3Ji5977yTh0Xyc/x0hQ8BJWUYADJ7rbK3yg3GbNTp1TX+VeR+M9zgB9UH
	 xPCf5qly8HI7Yhr8j1gVAGhuAFdelIb2FuPQm9h1cArBVztr0xifGKN/EOS02hqV0A
	 d99d6PhmNXUJee9GTZfJJuF3ogyADcUYQ9y5QIvx/6DbywwbiVJzZcknw71zCJk6fy
	 MV9Bfir+t9rvBZXI9sVkGGvqgN3fk+MlsjijVQylhHuRQ0l2dKEqyUVjfzUrzBbN9+
	 vawjXXywbO5P70lxfVeWRLKmx2t4duGXI86wGzuMuyaBCpfMdErcPKxVBg7o954rEV
	 /rafutTkYNZVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD773CD8C8E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 17:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178076727368.14297.2868212031916116869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0c5ac45e57cf73c41e3015b3daaa80e7c489c22c63a0f7ef58a80cfcdd7fb5c
Date: Sat, 06 Jun 2026 17:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780767273
