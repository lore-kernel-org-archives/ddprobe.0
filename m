Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B21365A1D
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 22:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780351474; cv=none; b=k+RO91uNePVAgc212J4KbrU5OtxYJQSEVvOHWxi37sMbOKgC2hQtYVis0I7LF+W7IScOraHAww5A4keQpXNeRiRYSwTQoBF67ZoVrFYtO5sQloX1OCSWC1bwtwIkGBd6UPummiS+5vC3XPOZYMnV+UXo0gRH3WjGbyXLWOKfX3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780351474; c=relaxed/simple;
	bh=eVw0ze9/T1ui6EyN4OdK5O2IJeSjpjnGXXOP7cGqfAI=;
	h=To:Subject:From:Message-Id:Date; b=Uu+6L2uY+xTC/0GkW1QQUaAYOFM2PTn9in8PvcgL81TsV851uG4x+VCvS57vNVJDWOee1AGMmEylEEU7fEevXYrcO+xsHzt49f1RVb8JzxIak2WbOsKLDCoU2eewm5PxA/H2NjJ+m4zUQ1yoG/cd4iGTKlrOMhLSMWduoBRGODw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sakx0iJI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sakx0iJI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C36BCC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 22:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780351473;
	bh=eVw0ze9/T1ui6EyN4OdK5O2IJeSjpjnGXXOP7cGqfAI=;
	h=To:Subject:From:Date:From;
	b=Sakx0iJIlHRcc+Z4ZJHjMvwhSrZJkdDh1N/zL0/yI8o2EwO1J+42+5BBW3XRMqrUE
	 hpddui7TXBBBnk5rE1xuWHAQFEOC9J0mE2UgDRRJvftSV3PX5FU3molef+oN2wLQAN
	 drNon2JIl18xqzRoqE4Yr3e+EhT1+6fNldAcCwTHdQ4XbGwIEAAwhPMtUcnOyWj9lT
	 Yw5mtpe1r4ucAPKl9+iZ+Qjyp+P8nHpI469rTLjzGt/nEcg43gThv7d+fRSpuoLYNB
	 MI5258iI0hNEYMItgzV4BW6IwNrOsHuoxqTg6ud/2z03UKvnwnpXmEC0MZas0Homwo
	 kGY8OV+Zk0Lfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA764CD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 22:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178035147368.2692.13203187532576379693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75da447d57109dabd3d5e3e2b3262c19f7e30cb296d7361047599757960c36b6
Date: Mon, 01 Jun 2026 22:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780351473
