Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383421F130F
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 14:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741877934; cv=none; b=Td7Hw6MdjulQcZQC3E6dDioS6Wve4cFKhasi3Vrql534TBKZqoPQuP+u8aLnUEKKFHUC7ePwqX67GAYz1uMDYs6puTjtl7JktbgArlBOxuM9pIfKAtAOmqd1arlTohB2ZHfSFkPegwpiZCmGVEtQCrNdG8oHAwGeoa7nabuDmFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741877934; c=relaxed/simple;
	bh=ruhY+Yi8Bbvh8dhPxMcHwWPMj4FV26n7Ozkv+FCoM5Y=;
	h=To:Subject:From:Message-Id:Date; b=fJ2Yt74Ey4Wp7cQPYTsLGBzcdff53IXs65T4oXnH48Hb2/x2In9KKyBNvZKBk9GXOOYw4H6rfWshecSrGjmvPMhVhkZZfbwcrglt4A2xTIEsdrpCZ8ybGuQdPtVxf18m5w+X9Lyo5Uf7XLy0pgXIB20kXl/w+vIoaE4MLttV5vE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r5r29WmS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r5r29WmS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B34D4C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 14:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741877933;
	bh=ruhY+Yi8Bbvh8dhPxMcHwWPMj4FV26n7Ozkv+FCoM5Y=;
	h=To:Subject:From:Date:From;
	b=r5r29WmStILiwkn08Z2ls2L8C2oRwGPt7do+3xcTsy7ZSPS2sqIgJMkalEPUATIMM
	 YmYgEUHm+jZf0eQ0M6tuMz2mNU/zvCIkc/+Wtovs3vPNK+H6H7tfaNHRQEcf3/PZ0y
	 Jchd7eD67bTxBbt0rN1IHVBRMkmlctoRR4HZaSy6IiNYOHkWwW5RYyyqxHZZzrLiSj
	 qz/yiedmV9vdLLqYl6fLKksuEZ84rnmg2nDWzKcna+01F9+taVIUwhzvt23z8x22nU
	 NSHghJFH1Op4BMswkBIV6fiZhSUA7ahpcD/obCPk7w6ndh4vrQWjsvWGDakyR9B/1C
	 1QgTiXXnTV7LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFFFC282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 14:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174187793362.23996.14302373270245538018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8de8a499bf8a629965a45613ac6b59e0f61be29bb10b357a9c806360bceadb13
Date: Thu, 13 Mar 2025 14:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741877933
