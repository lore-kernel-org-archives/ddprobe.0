Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283132DC765
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 02:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782701914; cv=none; b=R9CgX/GzHIvVR4B/j+6z0+c19c65NHsOIi0jTGHTApLulmRGLBzJlNMvHIN2dzhujjbjw/cBpG3fPQfPMVsZIHiR4cijXpA6klQgRZ9+4YYQ1Pb3rUHbdLpC4d7ScF4d6uozQ2vpT8ordbJxc4mZ0hJkvjMRK4ANpu71fgwe0nI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782701914; c=relaxed/simple;
	bh=7ymakLarRE1NrlAnaqeU7SXR/pt6RInCJsFeIp8jDX0=;
	h=To:Subject:From:Message-Id:Date; b=jWkKt65v4Jd0HkQDMye9/wiXgv6AKpKx6oq9N5APNrkFVkUnGN4XS32f0mdZ7EuBLUtggUocQBk+e0pRzM8QgpykjR/I4K67Au8s//TQGPLLd9oYw+cZDJRx4J9FS+w45qmD7Uie1BGxiu6Qj++Bg14QkmXpqTfFNi+zt2DVhog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MUhk84Sl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MUhk84Sl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE399C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 02:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782701913;
	bh=7ymakLarRE1NrlAnaqeU7SXR/pt6RInCJsFeIp8jDX0=;
	h=To:Subject:From:Date:From;
	b=MUhk84SlZye/fDmKI1wtoDAIcOWe2qD8FPcWBLRtroC5oq+Iz2Chkl1HrSyITMXHI
	 jjk1wAQTK+5Jmx6MX7rA96ZPcInoUZGATnAs4YP2nDaeSTNFJ6E/v1tYegQ35CJS9h
	 QGvR6yVjO4GGEN9+rzsI6WKi133Oly8waTlq1cQJj0+N7t1Vls6CSvG6ZnR9Zs07N8
	 6yVpWzwsmcSThgB6qTvvi0NW1mmanE42PNkXRXe6uTCxr8xbHM9TUVTSKyNJjAkRBd
	 FMYLhAUqqGDdUio/5vrsme8DH5j7fOUnOZgXaf/X69boF78GgNAymglbinmfBO/GjQ
	 rphXgt643rK+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7DC2C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 02:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178270191368.5724.12301840284426781131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba29edbb5b04d14bb5ca7164f1c245dd81576598c5a0fdf2d647bd7a5dae0b0c
Date: Mon, 29 Jun 2026 02:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782701913
