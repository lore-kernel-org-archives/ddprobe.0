Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9F51BEF8B
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736835354; cv=none; b=PTysdK7l6bvjScQmJr37KOe8pY34sRTZpwFREIP0licCkzhKMOJckOcDeS/FCHt03c8prT/0mPOm0zVCMkMIWZI0FTLweeMLo+iTw1fL4IhDXV3vC+M/sKxQVJYH1wHB2mCoGKLV/aZRy8EELhp6ULUrFtfYXC8mAdHGayjBhU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736835354; c=relaxed/simple;
	bh=Ka0xPAFJH3dCKYSsROJ5HQmvfv3nVOOPkoidV+EUmsA=;
	h=To:Subject:From:Message-Id:Date; b=IbrqUwqReC8Q1sW8PcdRkEX0BYs9r9UBaYh6aYc2WzYaJA9BAWjh3IBNAOmNaxHtkufBxsJDg5fiZZhZPAHuk43XV9fQQXzZ+hibxTLORb1xzmgzgeB6eDwu5z5rTk3dX8pBFurcgy+rMCn7iX87F6ggQxUJMfv5qAiGsdf43i4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUjiwiFd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUjiwiFd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3A8BC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736835353;
	bh=Ka0xPAFJH3dCKYSsROJ5HQmvfv3nVOOPkoidV+EUmsA=;
	h=To:Subject:From:Date:From;
	b=AUjiwiFdglDoKzIKpNUtsPTV1RP89w9nGmQYrulgud8j05BrkY1o9uFZjgeamhTjs
	 J9djPMNYcXlxYo+mq9IakKh9luhrhLgIG4QX3iRrWUvjXtl3AujOfoBff6gsgOAeVE
	 7KEX1OoniyOVx5v7t2c6iqdQMc0QahOLR7aGliL+YNNJ4DN+0GMuq8ylh5cEmNBuBN
	 Z3rlSjk2cOMhI+iH1ci4T3FbAZbLA4867xjuKKibH47DPVIWjdZXwrv2RY9HhCJgxZ
	 Y3rXfwp4HAL2JFjSnfpFpDs1EEnE6UXm63p8CQSnwAXWlUQhNEx3MVBsohfzcKA7NY
	 xWl3jW1aqMQ+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FFF3E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173683535364.15625.14892082809609404333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d53f56a4cd4a2e18a42f3020e8c341290713e363391b7f5da27616f903b15f74
Date: Tue, 14 Jan 2025 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736835353
