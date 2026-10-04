Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F2AC212542
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791107434; cv=none; b=Rw6ldOjljQMaCnqCZ9uIR/RFTNC/loDY4+OuhM4SiDfzAXVTaXZgzLLTYtRhRNN49oZhhwEPxlgob6MF1/xHtrXiQyIAAc+sk+PqwQLlsps9zExCLZEOXiX+tSh50oC7bGsgMyC/iGrdeCir5/qPOQEshRYB5rgLYZeT+C/1DnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791107434; c=relaxed/simple;
	bh=1A9vEeDL52yQvCuNxfil2daVS5Q1XY6OCsP2W4+29Js=;
	h=To:Subject:From:Message-Id:Date; b=gdKj4C6gnIGeEpI5X2yjrdvfRXks93u8hG+ViQzAWd3PT/u/MebGePjy2tkFIh6KczBxxMwDDoG9XJqwFlckzK/cCOhODeJLUtF7GMvCrIORh7nxwIFrXX8Ly7o/D5rbYU3Y5Hgjd6w+FRrTvUwGuGyAqsdeOkrVL89j2flMT2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PB6CkQKg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PB6CkQKg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAEA9C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791107433;
	bh=1A9vEeDL52yQvCuNxfil2daVS5Q1XY6OCsP2W4+29Js=;
	h=To:Subject:From:Date:From;
	b=PB6CkQKg6JL9oPdmJIT9lPtckRzHPOJLUY6HagcnG0yZ4cVRI0bzkXF4M5aiZ4Rsa
	 DO95M2iRPlxQdREzBXCKPT+0+UYMMUELEugZbb0ALpO5R3u+8vKikayS080UEmLxOA
	 x+Rv3WEBGqse7ChEZup4my99F6RDqBjfmG+Y0KJAwU4h4PR6Zw3nItnFAHwwz+DRyq
	 GpWgWP2TBz/R0IGCDczGs3lHRfdoEJb36fgTfr4gCNhutNaAe1FVzqFUJQ3tVimLq7
	 GvtN1kySdK+Fo9MJuDjLfTZ4Um3ec80yXmsdGwNWxeItKxXzB+FZ3voTBu3FGc7z5m
	 HWpoBIp2pg2Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A957ECA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179110743368.15433.17135542783731796315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 049b4c1bd529a16cdf3b1f371e6cd23026d7bc72bc4d55d810997db7016b2a0f
Date: Sun, 04 Oct 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791107433
