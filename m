Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6B1C221DA7
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745946594; cv=none; b=Pf+IkoVGBYsRQ6ZKnCUJpUjq9fluroNI9mdoZQ/kJ/JkePXOpE1fRynZZ20r4RH2NH4uPeBlCHwSCV5tod9cSDkEb0+UDBhE9RzyAO7jlvbweGfoVi1CG0yiqjTa3GaY7lyO4DGJVcoO8krVcunqzYINiXdymZKcKFE5Xiu5ezE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745946594; c=relaxed/simple;
	bh=n52N5nNLt1vSDRr1JamXcpowzNe8EqQ6pT7f6rcOoGo=;
	h=To:Subject:From:Message-Id:Date; b=Iasb4tH6DYOTK9Hkq+Zwf9sX0lbwqE68mSitxNwvE3vfDBNujjia4wq/zMFcYsz6IexkNsnUy9LaJCkSR1t+JAOoQg/T4LRInUNOLJ7nWeH7GjGjL69TIPWK2gYVugsfj1duNG8Hj1NZYUGtyNLGAtEE9JXQRGNFmw6bHVnCmNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/e+Vhtp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/e+Vhtp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7611C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745946593;
	bh=n52N5nNLt1vSDRr1JamXcpowzNe8EqQ6pT7f6rcOoGo=;
	h=To:Subject:From:Date:From;
	b=i/e+Vhtppxjxo/ieGqnbvRGvjstJM5lG6nm1sbBGMRh3Z9zZtG7X7OynqfJvAw+jJ
	 7P1lpxsLImoTxj4Pl4N4inMSNgXApXMVK19ZmeGyPbzxui+7V0O/BIXDjAzYppEZrN
	 YYxx+9BJZLuRirYNiS5Hjz9osF9+y7ZUqkNwpPXy8mEIiJkgzxXXxYcheunFyRwvN5
	 h9ZExsjQiTdkNUIkMrQF/wiGvly+gKjhvJHIDOZIoqV5ziDLg8kU/RzWHcls5hHjNx
	 EzfqJYEd9oteq6eyqzOZi+AZ57xgatgjpND10WRdtgUTrG6qQc8x2EI/Z77jo/a9dj
	 vo+lmtWKaatUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9966DC369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174594659362.21623.4355786995591844952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c53cf7c37a4434b4f2a482a75766cd6e8d6e8c07245462cbb3390f7173f09aa
Date: Tue, 29 Apr 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745946593
