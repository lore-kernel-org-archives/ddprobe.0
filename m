Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8201FF7C8
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 13:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775309734; cv=none; b=CuY56ibwN93U3X4KVRvPACp1QtAaq1AvaiHcUdps5s5L3ONtJhNgoJmIzQSdmov498LpogUTnyf8ucnIz+sSGJgE7qB7yjyjnewRNktxGJ2zHWRgA+M0ioi82z/HQSotocQ6VdZG8ZF9/z1A2MoAwmyrD/eUKjHdHDV075cTnI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775309734; c=relaxed/simple;
	bh=SiE6NoHBR0bFSwTwxXGPKyoXMC22XPPQ4FxoLKQqsH4=;
	h=To:Subject:From:Message-Id:Date; b=dcjk8Vc01797cKw34qonXnrhYzaGt+U+LZGZphGXA7qMIqgzPUkOcW6uQlRNLe1PNYj4T1GiTFcLQ7diEqVRwNTf4M6wbYwhAFYmqtyjTDip6vqMdJL8ixf847dkBKKiWrrRF2ZpVV+C4I19lWl/+cBYa6MSQDFtxLR8l7XAvVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOYZcYE7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOYZcYE7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAADBC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 13:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775309733;
	bh=SiE6NoHBR0bFSwTwxXGPKyoXMC22XPPQ4FxoLKQqsH4=;
	h=To:Subject:From:Date:From;
	b=kOYZcYE75wfWvoSSdFXuy60ckh74icu0hbW+Sz3Kx5Gpj8GML9TPsnVegSgr3JRSq
	 qqYLyt8D2ov2byj7oK9sPKEcBgCEvu9Whh5Uxe6SfANC+0P6LYRJdriH5rh7ZP1QKv
	 KI1tCySq+FA2bv5s7x5q0FwhXC3IbQSOph4P3w6jCnFNJuxHn6rfD3lPdrHhGxcRH9
	 U5qzRLjcCrM7UnLg0uLy9WRFLLvUI8cPMpsW3rqcQOKKw6UQb4NmrWj7+ZL1/JgqAj
	 UxfEUT/6FSJG1LXboypX88qz9wMBfoPWKUF45pAeXfqQinc8dPjZOyAXM8lSDXHFyV
	 vjYoosM/8dUaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6D2EE88D9B
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 13:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177530973371.10009.771566726261264325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bd9089939eb40b2533125e39d028ca9597b09b7b017c01aac1c3a728f3c30ee
Date: Sat, 04 Apr 2026 13:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775309733
