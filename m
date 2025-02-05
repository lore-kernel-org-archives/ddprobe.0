Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E95134AB
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738728356; cv=none; b=sNycEpQXYSVDf0OEKcNw1jqRia0WXuz3H7BJryGYUh0uSWq6Wrd/+G5q10c2SRy1hXOIVjyeP8v9mCeid3auMsXB1S2vZDuZr1IRzqOToFz5JbllG1Djnrk9wK/CVFBZEWz+Etm9y8D2LMgMhs7JgFdhslCn4hoT00i/dFDwJ+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738728356; c=relaxed/simple;
	bh=3Aic7kab0HnHNud52mSJyniR0sKNHUA2hGN5sPO8fLY=;
	h=To:Subject:From:Message-Id:Date; b=iy9akFJHfwfkCoSQ+3gAk8jRVz8zjKeWlRWwwqTPM7h+1DUijjQhAde0Mau071lh8alZefkj11SyekGhdIeJINBBSk8t+0Z6AlB85BvCULfht9nzdGbUMfvFTgD+1QioPFNFE77t6EpYUyqbbBmyNMRrpbC4kPYVkulmp5WXLLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mzhl+LGE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mzhl+LGE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B665AC4CEE8
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738728353;
	bh=3Aic7kab0HnHNud52mSJyniR0sKNHUA2hGN5sPO8fLY=;
	h=To:Subject:From:Date:From;
	b=Mzhl+LGEAJQT64iTPrTmxaZOu5d+YGTAxUbdeOU/Kh22IAvDyMILtmnlhz7ITdKQc
	 PNRRKSG2JoG2kgHvb78WTYM+1bDKZ/wC5n8UyO8ZiLuRt0RfvPiN7Nv/ZJoKC4EQz7
	 tkxguPUQetJaQP9lgB8iNg1VTEBTQCSsOcXKZSAh6LnZhy6z1uEDhay9FDAfKMKulv
	 VPA23MezVeIhAalHwv+tNtvm3l8M+2kAMocXxnfB/I1v252INjnD7O1LxUzGuEMP9M
	 zcnEcvjCE1eiM7IGLYmjemUDf0CJt61LbmzKTOJ8o2QZo+BCfqHk1atPsjhvtYRatK
	 WqfTGcFpAN6fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D64C02198
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173872835361.32358.8850327107520891041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d44cfbe7f3996cb95817e2e2d88fe8ac3d886a3165e92f705914246cae3a13ab
Date: Wed, 05 Feb 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738728353
