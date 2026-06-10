Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB893B0AE8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 08:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781081734; cv=none; b=YJSoV135Z9pSkTDUJaHFimsfuFgRJE0nzbbzYIN9cMCPiOw58asz3rZIGgKw1P+AhWoy3e3OQHql+KNcDjoA37oHgVYrR5qQ7pVSDUVhbVX/TLdKBZZfHzSGGFskdHdCrnJzJWGhcu0vIge0iN5ivecACfClYIumheuqIKyT5SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781081734; c=relaxed/simple;
	bh=Rj0BsHjCy6QcYV/UoeUYPGsgag3ISf57MoIS7uitILI=;
	h=To:Subject:From:Message-Id:Date; b=AXD+1aAmdXvwQpCrPG+nF2AFldjuuSSOO3xkf/HfZ537x1ngl0LxMuPIbCUp5ghKCjU6zovKkkoPH7rEqpVtf6DToij0S1kaq2iHpgnBJmNNZnad7D4c05QHwYSmKnC5Wc6RvmvF0NbKk9i5Y2h0hdKdsUJQBNULaWld89KEppo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A890op8W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A890op8W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C29B2C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 08:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781081733;
	bh=Rj0BsHjCy6QcYV/UoeUYPGsgag3ISf57MoIS7uitILI=;
	h=To:Subject:From:Date:From;
	b=A890op8WRxFYP+bxA9ppodFrosHVNcucdW29Ut30rzwuKJX87ZVoFvXLT5demcIN8
	 U/8UtX6TTuiJWqFtyinB9+1Sd5LydPVydAfdkzdVCrZnRQ+C9BUujKCrbX2V0d02xt
	 MjEu7Kg2+wFH8GTQUeljN6wQubaZUZOb5lTjN6rQQYzvm68JWNfGnfCIIy1mBEb/cR
	 VsdERr9n3gOY7usm3hTX/Lp4wKdtpQJ4Obr1ckg99hPrHhUpzWKJM0WPrg/18oQI/r
	 TAOYf9Y69dHfmlpUcWjRE4ci2PfaTZjZ56qlrqcSPpJgcgf0OCHi5VD85cv0pk/M1n
	 B+prs0K+VkxRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CB8CD98C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 08:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178108173368.17109.8833132287819280927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d6ba46aeb332b8a709cdfe289fdfa5eac7d6f430e8bdee6b21275a4ca44eb6a
Date: Wed, 10 Jun 2026 08:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781081733
