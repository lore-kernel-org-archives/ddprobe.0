Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A54223D7DC
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 04:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777783054; cv=none; b=qKTo6OXoPCJsqow8/E1APtIhx0qVBBO15QxHLiUugQ2kLE1d6/9r1gJqdQ41cKW0/HDZqo/30vWr0qlf3nz++5D9KjBluzCWMIWFnhXAXGbYRfr3m/0RaFVyecMPYbHZUg2yeZhlctzFGujLXriKo0oiOzvm05JwobZASAnsoFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777783054; c=relaxed/simple;
	bh=iBcAjaymHN/n3k+NfyJB7uVWQO5PjkQpQzg3B6p2Rzo=;
	h=To:Subject:From:Message-Id:Date; b=epsnvoeJoea5z2nBR8hY3IJLJHmHYtZLCio1SvVkowD8Jn0+A7wus/DtzuYVCi/5wV3GMDDKCQGIgg3A9olWyk32Ny+YRcRfMDx5zp1d9SZ17yP4dZFOk9/D9YPdpxqWP4SZtKHKsFBsc1hgO55zaaYgXxAVrgimdENwnYC0s3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKe4KzU8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKe4KzU8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC044C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 04:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777783053;
	bh=iBcAjaymHN/n3k+NfyJB7uVWQO5PjkQpQzg3B6p2Rzo=;
	h=To:Subject:From:Date:From;
	b=VKe4KzU8kCY85bAtFLEDcXZC8hDg10WZk30nxU+bC++vpQXGLDZd9AfM1iEWSChfk
	 IiQ4ycmRRYkqDWlrI31ytjn6ScccFwkRhqUyFQb0DlMFswJnVzYFjv+KxQJIe7uZ0p
	 FNk4S2PpNqUu1JaCSoIW5pxXcGJGgwA/6xxPIvdVXKTGF5dr+MjMNs+NbU3vnxPClB
	 uBH6lXtYAqvk4KTFeVzRg4QG/b6sTw/aSWTkU0Eyy9hjtBj1yVg4xwCHxnLKh8/cxW
	 2gk0tJhzRLWtZ9CKW22o5CQM4ei27l/c+Z0+aBzoeoRQkYFHfGN05gNM4KQkcBm8eo
	 +HjOcAOWVybsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97EEFF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 04:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177778305368.3704.2623392730257239378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2669b1d502436ef0e2a43cf3978d2ee7de71a569d0095c184a86874b1fd2793e
Date: Sun, 03 May 2026 04:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777783053
