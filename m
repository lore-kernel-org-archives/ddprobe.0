Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3E021A9FA0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759409394; cv=none; b=bMLLcoRuHWeJmsKgtd+nLTuVGf80opK4a3GIQzRLpCfCU97W3tJd9URJmRJIE6k0NkV+nR5KcfZs08kQiB/mDkG7A5Kq48mN6XV/vp4mYngl9nmp/ZtTk6RhlkDzvxrN+CcTNNrnFCG8gY1lZDFZb3giFb4yVGMTobvbpVOWTbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759409394; c=relaxed/simple;
	bh=MK6cllZOPUXEQ3djimH1b3lV5zrOf1696kJi0cNMT4Y=;
	h=To:Subject:From:Message-Id:Date; b=M9IFBXWfShBQoHLxsiMBjAk44z3faC3UDwybSvn8nobQUuxeE51fwjCEqorjk0ugalNJ7bU0Em9t6oYaB/EoYR7Txnndl93BuYop9z1LpZuz1OX6qjGSOWobE9gLmJ7FxWlzVBVqZtIcdQy4rnk+YiIDNVI2EaTqogUCEmhe/pI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jpXrsnEs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jpXrsnEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C058C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759409393;
	bh=MK6cllZOPUXEQ3djimH1b3lV5zrOf1696kJi0cNMT4Y=;
	h=To:Subject:From:Date:From;
	b=jpXrsnEshtgFIxw3EZKyU6uUhyOKj6cEekI5DumKKlS25+lJr8sjeOuOzFit1dRvT
	 j624v317NQuV27PxO42XIgXNBerrHiSbcTJ6J4MlaWf3Z4bbRzG66MGPi4WJejcwOQ
	 5LFTxdSZRl8bO/3Nfl7EXHnJvTnSSduvxbIjtFed5/In1uqLktFOwgVkfA73BOFjFP
	 +3FOnkDjnZiiz4BI/fB+XioG8TvLL/H9QM85GiJKC3EexgpHVmxRZW29L7D5/Tw4DH
	 ZMlxfdf59BTnB3MweootQi8rf9YAIFMElNVmQrkV+Tr+biD6D1CDuILffaqkZCv+3f
	 Vq08vy5jx0ehw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F647CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175940939358.31603.15851928719061681185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de3ca108b62941661ac7cded526fc392321e2aa09c8570e896cc4c805241dcc8
Date: Thu, 02 Oct 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759409393
