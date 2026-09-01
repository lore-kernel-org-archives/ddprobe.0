Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47FFE248880
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788223234; cv=none; b=af1fy+KDEckxDvY8+wZXmWvMdHx/tHWyGo1hi6+uMfXBTChUA6Y5veWS5RF7fhd6aYtOkYp4vfPdQdkk7TAiyMth6cpM4lYWtrCJJb52j28vrooSmGVusq/H2uM/Yj6OiYw7kfIDlrJKzNLlVU0mVn+w9BhkcpCOdtgcIi2ASzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788223234; c=relaxed/simple;
	bh=7Pty+tKCCJH+XOoogEjOCdJSfh/bJ5Gkg/ffS0Op6cA=;
	h=To:Subject:From:Message-Id:Date; b=pU59L+9klHrQcTGyqx8L7qEmcY9tMz33r1LPEwsa3q3YkHkngXGOBfudgr64AhzXeS8UHTWrPEQQ3WCIPqZUCkKRGDu1bpzv9h9RQQPOjx3Ooyj0ZAQ8UoZOxeNV4Uq3j3Bjur0rj4BHIX8BZmHp+hsCuCMs2YFYrwMWTIHslzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHwOFK1S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHwOFK1S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7CEC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788223233;
	bh=7Pty+tKCCJH+XOoogEjOCdJSfh/bJ5Gkg/ffS0Op6cA=;
	h=To:Subject:From:Date:From;
	b=CHwOFK1S5CsTHH/Ng1GU89mMf3//GKOHh8sidpC90xN7iWyD4wlCIiVCOmk0mO6ly
	 0griAKt25pmT0dpU1U6Mdk+8f4WkFQPuQavYOG+9kOl0kNm3zFnmP5G2Vxc7TyGfgI
	 3AeqzjrMI08Eo0tA/JKykQfh5tLwujVaA0rQlpOfiE4KvHXNqLkZmjvEb3owtWBcTY
	 LVrL1XaDo3shYZCeMG+Pb6MjXMJDJTYGU1pg2LmTDrdq0UEG4UfDtlE913s2of5H1Y
	 ORAoJsBO7p0aufs05T4okJjo9NEXtwtQcTrY2C7a0qfLCVlwHrsnIyZSwWh8fX9BkS
	 bhCAfNt3FSRfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE69C61DFD
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178822323369.2529.9654117982859504641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fc27db181e4d8d61212efdcaa8c771134309244fbed681fe00b6ee82579317c
Date: Tue, 01 Sep 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788223233
