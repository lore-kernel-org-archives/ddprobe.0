Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3281016DECB
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736960154; cv=none; b=RBPl/f8Y7xH5UPdNG2Y9khCFFe1uHBI3jfB3xRdW5St45TiW2tS23EjH26+4KrZr0YdMFLODx1UDdLZhTZq2kH3oC4yRPg70Si1RczgJklsYsF/piTnAR+F7AqYOj1SrqPemTnIkQGCK7clhYM89ju18ZQkxuoF7PK7glf7Ikgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736960154; c=relaxed/simple;
	bh=3DHCajLw4eEJAPbrAaGXiTBwUdEwGRhgUd5cliXEJ9I=;
	h=To:Subject:From:Message-Id:Date; b=emjXKHC2AuLgt7rvzc3GMEIaz2X4KzUM1w8b/2l2I7ursbXbDGjhSLVD5lOFzInJ7lN1eLYD40Y4UF34oY2hhBayxwG2j2gRMgQhTb3IPizmpO0ORG1xaemChHvstwoZZDebshD/TDZmSow70bfIbCPZahUhj9tXkKX/2XD9LBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qz8luzH2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qz8luzH2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB199C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736960153;
	bh=3DHCajLw4eEJAPbrAaGXiTBwUdEwGRhgUd5cliXEJ9I=;
	h=To:Subject:From:Date:From;
	b=qz8luzH2rSeQ/0VpNoaWPy0C/owTuUCwtp3ONcEAUKjNfhxKc6ERfazk58cxdY3KL
	 l0ssVegNqlHKKH/rx6c/M0bPEQdV3R3Xb8VZRyubs/JF2Zny3Raa3N4xlZyrgNB4Z2
	 Ix+X2IXD2eYwXDqSCoxLigz+EflpFGchhXI0LhDvqdZRpmz5ZLj1iNBs1m6pNytrvj
	 mlPB1X0+I3pOP2HFUSxaAQGHu0pM9Ttu1rJ8h/fgB3LIcXAkur+7pr6xR0Z6BW/7Oo
	 PFwgtO7k4KPmZXnHDHiVN7YoS1ZGc7Z43QdD9YkvNbBGUY0Y+787VTSUtVbeVX0NqI
	 CSSNihAr6F9vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F59C02183
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173696015359.31863.11371409328354544118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c3ebf5f137958d6a5309a1aa140813fb42d7b41faedd265c4998a2095b5b55
Date: Wed, 15 Jan 2025 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736960153
