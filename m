Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0791D18872A
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771993494; cv=none; b=GSnjywHhHDCm5ZxAnphIt/zUH4YhI1Erfinwqc5+3PYH+WWdAxohLO8MgRypmDlywvcmkyK5xCWCx/ZRz851nBUbZi8jNbHOUcm3TN1tvPVvWUlkPwTWwRcxqvT1BeWsFLdQzqRAfxmNOa+PerRX8QLWV2dEmH3JbExnr6zsb2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771993494; c=relaxed/simple;
	bh=Ffut5UtGTy5ecXAkL+sDuaarFpTZ2Y0zqGa90iB8VgM=;
	h=To:Subject:From:Message-Id:Date; b=PJFBszY+UNdFVIcY0VhI90ZtjbC554OxXQJC6yCyy3JVIgeCPMpeuyR16hOiZKw0sDrewHjGvlltw47b67PSNCli9otZwW0QZRIDvNXBkLdaVG8kknWwDXCEp+s/Aaje8W8IGlthePSWklF/1CCM25uJimYtaOThSUOvBYLecQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZPMfRhxk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZPMfRhxk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68D8C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771993493;
	bh=Ffut5UtGTy5ecXAkL+sDuaarFpTZ2Y0zqGa90iB8VgM=;
	h=To:Subject:From:Date:From;
	b=ZPMfRhxk3A5kHPw+YjTFafV6hp5+ZomPqWzsPvWqsZnY3kBff+vyZY4YFKfzs9uDJ
	 iIeLFuexzpx4SpYRygulTxh9VOd999ZBGNG7DiyKYurdfWh/qLIMMbaewpgI1yc/Bj
	 6wRRdhFV6OTFSgwJsrA02QDypVSKMGqrj11iSchR7p9nk42drShpkwjdlKD3F2t3Jq
	 33W1peSnRlboJbMKPrh67U/IKFg4R4HhxNT0KE60AZmuvHm2hMUZBlRsynr1bqYwWL
	 r4kdqPR0wUGIN2UTIb1weErOFuByQHXUnYcx2GnQWUcuBsVH3HE+QZ8ZnDwzrcGTgA
	 0VkLEssbXr/Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E26F55449
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177199349358.6436.7564004537622382879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57fe09822460827e9f041c8f6bc89d06c20eb064da661d7ed59af16965c15a8c
Date: Wed, 25 Feb 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771993493
