Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100CA3815D2
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 19:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777579054; cv=none; b=fCfmWN42jv12c5TY4dxIZnmeRfiV5xn/WRYMzMDFhRmqFznzuq6fiJXHFD3iFVAK3JABMLKxIqu+F5lDBmh1NyKTOUo52WFY2sK4Xng0LNT2hrrQgTA9lQoyjGoK0DR2DSHCHD+msRr6z6s8aYrKbVFgJuczMmrjfcIxLZC1Hlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777579054; c=relaxed/simple;
	bh=n0l2lFB42rmFrphke7UCYlZstRqZ3DhWsAMWMWUpWI0=;
	h=To:Subject:From:Message-Id:Date; b=i5XswiLiCqSisScvheC39/uB1ITUbZZ5Ie50VI7R3+rX9F3WZmreeAmEYr1QOvpQJ45T5Q2dFpPgofcR7wHxTkM8m2f82AqeABKebXlj4lcml32CMZIu+5xhqzRVe7AzDj0K5/F0JrdTtjkojpPCGaDIn7bu7q4GTTtiA/Ga9VM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNiVOVUE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNiVOVUE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E26C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 19:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777579053;
	bh=n0l2lFB42rmFrphke7UCYlZstRqZ3DhWsAMWMWUpWI0=;
	h=To:Subject:From:Date:From;
	b=mNiVOVUEKRmhIu0yg8gjsDHkvymvaAuUFIUw1gvY1Nhz9Ph4219FgksNUjTnFQvRv
	 oVthooxNmQ31wQmEhhuRwvy6qRa1VvpuoHmnmRT4/ux5xvBQEZSAaUlKp0cuEVChEd
	 bM5tER/8kBrqlrwXWRlLu6bsnNK6S3UXkeF7X+OOF+t9cZ5M4io10rkynuzFluWt3l
	 rgRwPjrX0RYuPSjFkPwlcyRGido6Fsi9hmahAhw9suy7R+j5X7i/7VLEWz2LYNKSJ7
	 IVvUJFON6Me/3Ftf7qM3htAJ1+kue6khEhaRvKoFEfNYW1Ga6Ne5TZHKEdhjCRQiCC
	 2Dqr6lJ040v0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9212CD13DA
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 19:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177757905368.31601.8897542260043119016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4f9059ee283b8ef32cef765298a348f435c8feafa919fde6e61e098796b550b
Date: Thu, 30 Apr 2026 19:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777579053
