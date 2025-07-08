Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B7C1214801
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751966994; cv=none; b=aJz1vGyZqfkxiuo30sQA0Nso1eq/uThj7Y4do1mwE/6dsbvYyPX7EBFSiIV7A9zAL3PDVjwQGb2dLw75DTTEGZjQybQWNYwNgCr0og/cUbnTHou0FW+5MZrZSnBRx0PzpSKWKGoM7jH8Euu8wtiiPnYO9/MV3TDl0zt3JQWvD9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751966994; c=relaxed/simple;
	bh=tMO2ye9h2HJWc4+ias4ZomjBNr0MEg9dGkWNd71+cdE=;
	h=To:Subject:From:Message-Id:Date; b=uj7sLDs2XOuf054Pe8ja7uLapGCbJK5NRpiF41+ZnRnbChJu8N+0C2wpl52wWVWjulXGtdJm4x+It9E9TF37v4fYJmyxVPdz6w6Mi3250WIvc8Cxfsjnjk4jlnjyqPULWwaDwV0kIs+JCGGLYUoLCV+ThXdLdzj2Np0X7b7Vx1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uW0cZMlQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uW0cZMlQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AB7C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751966993;
	bh=tMO2ye9h2HJWc4+ias4ZomjBNr0MEg9dGkWNd71+cdE=;
	h=To:Subject:From:Date:From;
	b=uW0cZMlQqrJDdSA2ah30+6wTYx4W18LRQgO/IO8TnLyml1irEivg1XHqvaQEmqSIJ
	 CyGoy/DVf+0rSa5BVfj++7ZFzP/MrSG/IXpxl64oU8XzvDvRgy95K2Iq50fhif/MU7
	 KMfA/OShoF/CcS2dnMhdJvIhf9o+D0fg3rrigeBk9yagbtuB8+nC/KDvyf1sDj+jT0
	 hhljaFYY8X7YVMMxz/0R9jq6/MEaiLs2qYVD2MhqwkwyeecSR46SHUqYvIslb+AIJL
	 huph3vY1lk1CR0U2FCgXJw/8vVv+Tfh03st5fEtdDW6I53ViVC6HPB8o7o9ZBO25aS
	 e7UwyC+qIWpvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F894C83F0F
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175196699357.5822.17630874404084332567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1deb86d286b459704ed270dda0664c5b266dd322e18a413da28204f0a9af8bfe
Date: Tue, 08 Jul 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751966993
