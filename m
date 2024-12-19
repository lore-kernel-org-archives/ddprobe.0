Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2093723A0
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734567354; cv=none; b=tEc2Ng/PIAeuRotn7Y431lBbuGvuktZZ0a3qDxVxfgO4aE0bvMEqt9cEiYsYE6b6NFE9QrMyFpxGhjDLr+Ob6V8/ruuTE9ii+S0C+eWgOF9582b6NlDyC2a3QGcgq89IExo4/z2HFiP1NhoEFT2+xKQZe0xU3w8XEeJixqB1EHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734567354; c=relaxed/simple;
	bh=pmqoyZdn3XrzjHlDA6OU9Yx6OjZxVkmB8+HYktPpwgg=;
	h=To:Subject:From:Message-Id:Date; b=u7wHYwxrERnxs7W4DFn9tCCa+w4lu7YeAp8rKFeaIZ42GwMYwe0G3kUHpwKYcHS3P/fsH/MU+C50C0SwniuGkBdPuw4YTRnUZPvppD8762fIDoXkvG88pzt7yx/6NEB0oMyG0TyVVLVP8IqxdidwM4cjm7ZnDBPMT1dweSmnFoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oiwg+Iyf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oiwg+Iyf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A930BC4CECD
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734567353;
	bh=pmqoyZdn3XrzjHlDA6OU9Yx6OjZxVkmB8+HYktPpwgg=;
	h=To:Subject:From:Date:From;
	b=oiwg+Iyf0XLlaBgEiP1D19leAzR+XVqPEZDhV16NUyF8q6FfoPbbdxz7PquHey0FK
	 2pWkJLe4qDoSFWu7OZ5csQvwvY1yDlYer2LBveXEUJN1Nbtx2JT7zhOOBsW4l18Ia4
	 6lYSm9iNzYV6PZSpIW2kLtB8jyAk5+YkD3JmFdRL9AHPdbV3v0ps0nXrGjrMWi7G0p
	 V4jC8zGr3uKWqjoCtpDvcFkGU2B8H4fxxViyUNujO89BNAkl8MxcRBGCAi1l0lo0YE
	 4keufeurGVJCNs0vvGgVf3oPX8bAyVcdL/yWPpTyLEEUmmOYuBqA14m1GAcYWOlcfu
	 +kcnN8I3QZnHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97994E77188
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173456735360.22254.13020771261448187358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9abc862a44e0d243d10c1d50671df31f4eb909d5748255c939f5306a4bab95eb
Date: Thu, 19 Dec 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734567353
