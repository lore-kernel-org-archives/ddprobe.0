Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A5717C6C
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 12:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713098963; cv=none; b=q1+kvbrzlor1boWcpLwVXBvvdLrTOeuz1wTN8Lnsn/mGCLFMtsMDzB2bz2BuJRayTTJZilE+bz3eJhinrxo+mUzWpSa0ULeuO9uG8KAlrFVYPZBBm5KVwG7CnJl+sk64V8SrA0zuFbHz2ZCstp6cJ9upiyD6sYGNFNtqmGAW68Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713098963; c=relaxed/simple;
	bh=Bz+wQn5D3LmS4rhXJX1sPt+bSbasVkPp/BoA5v/VP7Q=;
	h=To:Subject:From:Message-Id:Date; b=c5yuhe3cJpBIa+fDn7eecKlTD8eCvQcxrsjp82IgEqP0ngk8iOU1LvCp5cvxFwXa11jYJGbR17/ib6wKl+8VLxiXRjZ8C9U2Sw8EB/5zg+8hsw3I2dFDEh8CQ/gbUOxSDNE5+hOVL9qpFa34YpUUrMmkP0FSWRwY36WdifjftZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shij948s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shij948s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBAE2C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 12:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713098962;
	bh=Bz+wQn5D3LmS4rhXJX1sPt+bSbasVkPp/BoA5v/VP7Q=;
	h=To:Subject:From:Date:From;
	b=shij948sqgXKwX1C2fJJa45quxV8yXi1ysOywGX0MaxPUaEQ05m4Bzr9Dr8+p/m/Q
	 QRBiW1V6lzfM6n6p7auoCrW8fSkEhkk2TFpgIx7LPMKNCKJUOYR4MPvmQrqcjZ8ay4
	 av+5N11UDJiIT+ZTHT3QJEhaRMXpUcxtCxoQsiWYeJu5xTUIrpFmEdd57yDKP8px9T
	 tyKxlAhwQxPnn26dW3EXLBo7xDbeabqtTwRd810Bkwzf1H2UaPIkLc4DGQD2O8ARU/
	 u9WtSAYspjNliHE5Xop5fN50b+4AMJJslUQvpMoEeFa5siRQR4UQcP7/vDNxlDCkFu
	 eHf+Powo1t7uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B8FC4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 12:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171309896275.30934.3769832115661166322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be73f1c99dcfd8a1f74f33a449ef681805d29deb70098b9d82f7d72b72cf3bce
Date: Sun, 14 Apr 2024 12:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713098962
