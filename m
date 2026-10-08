Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CFA347BC6
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791495034; cv=none; b=QW/UnL/sOxl5CYJhnzkVElWTND0/r+rBEIzChAwTLNEPI2Lyt6wAqGUx6Eao9YmRZbCW1mRRj+7HNIfUWf3unFd95BKD6F1G6QXtsffb5O97ZbzCdpHmZvhNIER7WuSGD96xlgisEy1x4wBn0ouxTJWcL1s4JEeJR5pJ6y/WMJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791495034; c=relaxed/simple;
	bh=BGALUB12vm9wzZ/S2z2kKMdZ/s2pCi7yewVk3afGcMk=;
	h=To:Subject:From:Message-Id:Date; b=ZSCLj5OyTHRf/DpQVQp9KqREkYbCgo5rHP5pdXJHb31vtVCrzj0tgfwlePecNlJlT/lmG0UdD0sKSnjwrsIQYVLmSrlEnZOLfW5NYv1Xs9S/qN8FuFIHhBDXjuBNF5z13/J5E+pz4XL6uogCLu5IuMqZVygCMfGYkHF9tF5jVIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FpjlFWrW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FpjlFWrW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD03C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791495033;
	bh=BGALUB12vm9wzZ/S2z2kKMdZ/s2pCi7yewVk3afGcMk=;
	h=To:Subject:From:Date:From;
	b=FpjlFWrWTO+EyGFD2qQ9U2tBmxu34xQ1c1yWE/66G/NhuLwAZ3ry1NOIIily8YDai
	 vdvioJPBZHh5zd4FiS7Dw4brMJ9T+Pr6tm8QIISL3YM4MJA3ZE1xGGXj8/jgPRWsN2
	 lvJx6UeHeS8He425kyuHz/iQR0JJcjvjmNrhgPCxgimnVM8Bh0LhNURznRGJ24DY7S
	 rDy0AZOV9dLMCeeA8gjsbgLvAaPs/6+rWw/XH/mmdsDIPV/MVjhR/e5lIUGI7HCvVj
	 WFs2qGW3IDSQOhPWK5DXsY3yJQKAYBVmhgwVPiH68EdCOaq+ZCI6xKCXbSxOQju8lx
	 z6i/jvVLXDtTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FE4CA6015
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179149503368.21275.15155707692288503131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b7a4d7c9c185ae2b2a6192b3f6d6b1d59fe8d263836af4a76344810c2d453e4
Date: Thu, 08 Oct 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791495033
