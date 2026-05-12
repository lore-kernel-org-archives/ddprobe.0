Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE4B2D1F44
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778568635; cv=none; b=L0zUP7aXOagqcLi7Alc4z5fF+NbaQ1riXIn5rkkSdVx+6iy/zJQxSYg/LTVL3JDYstAfFnIejqs3stl1qZQG3aiOUGwJA91jiVgxqSyxshm5NRi3iqrikOc0wmhqwPPlgpNK+GNoJt6jedcFjbIu72GbqTNb2opOvNp3HIL/cY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778568635; c=relaxed/simple;
	bh=R7BLl50OPua1g4cNWIf9QL139u397a2tToHPlWsHgqs=;
	h=To:Subject:From:Message-Id:Date; b=ubJcTbkYaKK1/O4JTrf7+h214oew3vuFFiTXs//L5KAn+OGd+ZT1a0qddRruEVIl7NPZ40Wu5NLcYZCav1ZsX5XmZ/5it31JIhxGQS2mMpUSbrFpfDX29gvPCX94fSnNaJjEdwfj8DaFwv+DBXVQC10LVM4KH2agGN6YsUxs7GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FIKrDXoB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FIKrDXoB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2659C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778568633;
	bh=R7BLl50OPua1g4cNWIf9QL139u397a2tToHPlWsHgqs=;
	h=To:Subject:From:Date:From;
	b=FIKrDXoBSA6f4sg4NudIzYhUvqjuE/y4+4GOI7N3K8beXbE7fRJ0e/jzz9MzdoRRi
	 5YrRoX1KM0Gyx1ozgxHFfg8kcprzWtxpLJNL3e01lP7GsbFch2Oo8Mr2wLsEtNVK72
	 ClUhYNM2JoxztGZ1GqfgTio5GllZtXYP9sk/Woxt/2Zq4Z4kcE5dduVbqIUE5131st
	 SMgLm+kNs/gXYIpMHwV3BbkyWJmngRSo6ddM3oXv44RYnCVdr/11FS5ypEcnk5p1pb
	 yBI6wfdFXCl2Zyt4DFm6h0P/hxsyoyoOItEQn+G+LJLa2fZXUk/NlQf8SrmsLqS7oo
	 qaaY8AIglOtUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2810CD4855
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177856863372.21354.12110667064707986564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cbb861d9a94d36dc0685414633c9858e2f92ef6f263d689bbade16622806919
Date: Tue, 12 May 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778568633
