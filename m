Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 624BB242D70
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 18:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781981794; cv=none; b=bbRwiv2I6IMbrN3FTEeDC+RtIB/qc+z9SzwqFVf39ttXs87GKQX8cjJodo0VF+Ha15LZSMpcOP605KkTK3xUffmrXtDmg2pAPlwvxgEf5LZjnCxJncw5ul7MJqdYiVTFnprwu3aXrmn55CYDQIZPxbteJzkJjinYvmb/8gdTxqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781981794; c=relaxed/simple;
	bh=jXH90yTga2nhC59oLbGS+xzfsTEPaWU43sc2U9XFOQk=;
	h=To:Subject:From:Message-Id:Date; b=oo6w7zbESIJdeiEvFcbB76YXMKjj6ci3OHjMKBaUa59cs9Iapn1Fwg+91bN58p0PxfWVm3hd5XgrtDQnvGff68Bc0BTmQfOogWejPRdE+jyXUxR5Aku5KeSvKKKPAOhjMYH+MCCYTm/1gvrLNZ20vzyCoFh6TC+m/n6sYBZpGxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e/7bCno2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e/7bCno2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB3EFC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 18:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781981793;
	bh=jXH90yTga2nhC59oLbGS+xzfsTEPaWU43sc2U9XFOQk=;
	h=To:Subject:From:Date:From;
	b=e/7bCno26R+efOM+uB8b3PxQNCU0B0HPTjVdmEvbT6LrnGnKbKlIvB68iOW4L3yqE
	 J2hpSH3kWtC00bCKWQoXcWe4T/Il25Ww08yOeTFAK4xB5MEtv5AuLAKN18fV5uBQHP
	 b77/ja1wW+6IndaNBWj6Jv0IAb7XKEVp3WfIq8OUrmNrktcU+ex16lzkMjDUZh4+rZ
	 gvXLeD7Uakq3zMvxazcGdfJ9zJh1sovE7SqBud+jxyDS6dvfFm3WKtAplmN6FP1D1t
	 EdqMivL8rOmEy3MXdh36jNc2p9mbMI/QGFP9kUd8q+NWkT2uLz9k9mTB7Rh0xy6bTd
	 //Zo2vFBnRoPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B59B4CD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 18:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178198179370.15889.8607256385112740585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40149e9432931b08ad2141382770f26e704c1b5ef3b6ad650bcfe242b705b03c
Date: Sat, 20 Jun 2026 18:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781981793
