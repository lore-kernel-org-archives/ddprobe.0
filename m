Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3584B1BBBE0
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722930954; cv=none; b=OSfMb69+4kbny3vaBz2l87ReBxSztVYDuRi2kloN5WbgJvoM+0BUMskuBzeZcc/fVx0RUGKKf2uB7nukT2Rx2RPekpn1r726RS52UalgCBDbWM/RK4UtGzfP50kiyr7plEIQccRkvrj6WxBYu/fu/gnzUkyMUlsyY1rCj4ZW9YU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722930954; c=relaxed/simple;
	bh=3aZIgmHeYGktRDzrYw+Zp0/wLpTxaRpXFIWs1RRi8Jk=;
	h=To:Subject:From:Message-Id:Date; b=rczM1Rxg6zmt2m8DpjlpOdiFwTYOZNAUuTmxXkpbYqT9t3yZGbWRzmPn2B0kJI33he+pUmjRew0g/dxSJvJGAuOGJx6LRFvi8kzIXCrb5FUUPr40i1Ae5252ZLV2PV//7pcMdzZfYK8wuZ3ZLI/BcRcFRtepe/E075/OxXL9R4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdAM2H9U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdAM2H9U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBF2C32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722930953;
	bh=3aZIgmHeYGktRDzrYw+Zp0/wLpTxaRpXFIWs1RRi8Jk=;
	h=To:Subject:From:Date:From;
	b=tdAM2H9Uatw9e+Qrh7LYRAs4POHG8qecmiYHa40nOGN9NmCySB/kFJkSLjYAL1M83
	 rnP6hLW8TIMHeVHk0sqDtOhpU/M+OiZMVG5I+72VRSmy0x3VtST55QVSjBdcsT3v/q
	 w+9tYoayEQjlds1DfajvliWyryfbBPcMEoj0kPnpm+KHRps31YaRVVMwyAaivxz5GS
	 DdbnI5p7Ixq3+uiMDmmNcWWepQIpSO2EstmBKsALX4jFIJF7Vd2TJfbecniiLbCcwW
	 RCidQHX5ef7jsbOicsCpTl+UP2VeH5HltZjorCYoTwLwRomFvGZIF/Qibm9Q2ArBUO
	 f4yT8uPS345jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93269C52D6D
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172293095359.14382.1845224092873183271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79b616f541d88347937a87e40bfd8ecae60e4954afebf25289ab3872813e1302
Date: Tue, 06 Aug 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722930953
