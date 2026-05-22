Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1143D2882DE
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 22:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779489154; cv=none; b=rqiHig+OL1kLb69SvkSt0/ClgzXB8tu7FAkgSV2atqgrrhJ5hCoBSfz9bZaX/oDIPOLzjFI5Clz5xdJxtv5AaTK6EsdROVhNWSC0PeU0xch+Uthfjj2fbY7n0UNdV1d5IjBIiMRmrwle24KCpCUa/YiN4Ftu1NlkqVJYu3vxyyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779489154; c=relaxed/simple;
	bh=EfQIuvphy6ZsZagB5/KdREsR+5i+Tm4HeLS9sgY9QJs=;
	h=To:Subject:From:Message-Id:Date; b=fFPyMjqpV5GOHxwvogdjgbhpBQ9uD9c577sNziXWDqTZayxVlLewMcI1uanB6VamWghHFGY9CXLGf17j/Xtk5/Y6ZA2VDGAajoDpGlWxaCZ4B/hUcmPB0yLRVBDxB0vFPRMR9CMVFIB1Yt6RXq2VPkO+KPpRz9mkFHVU54FlVNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZIxyqGJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZIxyqGJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C033FC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 22:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779489153;
	bh=EfQIuvphy6ZsZagB5/KdREsR+5i+Tm4HeLS9sgY9QJs=;
	h=To:Subject:From:Date:From;
	b=UZIxyqGJtd8xaUaM9sSSteEH0vwErEHgLZCrmbdXsz9sgfDRA3PEYGcvg5TMTlXj0
	 r4TfN+fXakna8Ros+ySJ5cgpC0fCTEVIIv37Ty4DeLoUuoa2RiWh9/ODOU30XHlyh0
	 qAorj6WlHiZMUNfEBfIBEfaMB3hiZL0c0aySQlpmTx+QbV0ik5mhs10qhs+xTumAjv
	 CAIf4J0k3MMKJYI429OzmWrkR+x4Xul3bc06ZkpBp34urdOyS+CKionNgW9Ez/5LcS
	 1iqAp9BAACLvjiNrX6gjN5+LmpU7EfRZVxJh8xDvoK/HHwIQXsQLIvnCLG8WThHtPt
	 ugaI1O0OXdoJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE581CD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 22:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177948915370.21278.4528187095231627770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37cdd8b7e6a93887a5aff87f32d1efb38180ec5c2c6133dc537e68d61b00fb4d
Date: Fri, 22 May 2026 22:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779489153
