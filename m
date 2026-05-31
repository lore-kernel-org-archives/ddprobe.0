Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C9A8C1F
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 00:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780185874; cv=none; b=di8yGb0nxTbTqL0GJHNdc95DsHNKaWTo0sL9kfIitevJ6uBySLaqz785vz4hixZXLuBHpOiCuL4yXMcGHaIEpWgG5bHPBk2rwvP4L/Nj2BesgD8+TwTbWR5sSejHzZWpsRHuwQC+kYMzZ7RBINUam+zjn+htwe/MQWiVbPFzWM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780185874; c=relaxed/simple;
	bh=F2LFwWOTLd5kk6LD8JcBrjzYYCm/fRBac1WlZ2qk4XQ=;
	h=To:Subject:From:Message-Id:Date; b=Mpp0gWA6rC13HVVeTVxtFe5fcCVsf5YbuShpGLRhQGjyVeXXckizAKAMH9aLaC/7D4STPA0TPOOa8586/caXINTcGdoYFkIpQk5Mk5OYVvK7sw0vJW3KL/GnizclxVQbkIHSCYIe8dGcii+fhUj+mMJcvMLRAXdVdoEaispoErk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOZP88Kt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOZP88Kt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5DEAC19425
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 00:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780185873;
	bh=F2LFwWOTLd5kk6LD8JcBrjzYYCm/fRBac1WlZ2qk4XQ=;
	h=To:Subject:From:Date:From;
	b=XOZP88KtMqXQFPHKPaekMnK0QAkLSue7dt6DZ9JQCWSUXl+Da4TZwf169ehWQO5VP
	 SsehXPCxxfIZu9zdedYA++KGFQW0z9cSxoWcjDf/ntSjHZrLfxS0B4FNBRgxRXWXrp
	 g3JQHia4Yx1R791mYhVTw6RjNU6ueAtd0vjhrEldGwrANb5JS/kxdZZC6CWoEMotu1
	 +aeyb2FroVqQsoyGVHThiQGDVlODVCnYcRYEjrbF52nO1yGdsWUclYlh+GmOeGcZ/t
	 FD37okms4+3uT9uLcNz+IBZIHu6LKU6dJ1P0+t9bA+6oZ4NhqzoA0Dp9JWP6iF6UDT
	 VuW0TQf242diQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE20ACD6E4C
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 00:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178018587368.27934.7755292966169020802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d70914805ddb69ccb96cb1584beddaf7f0720913599e3aa9b87901b1c2f343f0
Date: Sun, 31 May 2026 00:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780185873
