Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4429C3D34BF
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770199434; cv=none; b=L0k1R4ej6gxxWkmBYFl7r3QNzsvxuW/PM9TKeqnH097fsVA2Li+O33ZxBlIQ5kOPTxspavwrFSWW37QYGGlx4dRIBV9D5W+VXVl0KJUdkG4v7IJglOMH58uTIoGecXU2JKSAjXqnp+NAc6urD6ewE+KzifrFK6IusinJrVG/tfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770199434; c=relaxed/simple;
	bh=EnGN40V3KabZQJ6QvfRLQPeiM0IXKbdeghQarJkVAqQ=;
	h=To:Subject:From:Message-Id:Date; b=PZ40l0iWNQIVl67DB8kZW6OviU1CMBUyEwCtnN+K9a6TK+1SlDw5ATnDqEX9+Vo+Jk+GJ0wH/VzJWjLtNOA5ydGMhs/pH7mF5tdteWUstYi4QFThah0pHPJRoMfG7+Y2vYBVO+9j9v78zDJ4rLRc5oUq7kE5Rn2CKlFibw+4gXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJ+pA19V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WJ+pA19V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2DC2C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770199433;
	bh=EnGN40V3KabZQJ6QvfRLQPeiM0IXKbdeghQarJkVAqQ=;
	h=To:Subject:From:Date:From;
	b=WJ+pA19VSwFpcy5Vjq0RHqZNfX5xsH+cns0sqdCq5PLdRFhpxW5wyHHPXMPqx9rYy
	 qXFVsChRrjC1CX5hzDno8ZwtxS4lmTzgegHblrJ9OKeN+K5XISm0shOBGu5P3ghN3p
	 gQszjctwmconYqJVG3PUJXF0fCoj3Q+k+47wVmnctLZ58ZU6f2KfnU3/SaWIoir1n9
	 c94Jof63jnYGrYthYvQSRf+NwSWxEfg5gfaSJNEXYUUwLsFqCDHH15P2cpXs5ebwxG
	 sboCRwfZcJv+QBClDxmhSnay94bpYN/3TKwJ5FoM2BS2qL6JFy9Bjn7ZjW2MLwJvhR
	 SMk4E3rZI31iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1EBCE9536E
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177019943364.18666.2962715463404631547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a2577e8a286d64e437eba03a6e8616690eb2851cb6f0c2fa19377958732b47e
Date: Wed, 04 Feb 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770199433
