Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D59142BD11
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 12:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776689253; cv=none; b=OUJQY53ob9grvX7T/Es6AAr/PItHzavwjL7iVdeTvotYglHieALPZtmddaTVVm10F+7WESVFForHS5CPUoK96C4RtnJtai4sOC0dth35sgmXUayR7/wht6WaUTxhzxh8l+3m58JmcMKI0pwD7A0MS4llpfZW7DRJJgfgrgrBOZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776689253; c=relaxed/simple;
	bh=BOfpRESm9NE0g8Ubuip2sQ/t59A9qdq1xy/EvRHKV5k=;
	h=To:Subject:From:Message-Id:Date; b=jFieuxKfAI7EzyKHKc47Zm/PC7iX06LekBkwFf9QmQFrAJA8NyCug+9BjZRifaTuPHfV70ClUMNirOgx2fi1YjbYLBkgkXWFNhiHK5Sw/afDuzWOiSrbIVP1phzVd7c0e2/wVgSoMAgkUHfZBRNhdFD3rBE/UpL1TaevA/5FEkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B312+9NT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B312+9NT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7829C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 12:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776689253;
	bh=BOfpRESm9NE0g8Ubuip2sQ/t59A9qdq1xy/EvRHKV5k=;
	h=To:Subject:From:Date:From;
	b=B312+9NTPZ4q4yePqwU2wsz+ZeMycBftW/teZwlZz6g3l3AQvf/AyhDrM1kaakr4z
	 qrxs/50of7kEKR3i0738DHQHq8SiYrv8uhnQ2c5LbyV21S+7B031X8/VY+Sj5qyhmO
	 7vSqvjZ5gRd89CE+szT8ROxv4aHCBjse25Z/87DZCjVDLgmov3WzM4+LrelrjGVjFe
	 xdCeKJ1Im8jL70TacMqSxve7/hSb4M3Uyhhl40ETPuF6pYmy7JNqQXV8NTupBdoDRt
	 +oSOj86yxfTdvc8C019PdZch1QOfJ322CLpaykYu/CZAplsQRi68NsAu46UgtolAdE
	 j1ZAnRF0552Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D2DF588C1
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 12:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177668925368.31070.5397013511590353694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44c76403f0b1c1bb5f653c65189554b9ab4105b36f4431af68ef8c615c3911a0
Date: Mon, 20 Apr 2026 12:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776689253
