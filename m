Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 756CE15ECCC
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754419794; cv=none; b=eSR4bqmWPhls+hFmPAF4Z/D4e5hmGYRm5Q3RqB55kXWZveDElnQndc2nnddSmbAcE5NQarbCEgL+GXbqjeChq8uZ82MahOnzyxjEGqNXfy+BtrFmcN11EKy/VTRkQScPkRToQ2NNs+alRsQAQch2XnjYB2T/cSAEywVjXx25pfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754419794; c=relaxed/simple;
	bh=CjFmdY+xJ4Q45IiGxmFCoQ5dBqIP14LNJje2sRSnQps=;
	h=To:Subject:From:Message-Id:Date; b=tiJSU6r9AF4CSfv/y8oVhSPFhWnG5WXwj3pFfVXiKuvHrjR6s3hgAZ5x28mnzooSjl21IwSx/WtYIV/sR5Igp3hNbf1027RY6zXYUZpkjmCKnsn78dZVcAXwUvEgYbeSL4iCl51imAmlUHSl7N8s44oYmfaYscdddbb/MIzoFx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gWte6tjz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gWte6tjz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1912C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754419793;
	bh=CjFmdY+xJ4Q45IiGxmFCoQ5dBqIP14LNJje2sRSnQps=;
	h=To:Subject:From:Date:From;
	b=gWte6tjzjyPbuqD3Nnc6/SdgBxBiz6hYgHjf898dqcti5lDceAmjZ0eMWIRl/XW7M
	 Z0lKp1iRUrRYuFFJlo1kvoR40ybH6b0by0vOXkSsJtXeHQ23iUBdc0DMlpT044mLPl
	 qAmBXB+4AgkdzI2nHzcmaBHEyuOjoyPAWISkEaisbncA25iMr4FpbNIA4H4LbzqVzQ
	 1MEh1wMgQIERE/2eGOE2DhIv4GRYZjVz8MHbukRQPFdD5zLLHy1kJqSmw2gvTtHhWu
	 MMNWn8PzpkqB0xHIifZJ47j4uqwpuJdyUPb/QaT2UO9tlbA1fXbEHfUsSFlKu/c129
	 /65VA0GRAZR5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F94FC87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175441979357.19850.6788902239451475825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 111388c1dfba166bd5732896e57bebfaf8c362629040bdd3df0c2eef8e431ff2
Date: Tue, 05 Aug 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754419793
