Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B1726A1D9
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752040795; cv=none; b=N0abndF9+wFVSEeiNNZlIptehXyIiSfZ6CDJMsp5LxNw0x80HiD/AgQ9zTV5PaQeJ+itJ5Ec5OI80PXrU4s9+NUq0/P2pZ5AgYzwjTs5s3uW9MquknGqf+NUr1p6kcnxyZzpGeDLITK01BbSBhAr5VBOLkAdvRqw1CDS6teNbeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752040795; c=relaxed/simple;
	bh=DsEPbKb5GX6x8QJve7QoymFObG1G1U/VdvRT1Xim7YQ=;
	h=To:Subject:From:Message-Id:Date; b=rs1tEyhPuj7WdllLjguOxhVCnSrCrJGZ4kWLoEz7BhXPAfpJY6QCUZIxR6nmPk/hK1PvJrhQrLtI+61HUmdH/yTgXLJEqvPWmWRaGDm1G0AmG7gTKVk57zvh/EAy8UDOfEWe/syxb/4V9JSvMDLoiKV+H/l0vHSsRLifmsMQrho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMoXXZVL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMoXXZVL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2A7C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752040793;
	bh=DsEPbKb5GX6x8QJve7QoymFObG1G1U/VdvRT1Xim7YQ=;
	h=To:Subject:From:Date:From;
	b=ZMoXXZVLIbZsZQMafmn2XxlPnQWhVrO10EZKoM94CEwcLT5I+U2UA9PGqeJkHqtpF
	 rAvP93S9Du+bVw/BB+acLaCjex/F+8pugaUe8+1HAGG6/0ef0CDwKGVMBcRRWi9u1i
	 RpstqadHhqkMHkN//uGcCLwtfYjQ/mpjlpovXUfynKIOEnKQbpkDjjoBHWHlTp0K+n
	 f0pIW8dcR7kdB+YrNKLeeUjFF9c0jteEv3B4sTJB7jPdk/BAlekMNDZ3Ub2PZ/F4dV
	 7a/i+tsobLmcu7QHYmUT21zFTJYEqR13lJR+Zhi4tJt9P6zATdJ6DgL7GinP2Tu7Pk
	 p6CY4vkZ4AT7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B92C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175204079358.24176.2684790338899662308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2c1296012fce8ff8c20b91c0b296680e7b677ade55f5a4bc3ad5a1b40fb1d94
Date: Wed, 09 Jul 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752040793
