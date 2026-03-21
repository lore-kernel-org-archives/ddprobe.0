Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D536E369218
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774076093; cv=none; b=RlTU35Y0oanjO38nKVsMcV+orpliSc4NLMhmu3ftVsSPZEg47rD+zcgn/ZUCbHiTogVPw/U7btTUKSb0R9aEqG8qjlOOzFTeS6X0zglsV9T0ERvOtp3uXFI7SzWjuAcDlYzrOiNdmXa5+Ez2o8olhmdShgdp6JJ+H3sENtyQr8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774076093; c=relaxed/simple;
	bh=zK6e2UelqbrZEOpTcasfTpwsbJ3Uey9kpK3kmxXRyjE=;
	h=To:Subject:From:Message-Id:Date; b=svJ9seRTs4cYxYlF0T4BSg2u+1TGkwTYzm0ZOXoADVcWht8xYHfDjoqqoI4zCdXNPCvGspjB7hguKev/K77dcZvg/VLno1AUk5HcROlW2FQ0LlJgcdvyxhckCTTc9g0nCnJ6gPCiCU9wCgadVcO0bpNdgtuLckH7F79JWv8n7WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eHJ6l47d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eHJ6l47d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4E7C2BC87
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774076093;
	bh=zK6e2UelqbrZEOpTcasfTpwsbJ3Uey9kpK3kmxXRyjE=;
	h=To:Subject:From:Date:From;
	b=eHJ6l47djHFD3xdgs9fY4p9620AY0DcvOVpyUQtHZEUi5aNOYlGMpC5VTNVxgfBqJ
	 S4QSKXPKqj3oNJBMQcPA+eL+PIiIS/QcyBSSAWUjYzemhpacgFOz6Q0+HrjTgYHBSJ
	 0wE8kcT/vbXkgdsb3J4H+016NHFG0URGean6PzLsqJTdpSPVTU9iHYyGjJQSldWAK8
	 BHh1ZZCjROz9O92ZTXHtiu21LwyQJEAJTnqun2wMcasri0/NzyN5H8N7kHHTMRe3sg
	 0Skuw9airWllC7pvy0x9xoCHTdKYru0udBRgt7xDCkbKK3EKAFH+lnyS5DKjU01MRM
	 thFj2HkH64vBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE8D1099B54
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177407609358.2055.13343944046454246198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2ae0b16a6350bd9ee8fa818869e21ee985067eda38dfb3fc77ec119756f2d5d
Date: Sat, 21 Mar 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774076093
