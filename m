Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE4D43CA483
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788719434; cv=none; b=J4k+Xux1HALJjYAl6kLP4ji04Wnhx3ahl7yJFlh4ddrHrjsjS+75r9GNhboKFMc9tboBMLFJIMS3Cod5KsN0MycOij79Vkpr1sKZ7XGhnVn2uvu24XO9hzbJwjfFSld1JA/5sTyVQpEm4wTT7JxLrfnOniofdDV9nRiPNtxPykU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788719434; c=relaxed/simple;
	bh=l/b1oxVgPN+9f7xap97ClZGdWWSafVUA+209FFpgjyc=;
	h=To:Subject:From:Message-Id:Date; b=toDpPkIOESFWmCGEDloFE0ruqrg/kjNlXY6wUHnrScgcIgBJm1M/EgVs+Utywjd9ty+Cuv/Q3sJPYN3ucfMczuFeLwCadT7LWRfaZKnaOTXAEp3yQl+4haIY3apyTbrTcW+Ng1WcRgQBBdSYQBw6tc0fGG75G45zao5S0aOFKz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bA6ygvQg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bA6ygvQg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE1BFC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788719433;
	bh=l/b1oxVgPN+9f7xap97ClZGdWWSafVUA+209FFpgjyc=;
	h=To:Subject:From:Date:From;
	b=bA6ygvQgsAoBi+4mcxRflvx0WmwyyLyiZKHFYi2FubZJvyf6RaBlLqO4BkZp1oKwi
	 8Jmth6UdaCZhRCwhwq7jbEOjhWcSBjecXLN7oZrPe7FeCc8a3faoWtlDtc3qDxD8g6
	 DxjZ0Wt0OTCtEc5ideWUspiSD+rS9pk37x371ijsKKwxaJxY6aAFfJSKdNNKT4RpsW
	 3qp3TmsvTbL5N3kFiXID3UkmMdiHo2j3JMb8ah8Ye93qJ2DtvcDEqufb1erXIgbKch
	 KitmD8mpnsyZ+PVn+cqZH4XI0Y9F5kgpWhZnBNMsi5Sc/IVH8J49wStomum3FOmESn
	 G2PIBD16aVuNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA358C79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178871943372.28868.17940823122187445465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a9d6e397236e26d6a1fa4db88d07de8e9982a11c317deab77aad36f48bb8e11
Date: Sun, 06 Sep 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788719433
