Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5379221723
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768967633; cv=none; b=kpJQ+b6N4hdrCvwmKCc6IzutSnDoFXm/Tzc0aJ7NS1eXa7+t0Nl7HjR1nxZ7wChNUZghNk4LHaT6m0/232D3TEA43FhtaomRxqAsR9JwBOpswGL9w7W/KDKth2+uEYBFXOO8heb5o3/k2I9bytcKqgaqewCzSW9dxeygP3Udy6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768967633; c=relaxed/simple;
	bh=JVJfsmiXFKiF8Xh8zLJaHfRERd/q0eN87WCv4oo3uv8=;
	h=To:Subject:From:Message-Id:Date; b=bKQKrpJ72j1UqdOyrckfCVLpGdisSK9Q2q+eZdxvk8/olFEiHsmS8PH0l6jEA71ucWiUfOcSX3NsO1ilMmkHQ9ElceOeaZ8u1JWvzTXNBPvhBLydeFSf8NdNwDdGCg0DMGbxDMWwEXKLAQZlwY7MM2By3p7QOHMX9tmQpA4f0+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3MneoiN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3MneoiN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30E0C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768967633;
	bh=JVJfsmiXFKiF8Xh8zLJaHfRERd/q0eN87WCv4oo3uv8=;
	h=To:Subject:From:Date:From;
	b=m3MneoiN98B9rSSaps+VJOAhfYT/Yh7g6oz8nw1Mp6woJla7EEXSLnxGY85ba/dDZ
	 p5sbtjSxFZex66thu70Fmm2nleuOCaHYoEmAdW1VOqana4sggUAwP4GkNJ1iCvltMP
	 TtzWTNKVPnLBCSyxNReANFsqDhayLtn8EoxlhTW8j7mJMUywwbjRmfMZxLO82sIeUS
	 2kWAEw9kmvs20ORH7r9bE4+V3/GJDVd+Uk2lTi2/1MHQo/0dpJYwMpCZKi75CUmbgA
	 AMfYvzQoJEL67me+6h7F4WytC/5qqfRqCh8JDW81zlW3AsInFtwcpbLfSHuSeyWpm0
	 8V7NqfMivdiBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B4DCA5FBA
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176896763358.13950.9460513752528758453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6cc4ae24ba555fecc38a1f71a9245109f52c4499c4a2d22e7a144321289a518
Date: Wed, 21 Jan 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768967633
