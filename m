Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6FD22127A
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 05:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763963514; cv=none; b=DvWv+6IoU+utYMWzn7IQ4lxMAQsYiPcTDrHsY7nvUxd6eeMkjEXTbYJ+6iFD40jh9DAwHtO4sAql9CBN1W4kBgrxtHA9ohHCmMAQ6J7S9loLhvnsu+BVARLaeYmZ1lAyfH04IUn/V5S0O9bps7UhRiCweEQYxJFYxFbBsdW/jjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763963514; c=relaxed/simple;
	bh=Zs9g6Lxa/JyaOHkFl4EllXUYbL/8C06lKYI+5KK0zdM=;
	h=To:Subject:From:Message-Id:Date; b=VBhM3cetpm1fFgXJ1Qy9ks7ah67Jba540bmWA75dZoqM1j+qE6bwbd/2Qf25lsFq0sI5V9Tt3jgzEXZXEZM1+/ockMROODbUmu9vkolN3l8SCPqDCLZJRSp+9gLC5zirLAiuH9u6NNxsVOgVr/ejYQO+r2iQxPx0xZ3U3ygf+bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JqmlEXPj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqmlEXPj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB442C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 05:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763963513;
	bh=Zs9g6Lxa/JyaOHkFl4EllXUYbL/8C06lKYI+5KK0zdM=;
	h=To:Subject:From:Date:From;
	b=JqmlEXPjCWN1splfcgROOh8g0cXAw+DD6HuRxu2prB6tFNCxv9upOSn+5Eh6gqeis
	 r80iT+j4C13bI17bnCTYemGWhvKAMIOI5X0xuBPc+PdiLhXsChpFECvvPmZqSCMlOK
	 7lwn/CDHLdFJF3QGIuYPp44dKJ6F01IBg2K+tcFXZpou0whdNitmfZVeg/p/+OhxQe
	 iSCbul1P9W8DZMqq40Eza0f/8GmgAhz6P7xBfQ+7N9b3aXEnUJL2AIVV1jZbFv7NAS
	 hIASge2fCStjoWarA4cypTqKr4sfS+TFisMwhHSyeCNNkAWIG9AShi40PCfjh1gL4/
	 GaFasBv4guYQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A07CFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 05:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176396351358.13822.11889050869525284120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6dac4bef7c923f6a477b05cf1687fd562a83ffad47b44160f723c68a8fb0b7e
Date: Mon, 24 Nov 2025 05:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763963513
