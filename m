Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D3D27442E
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 15:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717168463; cv=none; b=s7UYss+X7aR64mMMUupmLhr+tug2O/sZR5WJzTdeXssHnijCRj/jDULG3AeqcTdP/uTXtEc6vQsKW1v2ND1IEmgx33w11uD+lo7Q6oFXnU3Km8cmWp+RJ9coHI5a6lbYjZeoYmPWWDWzuRNmB5ewPObntVC238Dx4RGd2JXRmyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717168463; c=relaxed/simple;
	bh=Vyn7Glzme7bTtYOa2rc2f7ms6VoEIaEBdRkgXY52pNQ=;
	h=To:Subject:From:Message-Id:Date; b=Y+Q8K3GilNKmdxO4SbYK+O+lbXtBaCgThGZx+PPqDgTDoa2Lxl7z4x8Hhq6L2XPF383IL6yMkCy8IVIrUQW4WuzhRydx8w2gh6MNzerogwG9FregoU+CnjsF+sGkIMrhMU14knmCpL66e25Yh6bEZTAUrto8YeamuaVZZ8JPig8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b+QH90Nr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b+QH90Nr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0FE6C4AF08
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 15:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717168462;
	bh=Vyn7Glzme7bTtYOa2rc2f7ms6VoEIaEBdRkgXY52pNQ=;
	h=To:Subject:From:Date:From;
	b=b+QH90Nr7A2G/IXQFz318kyhPbPQmIEWXBfRcK2G06tJbpYWFIQxMmD1IxROIuSXd
	 Zo+0blNnDIOYfl3IxTrBkLSARUBIKAdrv/98tvqJGn7hpIMaDjKT/5daHEicHI8u4z
	 Ig+EwTWmyXCNDfsv1H1FIX8kDjliMUzak5i7JLExS+WBJM9d+SvouZ0bxpVlMatbLK
	 bitq5ztPvj4aPj1/9I6IbrL3PBKSqV2ql9cJzkmcgPXnk5752I/njUe84q+mq2dH3X
	 RreV17ccfQszzyAn38spAXxxg27/KJ3elKbrqvLlCLGn2aIfOh5SMNThzqdovURx0P
	 ePI2McWQK44pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C60DCC25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 15:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171716846280.28173.7176650219159299940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1e5e92b224c4248be2bb6bd6800d83e93c0a4f2dee0b19f4fc0975f34ee5905
Date: Fri, 31 May 2024 15:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717168462
