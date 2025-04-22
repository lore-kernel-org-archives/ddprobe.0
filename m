Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B8E929CE8
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 02:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745290794; cv=none; b=HYKNEyL2kk4CIydRRx+7OJGQvZsPFimH2av1E2/r8YQdbNryspBizA3ByBOPXJzGRHbK3lmqQDCA2r4Npjce4iFlKbRXcxTEfzJOAomoO/YrP5KHbCDkzaZJFPBQEqhJaO1g3DXQf1+ZKH49k3/Xq7NQxpNLkxKzEhuaC5ip12A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745290794; c=relaxed/simple;
	bh=lAmoWT2IFXmDnOx8KuurlWq29gjyCIj2fddgk4dOP0c=;
	h=To:Subject:From:Message-Id:Date; b=LFz+EL3fo5qhYB8OQL7jILobnCkx1qIFu4b1us/oPA1eAz37ZxE0z8BkbAog6tk6HxS5aIinE2Z7datWwxQS57/SdxP3jK7pbYbjWofHF3wUDC7vtahGCW2Eoj4LKZ20NlypIITyZ2Km1JLy4iv6+iF0KlPW4aQ4Vrt+aVbCEdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UjXBUT8e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UjXBUT8e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D654CC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745290793;
	bh=lAmoWT2IFXmDnOx8KuurlWq29gjyCIj2fddgk4dOP0c=;
	h=To:Subject:From:Date:From;
	b=UjXBUT8eO4LT90AtIX082mZOb0YrrPnOshBxyzkX73rjlSsr7GiYbFtrNzy3YncXn
	 4YtJVrDQgMZswe7mZ8ChEUWgXrYzOrRapaSCuo7IHToxpR8MkfrsnAXP/h7LCAT2xK
	 vz+PG47XLyW1U7e4xdZmpAVNpyrt4Jm7QvChT/mBSL5dMm2ySN6Ax9sAW3S8q48Baz
	 GmoWtTQ4uIex40TfB/l3WxN9nJBNkVRNAqjGsZIdtWyEwTY5XTqE6B4A6wZbf3lKkB
	 7b49Lwdvj16pUFjpio417EGiEcF97/ScYC4qWyKVIryNoO1JWi5XGoLHdLZBMrXDDg
	 riZX22HjSn2sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AEDC369AB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174529079360.29683.5090718388229679432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a537bbfa50617a2c92d6259b641778695128ba9871352c25030402d80d06ef08
Date: Tue, 22 Apr 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745290793
