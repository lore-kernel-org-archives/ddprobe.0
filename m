Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395D025B0B1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 18:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779645754; cv=none; b=VdA8WcmCF8lXb+BvigaFFoYHpDAkB/y9mlAXOIpUlLkgsjonII+y4eLF8WBB7lZXb+RekERC1KMeqVLyc2+hnv5Fgiq9gh7sTLOqVGgSa79TdKUfQDgMW1a/i6vazmfG5lETQH6c/L9gfBt8Q5OJw8KERS7kMGnVOZRBx7I9Zbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779645754; c=relaxed/simple;
	bh=z4aeT1Ni3Zo5a7H6nigHNwSkrRsPv2iDJzLPRgr+ky0=;
	h=To:Subject:From:Message-Id:Date; b=gG5rK5r+GozcvFuwssPbQx+xtm6IgT7z1hega5sVIQF8RKHJWejw4vt0o1ygyl6ZX1l/W7DFou8w1OuezNqwN8J4y8hbxYSTnQH2hPuJd1SC51nruIecz31MPuEpIuXI/eFQbo7ADIekt4GATWl4ij04U1OXRk9Wm8he4B3mxnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XYK4wXTY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XYK4wXTY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3CB8C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 18:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779645753;
	bh=z4aeT1Ni3Zo5a7H6nigHNwSkrRsPv2iDJzLPRgr+ky0=;
	h=To:Subject:From:Date:From;
	b=XYK4wXTY2nHeX1dvFlIXGF60wtqeia517kLfKTwAJHenPKKs5O4D4Ceb6ZEaEWGIf
	 mK6ouewb4Eq5cgcB9Wi8yBzVzap0+s2kmPnO7a4R6YN7f+Wm3Bdpr+Dr/zdyW6SklC
	 Nkkzv1+KF2KO719vU2o4famPTdsyvf2yCxjaR3C9Hx5Yi68qceqg01WPX3CQL59OTj
	 mzVp+WGpJkNOnI8TSimUkNfX7V37oMyq/BH2+FGK/Z/d30XDkg5bdO+EvaIaBFqlHy
	 nlVNRiqINTXNocyvaGIk52iip7bVF4iPIT/F+DpBbDrGJngGKjcpp6UgYaEPFTcJ7O
	 8b3HeF1FXBNiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB97BCD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 18:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177964575368.32495.12087291778359808844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84af64a2eaf7697e436a06a1975e5c5f48457b86cbb6f1b674f4a08943bd844f
Date: Sun, 24 May 2026 18:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779645753
