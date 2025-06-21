Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336CF7494
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750472394; cv=none; b=AFppzhoTGFRqsW7bPYPJcklzJVtMpLGhQPDr9aeNCNcFE86xwHQuFSoCmAKoPgMAaJnLr27BALyh3YKkl03tR4k0rcXH5Atb98L07BSJhOX84FWRpyEw4RnNjpJXodg1OIY3VE7gVzCfkXcfA3oSkZgwA29m4DLbTj4Fe4Eu9TA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750472394; c=relaxed/simple;
	bh=qUdGHCGWYjXYTWr+i0ZhE8yHj6xiNy4Mmj8PeLBS2RY=;
	h=To:Subject:From:Message-Id:Date; b=GNiAq1Z5CQVGiH4b7ocIFqWaHf20fw3gHmFj69j1p0b5EOt1pNy9e3zCzdAW4qxwaoJKVmLkKQUDJGUR2baixp6X5ZYQqBqCRGwmRejyoojWwVjzOquAtRy1vKnC8q31vLiHG3bld3dm/BhPtVt/ArhsdHfmXOgkHI6oqcEurwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJej7c4g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJej7c4g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DED6C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750472393;
	bh=qUdGHCGWYjXYTWr+i0ZhE8yHj6xiNy4Mmj8PeLBS2RY=;
	h=To:Subject:From:Date:From;
	b=nJej7c4g1MELK7rJN+MEaBzeYev/HvDiX/0v6z42RdUnZ3lMyu9xBfzL4ANHUHyia
	 m0bSFXx4Ay3Odet3pKCVOooDHVw16Igz6XQsVQsBQr0suLueLAwVsJwvvc3N16AcR2
	 oDnZiBldpFCrbIYNC/EccS8SArpc6FoJjHNh7GHYGNIim0q13YHR1QxvhURyXeNHMz
	 M0JKQVk1SpwXao3bXTegJtk8ci97Bb/d5VoiShzcSd3JCoTR7ASBmuXfDVO1XLu5KM
	 bXwd5QUjxKEVv1WJGSxwgX5ybNu2iyCtN9DKk68pLgOwwzzkuLBRWhrMOl3bn/mo0a
	 tEaff8lipYRLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2A2C7115B
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175047239357.4411.6287247766386205084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9916fe85454027001468d9b409d9abc3ad0f8ddddb364e072b1b76e04d9dace1
Date: Sat, 21 Jun 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750472393
