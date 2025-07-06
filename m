Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B912191499
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751836194; cv=none; b=lmBVuRrisXPIBwoBzayBe9zickIARAXogOpysy02RPJg8uHySL2vNu77wiI8AeNUK9RjqpeQZsdjSgnWrZ+yvjOQ2g+gDqrEj/Pg7nTw4S/pp74dM7e+XHoXm2Xn4C3KVJWH4Sy9VQAsfZCJpzETLU04Dbox7/R5QxfEi/BuTVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751836194; c=relaxed/simple;
	bh=aorwp8cPWQKissjOHlXXpZP8F73vE45oRAKvkbucB78=;
	h=To:Subject:From:Message-Id:Date; b=p+0Cm1zGhOKNMpzjoFHJXNhDJsyf27rWc4vrxoOzBoBmLC/xmVVocJu1CuHbawEoLpz/H+RRPGt7HsU2hMZVgPzNYCz9U7h+hDh1I9gKJx7MnkA/C4pt2RXyybEk9dm/NyRpOjpuqpdBw8OuTqgD+bMxKggoxtJ/EN6CvoimNU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSsGKgVs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSsGKgVs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0034C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751836193;
	bh=aorwp8cPWQKissjOHlXXpZP8F73vE45oRAKvkbucB78=;
	h=To:Subject:From:Date:From;
	b=BSsGKgVs3gnTaBgXs0mVBl9QiMM3QROVTkTubQwiszNNAOY7+X81HhvRIH9M9GTLV
	 ptlEt1HYAkO9JB0PpnbYuN6c80GLLmGjzY5xBy4T+4/T2nT+sZICf+uV6U4zatPJMj
	 C9eXcnXqZvH5p+kZxSCkIF1T73kC5ftZUB4IdA8icMgcrFSeyPd9N5eVdbSZzysZxE
	 Zyp7S2Dcv3WlhmvZ+Y2wVxyOjAacEWK0Xkd4titTm7v/2Gg4/JAKYkvXPqS93BVzDb
	 4rIehO0Ye05wcTomdKejwYGfGHOSK7pGRrgkGNZ6RkGQOy1zTP8pUMM//bC5AnRb1O
	 rd4cj1dfSswiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91107C83F09
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175183619357.24153.14858403863936656297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8cd78d1ec9590308d5aff60e928903e04b60a901e170b918cf2c3b7a02a0ea6
Date: Sun, 06 Jul 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751836193
