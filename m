Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CB562D4814
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 01:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763428314; cv=none; b=gnsP5My3WEfgAug9jQVSkZI1syrkqPZAK5x0Y0kvRD3b5L9BQrRTtl8FqH3J1+BKyp2E8BN59N4sVL/8rmPf/HR6RZfyGb5YFGeL8MHnSvH07FwSLtl+xY00OWGtHve0Bu48xZyqCWR84N0b+3Q7LYirBAOGa5zLipXjleUYlx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763428314; c=relaxed/simple;
	bh=AI/7321SpRIckvwOXOr8o2dC+t3KThBNcJ3Pl8bJ1DU=;
	h=To:Subject:From:Message-Id:Date; b=H5KS7n0TdXtqhsjJ2R2HkkRuQl3KEj3LIzoEv8hugYEzu3WZz5WU6LW0w1vzCsj3Z8pc00OoOAKi4Ja+Um3j9QymKXLARQGFs+Fu80k807No0GMphkwk60ksY/zaq+ZGFdcb0/id7GbJfFhpINcRENUwHi7EKcZgxfPCtIuxn7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W2EuGekS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W2EuGekS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F7EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 01:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763428313;
	bh=AI/7321SpRIckvwOXOr8o2dC+t3KThBNcJ3Pl8bJ1DU=;
	h=To:Subject:From:Date:From;
	b=W2EuGekSFkf4zccFE3kf8WostagkFivi491H5dOt7reRiwhqScGxIMPCLdG+SPWmi
	 HUgAtGd2RD2od76dehtR7IcAislNBVg+7iVLT7gnPQgDvqSIhbPN4bpaA2c/U8JPCP
	 ltzi+0MJZLJ3iXQ1wNTNpym4pqQBieW24YxG7LD3umrdi1JlyedXS3cSp80ex6S1uU
	 Y+2JeLTjUX7u32uvZkVacBuDegjX506DGEV9Js2PFbo0AyHLMpioHOMExNe9qkUE4X
	 YjmAtc1wn9tTn47jYDz0ZxPVN2OVSzjVtckcaZphEruZTR6JoZt1XBsnV29xDp7e5k
	 bUDye33DhdlWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9209ACE8D6B
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 01:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176342831358.17522.11078755932875102151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d77af4b8bbc4bb5ded317f1fc71cd09a6e4dbf307e9d4d90acbb2bd1290f1c3
Date: Tue, 18 Nov 2025 01:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763428313
