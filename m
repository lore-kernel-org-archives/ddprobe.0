Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456ED34CFAE
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762844394; cv=none; b=GOOWtuh/6hqW3t0SHqTJQxhxGvc0M3yEDmtYclLhceB7rA1BNDkUgbjZCAsTo+ef51196YPo3Y2/mSv8y0kJKPjWjldlRfxjdQl/hH+CR1kgBcwD14f2/80y9InjNcsDoXuRiSBN3or8p+xv0PYvyHfVlWiYyTrhw4wpCNnGNk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762844394; c=relaxed/simple;
	bh=4SQZouxbOQoEXac9IRs1lNFwrDk0tOKNrrURJzIdDSQ=;
	h=To:Subject:From:Message-Id:Date; b=YnvnM4iIkqFio0ZglxVM9qyMXgxolRXP6S+v0XcplTPVM1BU3qawSkujcJP7eVVclw4yLofFoyw2I32Q+k1CY0cHfdFwYY1Z/17IGsrPSmFtmu1DUTjVfU+AmjPyAwHLdkl/NAO+ZTpZ9uvzoiEFljRmnqHFI9HBvbxjLgY7ruU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OGYPVAdY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OGYPVAdY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB80C2BC86
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762844393;
	bh=4SQZouxbOQoEXac9IRs1lNFwrDk0tOKNrrURJzIdDSQ=;
	h=To:Subject:From:Date:From;
	b=OGYPVAdY9R/ksKzgxbiEC0y4WrMqS0lMw65MpIfNmPm1liAD2NBI6r4CuT4U+yzas
	 4mXt17WP0VWO2WOpEkD6QO0UNLv8dPe57mH3LpbbR9gEhJvf8Y/ScWTeHS6jYmkFkv
	 s0R5d2UXXK1lgISm8R7cB2ASk9DgtSRnDF6Qq2/F4hmiEGvZ2xJ4h2NhEZhsars5QP
	 5DOMfP1dObE8bkL2IyZFqs6xcQIf4YigEL/65A9WM7AsqtJskKDX2MTAQY1CM3Syrl
	 JH8ztcNB7YLhPNoBlietqBdpgBtYz5HTuBwAahIRjF00dtTlUPpH2qa+I8sfWezFwg
	 DKNEjDu7lqTPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE00CCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176284439360.24501.16392274216766370760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5cdfb0c7d097333aa53673bcacf3e47205a2900981d0834dd03c81177b7b116
Date: Tue, 11 Nov 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762844393
