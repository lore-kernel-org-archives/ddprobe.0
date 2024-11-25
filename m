Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C91E383
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732508154; cv=none; b=KDSCRgT1v979hqGQXTaF0i+4yZ56B9+0TptwUZsJFMgIHcX+VITlsI24Pexli7P5qj8f5uyRNefZHfyqCkA0TU8Mtew0JX2VuOLZ0yPW0fIRN+fJktJ+W/z/xIs6W8z3hyrIyqyDfyH0wDn2Qa/PMOETDRnz9UsObADxI76+F/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732508154; c=relaxed/simple;
	bh=F1ETVHXVnc5kcbwsthim3mlu2PrL79O03p52xNn7Ras=;
	h=To:Subject:From:Message-Id:Date; b=eyGuPN2gpQJADB9AzDI5RCnqdYAnwwhGmPX4S6vLJlYh19A5cxDAdlLdoY5SLXimOtNU6/CNjKhJusXR4pLWrqfAUklG7OBA8C56BsPM1OIQR6+gJIwnt0FtxIYF3hp57F/OOGd3riAN9qsHH1j/ven2THciaaaRpl+vIPWw4ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZrrMseM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZrrMseM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B427FC4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732508153;
	bh=F1ETVHXVnc5kcbwsthim3mlu2PrL79O03p52xNn7Ras=;
	h=To:Subject:From:Date:From;
	b=PZrrMseMvpC3v+1mj9aCQUZlDwjLqe72HiQBJAOkDZ40/A8b01y7ZtZOQYBzAofQk
	 Njh0Vio1yuzw/91XaRlXwJkjHN/gmnu87HG9wllkuhcTp3AD1/T3sPyniAABpDc2eU
	 ApyQEWmH4K6nMBrfVmlfd2YOjuout5mJWeY/zmrV0UaxSpSxYbyUkkOxi9P9IaCiZK
	 cEhPDsD0tcu6CmfvL4gGy30mL5i4gFIh8ebGaZD2JaYTf4NRmhuTSrX93+R5pERe5r
	 qxd1iCJs9vk2qIhc+X0B9Z78VjbjQOBBZyJ+aDVcfB/symEkHvRm/LAcafV4YyL56o
	 voBvkA5FV2N1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E8DAD3B7D2
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173250815362.17308.18298306384322726070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c33abf8010cf8ca8b71526178a0c6b0b33c910b7d1df2651e196a8338146149
Date: Mon, 25 Nov 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732508153
