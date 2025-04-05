Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 690001392
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743896995; cv=none; b=bJXIRFGSDcbpQmi4hZDstUFPSX0TQSkCepFMNzfKd6dc1fdjA4xo9Z7Opxse+3Fcb14GBePuicmMQMyT+GXIUUlfF1X4+v3Q/i+IwLAN47Fmp/pPJ5RohgFV7L3KVQXjIrca+r4lIZQu0bpI1Q6hsxDpulmDx0TBDZKaJ+l//MA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743896995; c=relaxed/simple;
	bh=AmVWDe1YR3/TZ8SOZ/2We8iEX54ODCePgWxqVX80PIY=;
	h=To:Subject:From:Message-Id:Date; b=XWwlRG+knezAQmKSorU9s6lVHmuRAS3Eia3Wnl5FJtSp/U17gtkOmeDuiDmIv6g4Rh6vEbFrdM8dfUz1Eh+b+AfwYQTndyP7shApyty4pr4zEBIwRn1IZSHrW5eRROpixDPVX2Su6jP3Un7i4kgQBb0aMM4n6fyZMC9GEVw99Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=edsXxe9C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="edsXxe9C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9FD5C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743896993;
	bh=AmVWDe1YR3/TZ8SOZ/2We8iEX54ODCePgWxqVX80PIY=;
	h=To:Subject:From:Date:From;
	b=edsXxe9CmyQOFyGIK9dFuSLHt7BA/dojl6ExFIFvV/KFHAtaIKzhuLvQYc63jCX1D
	 FjQ86Mj/xc2BEWhvlaNrtk3NSChx+/u81S6gqHwTex5orbsnudZKyvMpyWG+n5KyiE
	 zbKuCEyGFzL+/rIcVUh5hgp/p97Si6fYRqp9w0OROfxo3JbXqazUBJGX/ZmKeUuuoR
	 9gejjS+17oGCk3uk/6U8WS6LEtu59MCPnumkfpAw4YQ2/5SbME+0uZI+Sh8pACpxrC
	 BPS7vQ83l1KcbVgNh5dP9ooSUzHRDBmRb13IM9BxRjNSVeBZEfY+aGZaAefiSyuF5p
	 xRChS7tAzB/gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A446CC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174389699362.24943.8409662290314488571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfb66f2952eb676fc5046edbfef932945bf37022f691ddfc6834503dfc5a4b17
Date: Sat, 05 Apr 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743896993
