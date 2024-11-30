Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC7113790B
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732986954; cv=none; b=G5WSszHXXh0SOB/vXwtLsir5CqCDPr3virkHg9vni8b+FM5QY4qRCsBrX+GprgCowO6R2felFGFOdUopsA/RL++R0gNR6tHJgrDEjRr6MyzwkKGtczQQqjtjk6Bs4k7oR5M+QFoy/j7Kr+ekPH4kXmO9wBL3ALgJ03HACTY4/Hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732986954; c=relaxed/simple;
	bh=LiWKoImHKLZeT4E3uqjEwNPkFS3Rq/Pve+ySFV5FAMs=;
	h=To:Subject:From:Message-Id:Date; b=tFVpT0onZYntQeemw/+VYDhcwBrSGY5sqqWoM/qr+6DYlGPQ8kn0tCUDlgQ1WtdGcyLqKTUFIdEypeu1pVEivPiQEKRY8Qr81kv68spKtTvlEUpQk+ULKi8vI2XfXClVj8EvW1xJaXdtr0Leo0hmuYBulqMWNjgj8wfmo4nlSlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ngPSbCR+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ngPSbCR+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E2FC4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732986953;
	bh=LiWKoImHKLZeT4E3uqjEwNPkFS3Rq/Pve+ySFV5FAMs=;
	h=To:Subject:From:Date:From;
	b=ngPSbCR+BZGyO9290A1NoTfiSsKYFWCKqs0e/Oojga8ZWMk77AXltfM0K93CSKFPJ
	 WJ9zwiP9/nxO9iVheuAHlHqa70N60EB0P/MouHy+SnBpjABzDOg2auZ+a5R6fOuiw1
	 mHdZWplb5blrfbjbjhaS9+PC5wMa7JIKFtVAu7tY3Y6ys9M/ppovr9aLzDagSKAmz8
	 m7NArV6B8DOqmOw1GdxWZqevhr8IhKxDi83PdAVdSYfQ7+OEEU2YR6/7ft/8D9AEru
	 JqOko3h6UI5ZgC3fVXNu/Q5r2UaZWAwCLz8SPVUwLGdyl1lwMn+8q2PH//f1ptrbbB
	 F4VgIqj0OVt2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9601BD73606
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173298695360.10847.10086269312646959262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 630459d08a2fc8d736285a9aced061460bbc5ce87a111548eb8cf4f400a18ea5
Date: Sat, 30 Nov 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732986953
