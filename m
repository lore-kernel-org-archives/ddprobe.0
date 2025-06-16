Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0F68F5E
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750051194; cv=none; b=AajntBXMbbGK6zIRsjudJ1yv66yvyPT+U+pULILu6sDTsHL67LAnwl8aY+aE1zLBRdurwRqAmc0epvoonMMozshuKWSFmOHEdJdM7N3FRi/e1BGx+FCUVtdLWKrFMJDRSRfK8risqTbyU0rIUF2vHb6G1EOwpwH3Fk5C2tHSY2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750051194; c=relaxed/simple;
	bh=wO12UUKF6X7Bpsj+xnapvrtj4PLmSDteY/+voJRKvRU=;
	h=To:Subject:From:Message-Id:Date; b=GzWGAdUAQlsl3gp9KatpLQteUaVi6cPwwW28K7jbIqgSn/frL136GJwr821HtciNZMibH2AKeH/CNzjcGpzXfHmm5vMoWwvczZOJI0RAIrPNbzVv6aP/JiHaz21O7jW2Z3vwbjJs7JeMG+SR9EMehvChEgbK6tCTfK3nIWF9S+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CmBjiL/y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CmBjiL/y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5F9C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750051193;
	bh=wO12UUKF6X7Bpsj+xnapvrtj4PLmSDteY/+voJRKvRU=;
	h=To:Subject:From:Date:From;
	b=CmBjiL/y5yH3QztpRIhhP597AgfF5jOmorl997oXDJamzTLrQn4bc8h+wgzVqlMyo
	 X324+h64b05t3rIL+VeuNTKpdEztExFNSPIsgR7EqswNDLvTCTZWbuiEctWHpwEWeZ
	 5Upr4jHNlCCz8L38KTJgtO6p3HBE7c281bEw0yzafn6NWamNYfwx6lkwJmMBgPbULM
	 hk6S2v4nBanSSHtYH3uwklUYEiMhjh52jsblKZliQsmPMu9c3+tPGUZ/lRY8/k8C3e
	 +1vOCP+Bi4/1qqSWExAAuEvdnf5t4waYCQ5jEco3cjPBzxNlMIHUqDIZJqa5DYoygQ
	 j3gHshgzsSBlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942D5C71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175005119359.16481.7500275727840822092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 646f1348476a2c0cb31099d179ad8e8e490ad5939566044d0d05a27e3e3d0d55
Date: Mon, 16 Jun 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750051193
