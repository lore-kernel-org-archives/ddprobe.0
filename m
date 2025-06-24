Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC5401A8F60
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750785593; cv=none; b=Z2MlwomAgEf8sJJ2dolaR3l/2PQIy4JzN6Qy8hEyH4dzSk7aAC/RD9BjdkLQ8OifvPkJhcmmEPFgoZJ7ems9z4IihXUle8Oq15LUuOyzjDeKRgIpI4l1QGqXMzNYAvY8tzockBf9rMfAKri6dLA6234YPhx8Olo6j9Uohf5FnPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750785593; c=relaxed/simple;
	bh=CIpPyszEfyWQtuRVQf6uTC2PiuJ1A0OZjTCgaSg/K0k=;
	h=To:Subject:From:Message-Id:Date; b=G6lAoyEUi1Ulty/zX6/fwJR2Oya5os50+DuU6aOkyf1+7Ie5cfXCuMGFNbUhYaok/TmpX3KZxs4MyOAJ5Yn0CFEKn3Y/6Tf+nQ7YYkB3/5hb8RaKGsJuJd0NnfKDmpz5+EkgyPA5PsOOYHne9CScU43o+6gNvKz8lkfVw5JGqEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mvp2dC2A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mvp2dC2A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02B2C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750785593;
	bh=CIpPyszEfyWQtuRVQf6uTC2PiuJ1A0OZjTCgaSg/K0k=;
	h=To:Subject:From:Date:From;
	b=mvp2dC2AxSCsbLGHnEpJN13EH+Yog28mVS5EPR9Tqm30mh76JL3jUgy1Dw4Yy+w/b
	 pCGFtguZnS0FUpLlXwm6f4+ibJYckKbdhZ3TEGwP93nvXx45RRStUaG4DBudRLzL7s
	 3PRpDTNmB+aNsVzx64ji1jZcgmATkmB1xeIjr75MTwgGB8LJR4+e/dtcIuehTgWNOm
	 lMz4T3nLesTTXfUPd12lAjLqlGwTqs9Rqq0jVzmU5xDoIqh7Dud/fPSxFPxChFjThX
	 uEKH4z9/DyYrOnfPz/txPJEuBZylS6mfyjGhm8wbwS884C4MbAn3V4FDfIVt668NQd
	 112kKq2lh3faQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910E4C77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175078559358.31517.10818092814684048327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a6954d2f966c9286a877f1bbd8d3cf0bc2f3ce0461bcb76216ff8cc3495af8f
Date: Tue, 24 Jun 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750785593
