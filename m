Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BD7288AD
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759381794; cv=none; b=ikikEzleCLOAY/w6/sYznsgXERjtaTfENQZg/j7bK5/KlxiEvwDxptPmU5P2eWPjPXsTZZPvGlzRwdUvFPauITKt9E+QohZ1Sn0QTj7Todk4NUa1rCEbG6DpDgh/yGErUCHpnGz+nq3quFqJ+ApdFaEQuKaDtg+O5ySSnc5GEac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759381794; c=relaxed/simple;
	bh=eHQvcuQ6FnPpjeMupbr4uV1JX0tcLo2Qv0kY6g+iISM=;
	h=To:Subject:From:Message-Id:Date; b=mS00AuIyiy2OQ03FW1K5ahszfcff53chPrQsmsz28AbbOs8oDRhZD7iP0WceI4hZlZVWwG31eD8RKTOnlrmIC2h1e8zEtqZXyj/QZYvo0Di4X6XUhzXTd60UcckMJrGx/Lxct20b49nWroIHOQratsn4VszW7d/Ob5mvhJpd8Oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LFs8/2ED; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LFs8/2ED"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34EBC4CEF9
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759381793;
	bh=eHQvcuQ6FnPpjeMupbr4uV1JX0tcLo2Qv0kY6g+iISM=;
	h=To:Subject:From:Date:From;
	b=LFs8/2EDfkkNMXSajnJTNKM6Iu2v3rSB+PDSBoyHIJFrrTM58Aqoy1ojLSpWfEbzM
	 OaKrCgGw+XE2hKaVyr+gYffuieYRZuZa7ATcgel3t6b5fkDk+1k1At+lgTDqxnSDEh
	 /CzFy0tt/8CZIm4niR/DYIlMkMuHnBw47roj0EgAoRPkDYhrBPgBAAvlWbaShJRPV5
	 GR9WQEHnRQwr6q7wBR0TSvT0WILWtqF1Bo3xUf3Tarr18UvRkWoEg984xt04KOTjh6
	 /clnsT9TAKWqC4Y4SrUWaDBy5aSbiajLDREUCKE0V/WVBBAZH+nRNus2fVGjgfpZku
	 IxOHwQmjiCGkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FE8CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175938179358.12137.11248316495625089145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e4fd3562e43f5424c044d9c2c4fd23b76b58834e1780760c5a0252e9c0e7963
Date: Thu, 02 Oct 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759381793
