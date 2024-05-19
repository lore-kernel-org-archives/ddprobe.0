Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 611AF48CC7
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 21:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716152543; cv=none; b=m3j8sHZLdBZHAv52y76Tw0vHryxFFUHo43QkelGUhG0YPmMHn0h/iRNm/CTV5WzrMAEMaU6IFY3wYh0xJ9+lyAt78P2Ww268TkzzPIiQqNR2XLWQ2vXw6Y3y0HOXKBwZbRxk+S3GYeUVYuh1GlYNHQj1gmkNZoZiVurXwDojwlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716152543; c=relaxed/simple;
	bh=iZXosdtvXerpdpFyI+er6DVpbiF+Ai279lgZYqPoO0A=;
	h=To:Subject:From:Message-Id:Date; b=iUuZ1uqzYRmXyRdEe96HQ9qe6wBOqtkZnj+gxFza3QhnX5l0GWRYsRlKikXI1YxOZu4gDJek8ftyl0Qlua0mWrPDfFSUiNEKPJVEJQfFKSSqCA9Xepj6tKkPSpQx/3bpjMkzGbetSJ7NjTD+dWCFs0FQf5sC6MvO7h24lUudLvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o+gQv2WZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+gQv2WZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD074C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 21:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716152542;
	bh=iZXosdtvXerpdpFyI+er6DVpbiF+Ai279lgZYqPoO0A=;
	h=To:Subject:From:Date:From;
	b=o+gQv2WZ2o8fSRTomaLNhhOrwfm/idKLybanPVGiB25xBe03/ukkIJDgiOqSRJd6r
	 wxmZOAZUfuSzhCPWy7MD1O0juHlx0X9m7gph5YcRGaEctFDuPz3ObChdGqu5/4MUU/
	 pTHAWa9pP0z+Ta8PzT9IYUo913NRtmIkF2838UdtwvReyI2aA4j/LIGP6J3qnmck4E
	 dzpIuCTGHoQibuxtIHl6176licclgITlA/x2MWNjA3jclHzvRG3A0242aAo/MJYZ9T
	 V5FxpjBxJVSyuRePlOvO/8mbovOtCBv0WXJrcq8f600B5pgAPmKTGNmmZM6NdXi0g/
	 IJFBSD2JWy76A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3145C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 21:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171615254277.28346.12049476726550880252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f7118b2dd48845f73d79ab5a526e113e866101ece1cff8912696fa97b6efd60
Date: Sun, 19 May 2024 21:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716152542
