Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64979199EBB
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744556995; cv=none; b=Yr9kc3DC5qipbwkcLzsOYDEL6n0CU6Ox9LrdQhmTZvBcHTwF/sfkRaGpwr4CUefzyIF36ylJ86rtmmOkOixnlYae43/AtDRrfijjVqxUxN5mbl7j4zt1Xx264tLebZd+0xrlKqurK8nyHNF5APapqsSZG/wGazUDlGAs4Ws0jPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744556995; c=relaxed/simple;
	bh=yabLKK924S7YoB6xPXJkWKvBTtYbKssb5CfDL1FrLUo=;
	h=To:Subject:From:Message-Id:Date; b=A9mykgRcYrYRNMdhrUOsF5hQ/zqtfuO0xYmQEKFFv/ycqW1n3vn6Pqr4OMIdFa6J94B2OX0sTHC2JXl835ollFuHTLtOv4GLiF8/bC+KqFGBuecCe/Bga0+S2wkoyOJGN9crA7+eBCeB3/MPt8FbRh466lCheadt2FDkWyptybg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DkyEHq1E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DkyEHq1E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C111EC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744556993;
	bh=yabLKK924S7YoB6xPXJkWKvBTtYbKssb5CfDL1FrLUo=;
	h=To:Subject:From:Date:From;
	b=DkyEHq1EPvdn2tMOL6rpqTnkO0wqecAJvfz7J7JYu7yoNg043oCR5U+UjT0Ms4twr
	 WwTClU3hnv/JguGgDkORSO+33tHrpxMkc3VEx+nWYF/dcJsH8GRZfrpo4yC+laxQyq
	 MMTl3XcfgwwrEjSK3SjtqjX/W55bfumuBd35cKivEH6dMeB0aUieod2weL0rjBVn/V
	 vF8MWMcmw2qVlmZf1iqy4RImm35bJLFXLzyXXHMJ23jgWSyf3jTNXvuSqAgjBL+2WQ
	 lbsjXaAJ5rwSdKM3PyEKMGpLb//Z1+r2mnInjsFGF8VP6evhs+lrbdLZhbNmPpRxKp
	 vnAj6Nb9UQk5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A87C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174455699365.8622.15173567058136110949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d90801f218c69249ea3f61ee8f5e23b7dd40de47b11166e015657b9c3cf77aa0
Date: Sun, 13 Apr 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744556993
