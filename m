Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B32E1BD00C
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790743234; cv=none; b=uCquPFU2sMFiaR8bfPln5kQbi5ezQun0ziaZp9gJCjPHs3d3SNxRs74fwZjkQpSeACLr61OpxIOUvpPVFaIfzEp6yTtRI/83D1ejwvleZj8G11mdef+fCM5aUlwOZLGb2oGqobAYxor42LvJGey3DJ33jhR1sy/DUBClDnImp+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790743234; c=relaxed/simple;
	bh=OHFSV4c4PibTCgTzbtTibaQaEd9LZyquOyOkV2BUrk0=;
	h=To:Subject:From:Message-Id:Date; b=DY6X78242fT0dX4sQdt8YfNFjqu5IiiuMd8YIsInea3jE0vhs3PtQYdRb7sa6ekjs4UDjFQPYRvqynjqg7phJsV/zZe42FvbPNihbPrqM3mbWVTxvHNY+jc/w9k1elPQXH+3siaCDwEB7DAqqkvh/PVvuTzDDC8e/A5v1ThP28k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nYaEYLnV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nYaEYLnV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CC4C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790743233;
	bh=OHFSV4c4PibTCgTzbtTibaQaEd9LZyquOyOkV2BUrk0=;
	h=To:Subject:From:Date:From;
	b=nYaEYLnVSarD3xHA2pdsZ4v4HOOECH2pF+L6E6sSRKsL4J8pwb56Ors2fI5X3w2bl
	 iDh5NQKxUpZ0sGT0EFGekTwbszCJLnAYsWUr1rBdpCWVRtfdB4sK80MM5sD71VmU9+
	 9XG+zTdYEcgltvMRJkpqwjlbJvKrFBJKlL7ctjJ2KkYOSqR6Q/A/Ngnim0vE2jJCd+
	 r/I4NraUU5GEE3/7634Q/Ugj/FSNNyOsBGORWf/kw0bIjt1dlRcqzqQZfMczLvnXsI
	 p/KWciqF8HGHT4IiKIIPCS8fJZg6547Ky/UU/2mOkU5ycpAVKeE5zrzG3wIzCloFkz
	 Y6G4pZ88IpOIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C1DCA5FAB
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179074323369.12578.13217117624408522430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48d6955328ad87525bf052c19512a995b6c3d1c6076b7e71e8c33d2c9382c7aa
Date: Wed, 30 Sep 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790743233
