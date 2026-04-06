Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C0E28BAB9
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 18:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775501134; cv=none; b=bIrwfr6N/uCj3eLzMaTpUpLsnFrtZHbnTA6BAMuqQTnVMNyBD/6P/G86MzkiuEmFJoGu1BoMt0cbRYADTUVgE8s4n3Objt3Sf7Yvs1DQgnK9UIm/Vs2rgZQwfMAqDsvhTqCUYQPEfyUlQyf0XwLSjvzlY/6iOC52m1xSiBXkmBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775501134; c=relaxed/simple;
	bh=sBSgooSoTJhHdj0zrbtly2sAXJKcvwq6wByN1qQx3cA=;
	h=To:Subject:From:Message-Id:Date; b=YpNWFoHyGU74kNKYgrhf0EpNjE116v3e7TIICcABLWO3B4Pxd4USccYaSlxrzEl64+RrB8ZIKLH3+T6R6lEKpEWvZVXbcQGTZT0Ggbk3gDrZWamAG39EjQdjp0AQERxVuOXvlXz4QNMAmn2Vtg+Zlcpp4+rblDx04hZW/jbphzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYpx1kho; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYpx1kho"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF6CEC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 18:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775501133;
	bh=sBSgooSoTJhHdj0zrbtly2sAXJKcvwq6wByN1qQx3cA=;
	h=To:Subject:From:Date:From;
	b=lYpx1khoTC178w4QkBs4tfPPRF+dR6/C1q/hNWrf4uj7yeaNHaQb4ZZB40Fp/0RBh
	 ghN2HhWTDr2UAASi9rTX0TJJlLG686Ux39Cf3RU71sVZCut6g/2nMt4Xw7ir3+Xo4g
	 PQiOeBJ5EUgkLR+4Uc9Mv5zazM0uO6PMlbIQF6HoRAGiy6iRWjtBCUbxPAAiOAiKaT
	 JBdIjDuwqSF46u/1w7PNrzWf1Ar2il/QFG/yDgN4HrahNKH/Q7LgDYCRvNX8E74Ziv
	 mBaM9482QFujqCPks3oZLSYR0pJ9rMyQ0tvctMOCNU3dlOmtaicokVaYKI39/ulnJ3
	 psPSi1fX/VEPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBCCF46C66
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 18:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177550113369.22287.16625491251039615453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e754b4d39df4b60ae8024b318b933b6e74990cec0fb4d288edc5d989e9d53c5b
Date: Mon, 06 Apr 2026 18:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775501133
