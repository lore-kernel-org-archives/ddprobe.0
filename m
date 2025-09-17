Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEB342F3C3B
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 03:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758080394; cv=none; b=XFxIrj0qZ/TeD0qaS6PkKh+febRIMt8/PTYrZhricd3bi7LUKr4g0QIkRKPFg7f2cAqr0pYko1VVqLGhVTd6kQzCWKjN+BC5qe9TpPDM5wrqWNlTYkyycAh/yYBfCK6rGsCP9JI5u6kevcb0xGlDhTtX6nLSgnuNw1+ehWpUAt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758080394; c=relaxed/simple;
	bh=lp3ftP2tPiM1car6YcBo+rann0ITeKZ1rGgnDaSsqGU=;
	h=To:Subject:From:Message-Id:Date; b=IqwcRi/Rhcb1YP+5Jrv1PAuQioUJOMtZKJOiudlfuvLv6wSf7FnAoUpIeUQzEPYmYA21j6Y0umUMVXrxfg9nU2dRQGjiiWuy8g/Ov7oe+nlVHbSFK8aR8DHHm6buYEXF9Rhh+L3q9biSJcI/CLk5jF11bMYiKQq87iIKGwGEVVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M24sbad9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M24sbad9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3329C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758080393;
	bh=lp3ftP2tPiM1car6YcBo+rann0ITeKZ1rGgnDaSsqGU=;
	h=To:Subject:From:Date:From;
	b=M24sbad9WBaPmT/816RTIIU+f4puZqKhtlaoyV2pZkNhcCfM3j4OpTaJ6MzQiDZEp
	 iDPtQb3bl7gpUd4Ka3Mam2nnGwnXM2IZ6VCbfjTR3s2Qdd6EjxaaRjTj5tH8RbdCm8
	 U0qwAZkV+Ugb9aqqYhSeeLU/jnWkCia64ftPIRCfJApSqRYSOfOEoIDz6avDD6QQmj
	 fYBTJ3dyPtgEqsstFJTwvK/DiCsj2BCXJnay3dUCABcToL1mc0EjHGA4DhT5aCM9hT
	 +qFOsvvklf9WxDKPjPyq+hPo9YbQjJzAxB7EGyKvW15HK2wQ6/m6WyWJNXgPppIvs2
	 zfNSG5suCWIsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9403CCAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175808039359.28621.17772021886300780838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efc091fb2b1c9224fc7281ad390810b46ab8871d28e7db09b9bab72b64547d13
Date: Wed, 17 Sep 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758080393
