Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D30217654
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745005194; cv=none; b=tVFNgsxtZKNyZCc6U4CHl9tywePXkmjdfY/DITMTDRgX+tbFK3ByzqciBN8iDJDWNE90ObZsQMFXb7+Oixt4r6j4fkP4NDoaSjozoHJUl4lsAlrP3znxfMqmxEgKgG5LK+dEO0yCabfMVA5H3ckqFqrHDI7qcFTuq15lvbPkxaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745005194; c=relaxed/simple;
	bh=0Udd/hRLqZRzua1KGZCBeFGtlHf2NJNQro1sowqsVXo=;
	h=To:Subject:From:Message-Id:Date; b=jlg3PDTyKN0gtFPRBJoT0qJoZm+2UKsdIen0IIx7hPXJWb6Y9vPDoJrznB7tw4iHfGOjdguWenbmKjiQkYFs4ntSgH8uIy9qSS0xdTPLmRSmZIR/5vIxB+G7Py/VAj4hf08t3sUEi/DsCkn1F0BAUOb1XNIa+zhseEzuqqI8Z0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEePPEdm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEePPEdm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6089C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745005193;
	bh=0Udd/hRLqZRzua1KGZCBeFGtlHf2NJNQro1sowqsVXo=;
	h=To:Subject:From:Date:From;
	b=UEePPEdm8QOByMdwWrHGttmpoM4G2VoAPqRCy90O3ZR7lq8iYO0Gh7rpGYuGnFsVy
	 GTAqMs03Cax4/RTUdqoNTSHV66ZkUyLuCG17Lf3oE+mYyl6AkKJQ5dZsDnhL19F3cB
	 74sWDrvDHPAz4xjnj4ygO+0Ke7hzSAtDxtVIvcF8R5pFnMt+oF4cV9+SmVipXLZeCo
	 TPBz9bEkCTvjz/7f0Zkm1T+xOZqWkOTTw/equZX8dyAflEu6uQYuux7Ml/yIwy+AsA
	 0UygnKwQRu+cxkUPXlakTcuFhEdupgnnHALbnT0AHfq1Yib0U4WF3ZrE1Pb9cB7nFw
	 u1Zw7Gfy2upew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A27DAC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174500519361.25993.11609618509399238967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e9bd0132fbf957e13779aac1f1ce9ffa5938da38db74aa7cbea087ec7786a47
Date: Fri, 18 Apr 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745005193
