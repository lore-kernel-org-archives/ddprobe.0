Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFF742374A
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707296897; cv=none; b=NQbJb2W2YLA3vMSzQD7oStVJ8UoAJK8Iumv1pQ19XjZH5i2pktOX5c5gpcfDWb6412t2RosdUbDZSe+81ql3ROT7ZXjrHc68yYy6ImYDbdh+pL9pU6Uu8kN/AtKVR03le6enuq9eBrB85CseMlivmyWyuNVzd9C//ToomD6hoaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707296897; c=relaxed/simple;
	bh=P6yT3VsSYcevKRbxXlrB0QE4Tm0Sqg26/SgFvVb7QXI=;
	h=To:Subject:From:Message-Id:Date; b=BFEUz/cqPwx+bv94nraYSWKHR4G8Gmh6GcycwrbcNbsCssqYhppsIdjqtLJZ/K//GeRu5G/Uw4fCJD7USIjEHwfrvzmxfHW3m0PZOubV3pueNGuQ2/1oVYIurLXEnrBaluu9T5EAsLaHExRENLquAKJBVBF3IdIcbmSOCIGyOKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HlMuiZD9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HlMuiZD9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 726BBC433F1
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 09:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707296896;
	bh=P6yT3VsSYcevKRbxXlrB0QE4Tm0Sqg26/SgFvVb7QXI=;
	h=To:Subject:From:Date:From;
	b=HlMuiZD91bJ/oSnWBOJNg8zR8vy5vUxsoVj8bfXN/eTyOGvefu1+m3F7qlCUpe2AA
	 HYydRsCk1PsaPJRZ5HQ7cuLCBtx15ofb1QHqjL1GjqZF3/we1FYfGgbgrw50rLUymo
	 BW5g6yd5cBiXOAseqIwqh7ey7MZ3gUkbVjCDw5fFeFskyRlWukdQzj3+IGKbNWgRoL
	 3jNM+NZUyzII8KeiFod8bxsXgcjnuWDWGSjCZca1lAn4/bDlSRJrjNxqLk80JGMDhG
	 JXw9qlQRhyyO77fL0z+ldARt9OnW9DAMPHvE0PeTJ76XsVszFiviX8VxqtN8O1B96L
	 7sBH/5pNZWlhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B872C4828F
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 09:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170729689636.28327.8870917133717325034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a297ed76505c2d1ab1cd4140a81989f6158e233062242c3c23c207ca6107ef46
Date: Wed, 07 Feb 2024 09:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707296896
