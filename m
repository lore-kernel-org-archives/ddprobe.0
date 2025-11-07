Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1292C27EFE9
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762513194; cv=none; b=B6kjjGAVSSPM5WCkH51lwgfB3LR5TRT8G0TtAfFc+9e7lYrovSZYE5jwGLoX+7ooOfno2PA8X6fQryzwdxNhL9ps4fNK5EpIh6c8yvEC9UQKMEwYGJO26y9GyP1j/aIb626DE7AvWcBM8ia59k47wOW8kHpEF6DyX6Ai71acvGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762513194; c=relaxed/simple;
	bh=vNmhGGXS0GwXTMpGpm8OXLUwSAuCAZEXu5AXS5tsZS4=;
	h=To:Subject:From:Message-Id:Date; b=qYL7adrj7EjpMBDjKIQpiw6TVfOsJIQSiLAy8g9xbwJagLR30GBgb7JLxJqdDjQHYh0veQJo6iZV6vQT0+xEZ6XbWwdGFAADf5aKIJk++8pZQN1WYwgni91TZ9XPvD3CXSL1nGPAM6PLBAdPp0ILv6BODCZGBo/9BAN7OESOc1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOxc6ihx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOxc6ihx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A31EC116B1
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762513193;
	bh=vNmhGGXS0GwXTMpGpm8OXLUwSAuCAZEXu5AXS5tsZS4=;
	h=To:Subject:From:Date:From;
	b=vOxc6ihxWNWu0mDkadCGUXSf2lZoG6P7QKCd2W8ydL9194KiCShB7fXEZnXAJkSii
	 QGigm5SxhWaATtuVk3dc5Y0oFzdevl3WnR16pCgsSvhW+e1os8QgbENjKchEZh9F0Y
	 UyqTr79wqSY6O41NxwyHM/QvUpbhNt5yI1rXQ5stsEIkTUB1Z4AT1XiiyU2qd8uXvA
	 Z+NQuZjnQAq/vU7u4t9fST3rPHDmtzIaqZdmBTlKbTj/TYyrC97E8SDhrDTg3BepA2
	 ViRNkL4nxn1EWizohWTX7RBj8dDaIRX5hFXB0bQs26e2NKCh2IOgqqGOr3tYV7llhR
	 +TQLEQIba6CRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5C2CCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176251319357.29347.12027674390616897029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04f3c909ccb5d3017519a8eb186839f7a98fe386155b7dcf1a543aa137db4738
Date: Fri, 07 Nov 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762513193
