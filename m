Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC032877D4
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750081794; cv=none; b=eqnFzL0oqtyWUpN1gOyQJwRVV1GUkzANNCBpAqvHXsU6dF4PkUiiCywR+SWzihOaKkgYvXAf8HnFHrsVPvu43BXLF8NHcAV0WMV6ZQ9KZR+O21E9d11wDX/k+BZBZIc7BwdxSU6FnoYBT/ABSvr6AtrJ7kkQJN8IpL6lkBumIzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750081794; c=relaxed/simple;
	bh=TmSTEEZV1gUTPSLDfQjp+S2G3QMYEh7Oh2PeAFTypvE=;
	h=To:Subject:From:Message-Id:Date; b=DnVWaQQgFng1CV9PVrykA6nMZ+CfXQM5YqSp1JuPHKV7RgfL0616mE6RajcLREXX60k3X+MCPD/DeQ5HiqW9BnqKjQy2IxhGwrhUZCxQHCZd4E9nu412TahCMtCC/gw9v4Ghh8WcK7yrUQflF+NOHh8z4RxPchEAwrgJd8f1eKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QD6k+EhY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QD6k+EhY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B2BC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750081793;
	bh=TmSTEEZV1gUTPSLDfQjp+S2G3QMYEh7Oh2PeAFTypvE=;
	h=To:Subject:From:Date:From;
	b=QD6k+EhY0M1JDXvDsJgXPtn3G07mMO8OBcIYEdDBuAHmy5AipKdyWMBLofjG8ZCTt
	 hvUoZRFQXZIYJUAEUgqrf0/GkcHB/Q0uezdDDYNwkBiPnPAaWv38Q29dXw4ScO7HrM
	 xrYgkJZQrAimUQX6NhQx5i6p7Qx/PTrIRcou0VOtfcdoCNGXE/dy7/t6SxhyPXSGPG
	 0hqq15z8vY2CBCazq9pL/y3xqkpcJGRQbRcViLmYK51W807NrR421wze0zMOOvtpd+
	 Hu2nDbKjLHyhIErPbw+o+4whBVfXZlh/EDgkvu8QfKCevTHmG//26d6hEpgEW/6Bxc
	 OnFwARUnOQpQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D01C71155
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175008179358.26802.4412856732444310579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b715d4e46da981a654315111a8eaaeee828ae08fd54fc9c9eca815d1a8a08cd6
Date: Mon, 16 Jun 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750081793
