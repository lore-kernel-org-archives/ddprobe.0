Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D7335202B
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 10:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779964354; cv=none; b=PQpoBKwOKai3d8J2bGBbNPNcBzu2MZtrJo73Bc+erHzo4CxKXF4vhm0SDHmJL2CNAog92BRDrRYVDUlBQ4NNX4IrUvsje0ljiQblyFjfe94RC7C/V5tqM1vh+g37fm/2tMPFExJpkxj6dyq6LnucBBLXpdYLZSLX7VwdNL1TnEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779964354; c=relaxed/simple;
	bh=E/JA3F4fxih0jJLGCOWIjdhdvq91e+b2RnXiMzObNhI=;
	h=To:Subject:From:Message-Id:Date; b=dlJsUY9aZuDS+pOJz47hSjxie0BNpBNGYY3132eua2xCs40JIJMBzIy0hDv37Zp8TRgHc1dBG9Z83ARIW+2P7q72TJbYn9s+ZEMV+BkN7U5kjZj6UD8pVRHO5ja6eRy/2+KTyBQPc7XVK1QXrDOT2FmnJTgVePC0x80HweQlirk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8B/1DIx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8B/1DIx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C68AEC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 10:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779964353;
	bh=E/JA3F4fxih0jJLGCOWIjdhdvq91e+b2RnXiMzObNhI=;
	h=To:Subject:From:Date:From;
	b=d8B/1DIxbJsxIekmOuY3F7lHA+LELivVPrJA/PLi91G+yr6guDTY9NSQiat+wgVmR
	 8eEMWMV94Xm0YMPH2PEFTJtnGowoODnRiiqt11j2YM9Ugd4Oli5Cl8278cRSNo+XIE
	 YxIISk4Fo445J0/b4eUFhiAfHqj+ZHg28bG+G2X/HHg1KL9qD8qgzS7K539NSRHIPb
	 O8Z8advJTAO64RRHGj8wTB8yqdNGUVlsti26HABtPCAZhNIBUJrrtVXiWkXwRbhjeZ
	 zcFBSv3JgjMR7zRNMPTyQNJnm0p34bmnNRxTCULaoek6Qto/NJqT6MUPGHkdZ6+R2Z
	 nHLAZCHQlUi9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC160CD6E44
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 10:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177996435368.9082.12332360728562929936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6069e2fce590f6d55a6e6e2f2ee8ea4dd0a3684b4ec469faf3086fb79ac49d9
Date: Thu, 28 May 2026 10:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779964353
