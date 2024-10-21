Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A081D0F73
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729494354; cv=none; b=NcR+EnHZt7n/jUIp/Hc4cM2/Q+o0UPatAyD6LfRL97ddVT/GUxHRCYHFaiqCZP+dZJhLIOb6YHFoucF8OCF8PTP+yE52xRx+O9g60OIQbw8ZFRfaP+VUnWmREuabFFUEN9Zvt84jbt5P4YqG+TmmsdnNln28e+vCWpGJHgwOBw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729494354; c=relaxed/simple;
	bh=uDcybLTSX/m4jVEycMgWkmm/0sDffB/YJD9jEEkT/OM=;
	h=To:Subject:From:Message-Id:Date; b=YGL+65Z6et8sT1LkAscgkj3SqshjV4X/mZ6Bxg3eYkMJsRSpcH3fmZ2pd5M17VbnMkU1TM7zTWBN/P9dK89yEnsmq5TBlojP3ppZWtQIO5AQB7rRsJAqDInP+Prv3C9MPGYFMghgr5FIg9jwDjfNOOGwIL20vjMos/ATKItEksU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKHCYNNP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKHCYNNP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A981AC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729494353;
	bh=uDcybLTSX/m4jVEycMgWkmm/0sDffB/YJD9jEEkT/OM=;
	h=To:Subject:From:Date:From;
	b=oKHCYNNPq+OcEdcvnGK8L7gclhar8kwSV+ooNGyYhaYJ/uaXJfAoG8D/LjvJXTSCD
	 DijzPV2PWmnjdqoVRch+xt4uPrQR8aa4KKdP10otwJJOCxEX8krQrFVjLWtqmx+HYM
	 jMGWSU8NxCLczR3D5bcrj/X8Tr8D7ryBtzSD2yjjHhdsOU5p6uqDk0yvMjyy/GQFTL
	 7hV1qcBLQLkYaFtRN5+PKgMx5UmySTS8ZzU4chWKl1cdBX1Lq0Q8J0Plc7aMQzv5oI
	 RARfV4mEXCZLMwdsoOvBaD+0yYzD9QnyLsjNpJMmZRvtB1FfMiMq91cXGN8rapPUx8
	 WsYBbPPtiouZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96040D3DEA1
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172949435360.2340.9936130097543121737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3beb9ab2561489a1d461b4667dbf8a3304d7a3141d977e7595821dd33149801
Date: Mon, 21 Oct 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729494353
