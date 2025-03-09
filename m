Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3924914D43D
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 22:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741560534; cv=none; b=MsHE7KS+jGb6G2iYNUfMXPc4CwoxfMRAs0ho4L+ZHnVjP4KpnPAi0Z3DwHUukpGXSuCEWre+9dT4EsI0f5hk5rdXadtJynysyDGt2POyXH8+c94l4/WLDO2mCMqAvBR3LIA5Q98QwyXs0fXPArHum9gdidGhZuy+pXID/OWH/6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741560534; c=relaxed/simple;
	bh=ik78Co0+ou/pK/X4L63QzqB4U4Fg0lbtoX1d/iBP280=;
	h=To:Subject:From:Message-Id:Date; b=R9KGrN/aIpD8keTCkmqjr27No87BTSnIqG49gbDZeg3Rk4r/wdN+SrXP0MH2xObm/j2dXT4LF7ZILn2h/9AN3ksqfQ/VZHfLycbBwdV6yLcNPCfmkBZm7DlLnflVpyZnRkR7V4b/rOIqn1ngxxye3rKsR2pTM9hqWdpGXG1SqVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aqJYpXvm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aqJYpXvm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EC7C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 22:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741560533;
	bh=ik78Co0+ou/pK/X4L63QzqB4U4Fg0lbtoX1d/iBP280=;
	h=To:Subject:From:Date:From;
	b=aqJYpXvmz6m7m7NWwfryYT0dMSWJOhK28pJ+clCGt3UhV2ftkSjSE0DGmUCCAl8YS
	 qI8vnpuWKRrirFKn8Sq9motX1UvccVVUqhDZzsrhSKyb1swRDpb1PApNiO+tcsnEPn
	 v3z57ba+lbul+9UpTGCUYMfyho6i5W94oBa2FPu+Nvh9Nau9qK0F1tOGhGLI3plsKH
	 /BXk+Lj/gmu197SMCOr2QcuNQC+Khk1dhp+h/rZiSmEbpCW5wOZnuH0EMclE3LI2rc
	 ZW8iOMwA2wEczlVy2GG7DLwtNYkw2Hrl62Y8n7/kybaQ0Hz72txjyMQWcS7Czb1G68
	 Uva9RQPndzW4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B67C28B28
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 22:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174156053358.4335.13799225660261213418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53f93b532cd0806803752ddc3bf40c83aa2f7f328b0232e5d40dd455cba6ae59
Date: Sun, 09 Mar 2025 22:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741560533
