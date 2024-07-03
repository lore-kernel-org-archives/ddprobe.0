Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0862113DDA6
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 09:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719999323; cv=none; b=b4IR8AhOwv7jGJbHOXRMwusXchA9vqd4G8oloTFYowum4lu3rJd0dBWAebShG9L11gl+/aUdERwpdDahQ1f82YeKdCjA9yRBGjNkqaVA8GXdj8cbvGawTwjew9FjbfKWt3Vjjk3iLBzACpXZhchDWV2mWDPwBwXC6ZHyakvMVww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719999323; c=relaxed/simple;
	bh=M/YkfXAtM1pZpaIz0olCUQoF3FyuwlU3ASBQil1lBfI=;
	h=To:Subject:From:Message-Id:Date; b=hIr/JDCGRrd4Mj3WRaz+DsDUpBvUqeZfQy0H3ekoy8UIgXVNwqs2cA4sNbZD89+1KPYRCdERynXJRrFCxT14Vy7r80mM9Gj1E6AD3OhTah5aZ1SYUxXfkp1Cj511nb56YP4kjzVu0fJbTxw22Xyo3DA5aZsfObnfhDvtEfZUCQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oWr0jeRg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oWr0jeRg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC24EC4AF0C
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 09:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719999322;
	bh=M/YkfXAtM1pZpaIz0olCUQoF3FyuwlU3ASBQil1lBfI=;
	h=To:Subject:From:Date:From;
	b=oWr0jeRgkU6ybNe+1dsopFnFChl4d5VkEuQtBRnmSHDOSyshIIHWd+8nSB+vuWo2T
	 21jXPxXM1ErDZzs9+yBE5OPLgqfRJ0mbefHsXvdsdYmnhb31UtT350HyL18b3l8zZQ
	 Uw1Ihk96zh+/ZAt33FiW6bYzouYPHUop3IYQIQhtY/IUAKBxQ4xubSZTbDVPcH4PbN
	 gYeXvk/2fhSGnzJNYDQacgoBRN18/BN0K3KU8v2662kEzovPZgnDfY708k40hbsKkX
	 vcBJo7y1o9LreOtPYU/Vy/kMS/RWIabehxVFcCf8kI4hH91nhxu6V7xZhnDyXAkPFe
	 O6PPU8aFDUdsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA04FC2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 09:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171999932280.29593.1701470638293685513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad2b7befe66108560102faafefcc09dc41d5ebae547e96e3a4bb0667765cb6a2
Date: Wed, 03 Jul 2024 09:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719999322
