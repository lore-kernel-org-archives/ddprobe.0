Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF07280325
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756244994; cv=none; b=cCWKEd+nyG4HY0V5/uKVBKSDNvAxoIaIAoTT+18SVfG75q2+JW6pxNd8RHTToYMwoF/VgcHD6Yu0s+g7w122f/uXNkX21qf0fuFIXBYhM05tGGttz3jj1Ok8yLIkeoEWjUe+H0iE21pksgR8LF6m5bSOpseDOkgPGxFZdMinX68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756244994; c=relaxed/simple;
	bh=0iWPYLwH6UxCz6TxnqjTwt8QihEgF0Ut8T/bjB3BSx4=;
	h=To:Subject:From:Message-Id:Date; b=i61BIseAre0ktltabf4WfaC72mrpDxm/eJolOlRaGiNBVflb/9LC/MYb4ZXiJVBurqDTY3UK0VV7KARn+S5Hqfts3E6a432/nQXreoD2a3wRkuhNmqwoRILU78fr/FaDy/Cw1yov3myj7OU9x5iYnatGGPe04YMg5Lpn0qfihtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XRh+E5Ej; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XRh+E5Ej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F47C116C6
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756244993;
	bh=0iWPYLwH6UxCz6TxnqjTwt8QihEgF0Ut8T/bjB3BSx4=;
	h=To:Subject:From:Date:From;
	b=XRh+E5EjY5mQaqvgdP+D0lyNQ99cPyfIOsbQd5xernF2SIseFk5KCNCi0PgOjCEAX
	 QH0dLgO/8fLjKTjH8UeTK7oVGrXunCpBIwMBstcD8AQOE+SpdQX5ZSJfl0EZeLQWgI
	 MbVRf+2JdpJVVeugttz4tXsnbzu8uNlwJAxOwmBJ+iuX3zk5JNmI0xGNSEZe+XMNXA
	 x/7aWgEXlEoNtm5/AAWl02aBES201ypV8acT9HLx4CRrAx+m3R2o3Qc3kqV+ZR2G1g
	 714+MYQ7nNdsaQ13F1qZ5T/Z4zZ2MmC4lGMBix+lvHyxDgccRAoF7ZSD/SGgJ19mBW
	 ORlr2zHhp/r0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F21ECA0FED
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175624499357.21648.12752779571908991010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd2dd83049ef078acf67e4fedcdc8b22beb3b9f419a10f0d57eaa361bd69a360
Date: Tue, 26 Aug 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756244993
