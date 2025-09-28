Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B80283130
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759052994; cv=none; b=IR9PEXDbIspjywWaFLYRPP5Rv2Cu14zh+ObNvSCUH5FXMJuW2fwtKCVmeOuQBSVn5GizdaVhC80Sd9oOX6WC+C9s5roTOJS0SaBel2kIepU3Hhj3P4IKmSHA/hMSapc4SoN/1ij+wHROqpeXJYdelu0yu5k9BPJFPWZwCTYWEJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759052994; c=relaxed/simple;
	bh=hFf/HSYVni4gcg0VpAguvVW04a5hEwudZwkvZIDxuy4=;
	h=To:Subject:From:Message-Id:Date; b=W97Rs990X0B8+7fAHsdR24+QKqJwOklGI2RH9A/wvxI30Bj3w+GVUHNklPyLIz/4kdDYVI6lYZ0WdYYuih2KjuEVpVeRbV4VHIuCzwU0gINhDkgBZHXL4bEXVWknUxezPLJ/4WlNNZBGt90MKmUC8PHLn5Dc4L54H67341hucwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=siL90K02; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="siL90K02"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2917C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759052993;
	bh=hFf/HSYVni4gcg0VpAguvVW04a5hEwudZwkvZIDxuy4=;
	h=To:Subject:From:Date:From;
	b=siL90K02JEaJAnst8c0HoD0M/k8gvr/kuUNnuuY5TkdRH4krhHfWikZGP2W6WVINk
	 Gj9FMWrG6rTyQkn8IOlBZq89Exft0KNmqA6Qfj45pZkkVVBitoDuHavX3kZgreZnBu
	 +MVfkXpBc4tvRJJjr5yRw/YVSdnwOZnbOLPjifO49HfMNRhrB7xcHieKlil03bYh/h
	 j3Dc7Xsr85HyRYGKSvIxOu/WZkaw9BtWnJas3fbgl3Cyq/Ww/+8qgmNKkCyQN08T4l
	 /dcNe44RJOCoB+jBeH+Dd/BgBWuFy5ngroIhX5LOkO/Zi843ZFyjNZ+CSoC+/6fl4n
	 56Ccg+IR5T67Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90556CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175905299358.3534.10166105303879476200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9374ecc9cf666dc3fc5d73703b941a7cbf9a7cdcfe16040fd83b8c545757907d
Date: Sun, 28 Sep 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759052993
