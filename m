Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1DBEDB
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722746154; cv=none; b=kO425Iz7og5XnrvBu4MvKbj9mUPmhVr5gxxix4ecPvEb6CFmt3tB4pEqcWb2Km3HxUiDCF//5ZU6gBi4Zju3lA0iVqBwUz0SsZrQSDOydhg/nKMotJ7xJ9dZ1D41PEq3WaL6ZA13n6Rz5cVKBVB61OiovbKCTcbGFMFUt7Y3Dew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722746154; c=relaxed/simple;
	bh=nA4DWXi2D9Az+F3Hxsfwjy9VikOC8mTbYYCuiUKQQCk=;
	h=To:Subject:From:Message-Id:Date; b=aTb7uCxwcl4X+USWk+hlEJJNvodTXvSEZ0NocmbXw5/4hco6NoCuDIdH+DzoxTTqWY92AqfJo89QDVs9ixNk+2PQsAz3XBdUimqEc2gFgbWfjDQkfoIrBN34SC8/kbBlC466e7ZHXgz705T5j9v04bj2YZuWxWVN9+XdQAFOTAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ABM0h4F4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABM0h4F4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC49FC32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722746153;
	bh=nA4DWXi2D9Az+F3Hxsfwjy9VikOC8mTbYYCuiUKQQCk=;
	h=To:Subject:From:Date:From;
	b=ABM0h4F48FRtTGplCFIEd2PR1nVVML2gpDb+oVzAibPWK7cDLst47ExsUSYM8/40h
	 t5vv1J4IchGwOdUMb1I7zQrsqmoCoWhmC800vazk09F73xqTB/NEfNZ4xklR2+krZF
	 IN7qOJbgLwWc4uWkS0S5PzYB8hlWu6lMMB1tHr6PnYb7G+i26CJ0aySiLQDhrNfpxt
	 zmskicB4p+Sb4u1bJ6Mj/xop+t17ZA2tFa2hE9TPqJvesPX6U2wTeFWhAIIBJvlfW9
	 EV5Kj/B1FKbsvShbD1+xNXEkf3zx7b0mTUztco1S0dqQ+GRoimLWrr9G4UO6PlgzTm
	 ie0EkBq1GLyyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2C2C3DA7F
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172274615359.18752.11145213429765135706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88018ad85ccb4031c5db96dafec712d266474e3479ea61eee77774e7c36f05f7
Date: Sun, 04 Aug 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722746153
