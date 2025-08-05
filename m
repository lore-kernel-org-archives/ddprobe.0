Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321ABE55A
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754422194; cv=none; b=bc6LS6oqDLJyDFknCOMMoqvdGGWlRvW7PikIlj0XxWghHLI2Ao80SNEItnZ3Uq8MH6Ti9agzEg461gNMFaEKzdJrAeFZFKTSxif7WydViv6QmQVP7rSGFC5MdghYWhe8sbDqqxHnMPesmEr8D2gdDtMl6IndmJGwFKjW0yJZgTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754422194; c=relaxed/simple;
	bh=16kaYjTCs/JtPTdZyF/GWaie8DZlZlrO1FjjBhtdJXo=;
	h=To:Subject:From:Message-Id:Date; b=jCmS2156JSURYY3H4QhOGpXjnsbmsv1ZkeWsBkfBtRwaa8u0F5LWlm2owOvRj+Vcyhd4qE4XaOa2w80COSbyqyKQ4CP1F5+VvXZ5zhEhow3y49LTsVcpXGLe2aezrhAlTcMX8rxkdSgZDxVlpzQ7fl7EX2ydCisBiUE5EflY7xY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8xgnacW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8xgnacW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A626BC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754422193;
	bh=16kaYjTCs/JtPTdZyF/GWaie8DZlZlrO1FjjBhtdJXo=;
	h=To:Subject:From:Date:From;
	b=g8xgnacWJIf22fJiHAqNnBcHlNsTcguExJlAb6rGLjHuG6zS1+JQWNh1vytc9sFBh
	 3/J2ZHU7lvlGx2mUu+UYrkPVH47oAtj/YHPjFtk4JagxjaDYxSKi3yMQJYzbvY+xDH
	 9f2xKvl2aAR/vSTXhNeQGkuetY0Gmmam48PTpmiKn2Y/sul6YZHyDFmGwPrLQryTP1
	 pNKWC0UBBVtQbGRmBimntgHJSOYkBnX11oNdhanQGl3uDUKz8Pd0Il0mbYT+qH+uBO
	 aWJ6zNtVm6s03pZ7T2gUTKObwl8NKfA1VVLylVZI/t8zc8/x6Up7Z1kO06AVFLZgnb
	 3PfBhNl8FOCqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F28C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175442219359.14043.1542310230817416942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84faeb343aff3605aa50ac705a1bc09f4d10e3d29c81f93e99626ab1a0939dcf
Date: Tue, 05 Aug 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754422193
