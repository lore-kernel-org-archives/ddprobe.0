Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B1D93769FF
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788233434; cv=none; b=rMziX1bAhHFpf8ST64FScZ/nr0APBNLO9XCOtiYxC7Ozql3SOUjK4UZnG4D1VE5A+Wo7yu+4WbLwLb9ib3KRS4jsxbBSB18qaEe0MVfVMnC4BCiJysOgQPZC2FoW0dUYBBjeTc5TjGFDlWgpfUTbEzd3Qapbe9917AQMVMxrgbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788233434; c=relaxed/simple;
	bh=hDXC/VtyTKtIY6ZIzGBQv7ahIapOrFiMG8A/ez8rNfQ=;
	h=To:Subject:From:Message-Id:Date; b=Cn1spBpO4JaTRsV4aGp6WS5f2mvyA6wn4hf5tfy4AKou+MpTzuvni53J3EsjpkYDgwj3NdPv2C2fO1dwjysElbtyBZ/coi4Tlz4E9tfccCD7LxzGw71I4JjVlfSLOTUTb876AeEeKLB8YAaLCtLkWGfWdnXnVn6OySE/OXUedvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eDxHv8ys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eDxHv8ys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD814C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788233433;
	bh=hDXC/VtyTKtIY6ZIzGBQv7ahIapOrFiMG8A/ez8rNfQ=;
	h=To:Subject:From:Date:From;
	b=eDxHv8ysD/vnwhi5DYYGnR1E+4VZeJhNsA6k32cwXJWPoNuA+138M+gZBOF+HOZ4V
	 fQHaGvt3ycZI4rVv+uq/u5Ue2fJWGsR4wdRFRkSkzbj/AuMYY8TO2eCmvjX2/jGM8r
	 m7rowt7uzd+V6PsIWRaFrLilG61pX7XFcvQgqLJc2b8unLp25vRfX5pYgFGQ+G/3Hc
	 q+Ai8sZOjYDnd0fsn+hwGw661DdGrB6oEUzAIOkRg8h8Ibu2vG4kVhyvhAKloGijR2
	 rzqJ7osF+YfYSSyQvGkFI40dALahm3thZVCrJzQIMpvf4oMk0nNuUVgC6adNM6mAVU
	 OczTXdTgX76lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2EAC61DD6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178823343368.6219.16615512796536634249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e160c61508fe3d55842314023b9f8092a833012b2690d98d5024cbdf0cb6c409
Date: Tue, 01 Sep 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788233433
