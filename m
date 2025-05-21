Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3080625A2AF
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747829394; cv=none; b=k9rdnPXrHWYmAgJVAIIGvEhkr7IK+kMfJsmEb0yLf24rR6iaHw8cnrcLkKRRGe4hSPCygb1n+3OvyL48xtovWoYgjBJQhd11r/9wMTlUq95Egc77dd4Mfbk+AujN6NLZ2Zd6Rdfh9D2vDNWzLf7pn/fJ87c/15rZ9isDpmdg6nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747829394; c=relaxed/simple;
	bh=VVkoCaahP2o5ccsbDvPALtL6COZWmcdO4wxIeZMifuA=;
	h=To:Subject:From:Message-Id:Date; b=e/uoyyHIw1XZey1YrCMjfQMh4oxACJQFeDdM1r2RcnjRtTJU5UTm5vPlfdvKC5XDtUyAsNrh27eZ2Zf4/PA8FTs3eQd66azHxG7MMU1ke/xuzzqVw3i8QGLMZ7Sh7vtqOcbJUz1s6DxOQEKKVsSR+bUR+XkZYYB4ZThddgjjBvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F1H2obbF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F1H2obbF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1081C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747829393;
	bh=VVkoCaahP2o5ccsbDvPALtL6COZWmcdO4wxIeZMifuA=;
	h=To:Subject:From:Date:From;
	b=F1H2obbFerT9suJTYfzvbFVUXTiKD+voXvuZSiYf4L6zwFNBl5VJPW9DFB4bWSB7h
	 o+epHAJwg91FXK7jHHXIhKjgVVGaVodRKpplPlfDuuwsge+R7Pi7ZR1EnMBU/SIX4X
	 41qJw7jST3f+AnYpZJ/CJdAZ1TcdjeXEPdx4UUqT7f2j3RxUyUgWO53Mrtdt9fpwBc
	 ZRbQAwEN8+Jx/rqQOffbLIVUrugADUbaEFL/qTydBahDBAgFWRDQCAgvRCCv/jA4u9
	 tmHzCh/ZQLc01+plY7FhMQ5h5rfPfC9SkliA2iKE6yR8uVq5bUin9rboBKRtOroOK3
	 KkYsEI44ODbcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D6AC3ABC9
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174782939357.24431.7317144635819046388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d938a8307c389144a1f17df5f48ac0f19f955a2762751fb5f8150cd20006d10
Date: Wed, 21 May 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747829393
