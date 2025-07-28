Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1BA2528E1
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753704595; cv=none; b=njIOZz0STu3EZurfpfOkx2dhc9+OB3ZdEVL21lUnmlGt5JnmqdXhdtiVG0Uc4R2FjImfHlwWJdzyDb+UagU5ai2A2Dv6TI4r/3cSo5RiobZF4/XrDxE38lsSg68AhTbzWKheqBKUWjSU9d6e36um8dRZE8rAPiUKvVrbYiXc5lI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753704595; c=relaxed/simple;
	bh=iirCIRI5rN+PGZSarBse8zD+tPSoOuWFrhVMNUAhqGE=;
	h=To:Subject:From:Message-Id:Date; b=VTG+7ZhSzv4yFEvcIptIiUNWjuUQY0t3yRQXVEpTcmuw8CsJakXlnP8B+LARApx4sLdMA9fNUxVR1dhjV0r1HXWxvcbEmMibv3P+Y84TNTFIMXa4UcIMv7s/MWBxgld+rafl19jLE8ZHsmixkHlYMSp1hojobsItazCrr2lfuVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IW8thQZI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IW8thQZI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B609C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753704593;
	bh=iirCIRI5rN+PGZSarBse8zD+tPSoOuWFrhVMNUAhqGE=;
	h=To:Subject:From:Date:From;
	b=IW8thQZIqsKd+ZN0D9GoYGXHT0497cUhFr6KhwuVG8hiS3BuiR0CAV1BzIaJ/J3tu
	 i94tq6uR4HP1+U1cf5NYaaCcos6Yx3tTm3uCnXv4eqsznul4okEA+of8mbPxb51W41
	 F5pYotpfbRclEwgaGZ/tH7BwJprmPLr4GPUnUCQTNRKEcygWKFKJPWxvZVa6dg9rkG
	 3TZJHsDx3Jyiy3D+GRTVUE4gJEHbn3n0LybJkBSls38GJ4ys7BuvTh316feCTWF4uU
	 45SHkbwaGJzIWXcEPqqWIXzR9gS+/Iz17px4QhE0+HbI9GcQqqcroSi0bjtn4WWyEI
	 B2RJgTdX34RHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F42BC83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175370459357.31374.3437035375634199061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40da1ee2bdb83284383eb1a14dcc57a01cd9c29cd0a20abfede7b07117c9e006
Date: Mon, 28 Jul 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753704593
