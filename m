Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1168414B07A
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749625794; cv=none; b=Bj62REBnx0AUjDUxvPbMbwJG9mITNHKFQG6glY011yiGRrSqQYa4j1nw5nys6PmJruocZkPhreiea8N3dT48e72xFaab9dctJa4y563Z3r0tCydFNXxhjNHlUQlU/KUG3ZnLB/7MrLe95MhKv06Io1kDhFnGe7kzlPf20bksHLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749625794; c=relaxed/simple;
	bh=l1jHbalcsy/fE2SdvXLVwuJzGuN3Qv7RSXpR3BbNpOA=;
	h=To:Subject:From:Message-Id:Date; b=Do2rXBJFTFFMuwJZFzxhr5fMxHDPSEw/IbMXKYVPh+DMhfIFzekpR2Penc7q7V47rtj1SDcrKZ/olv3DjV0hmlG3bwQeUTd9+YdUjRlZYR/2tkgpnAQSycEBpBA2gTud4ZmFT+0FOLuaVAAu+h9nDUsG7vJ7R+j4Ptl6IJqbLdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=geLowrL9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="geLowrL9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FE6C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749625793;
	bh=l1jHbalcsy/fE2SdvXLVwuJzGuN3Qv7RSXpR3BbNpOA=;
	h=To:Subject:From:Date:From;
	b=geLowrL9QZPFq3+PC0YLOHEs+a5xV28MNcxrnh/5wv/HKO9OJ6u/U1je1hBR2Tq/p
	 xQnIJMyazIHYJzQxMhH5D7WMRZPsvCE8Jzw+aXlS5zrPgfKnUkosRjeHe/xT2zTMni
	 1cdXHc9lR3B8mTmdaXAsjJVt1Kgp8iB4rOoQ3gyEgCUPGIbM/WOYzA5GggPA5eGlcM
	 uYK5twIJEyiNJNvZOl+NJ1unJMuDFFqbam1zkxUxgwMV+G0tZsjVBlHgDLJt8JpBIF
	 3xw7FOw61QM5qr9G4qIRikLGFcgRxk/RbVhW3Az2Sp5XAmaxijh00Np25uwLtlUOvQ
	 tBemcsprymgww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CA2C61CE7
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174962579358.25769.16104089135454545600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66895f027890758a6a70edde6c6640826287a77c90f6d4a75a2299804f75784e
Date: Wed, 11 Jun 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749625793
