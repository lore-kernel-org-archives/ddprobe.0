Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EEDB3D88E3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 11:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786705835; cv=none; b=QIarLAG0Vc67fJ/DS9ogZiuxO/YnJy6dcNQXH2OHw+rXdH8S1PEfZ/lWkAudIWB1qcyyvDkkdJOHFrFD58NPO6CwKxzKAv8lOAOAz/8u7o/rt43VNcPzyBn4sgomfmfk+kzkgJm0cNx9sT6fD1L5miK2l/JjbcRFi8OFnvzW8jY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786705835; c=relaxed/simple;
	bh=G4mftx90YrN9JKiJiYprY2qVk+XTg6qLggjHOSdfa/c=;
	h=To:Subject:From:Message-Id:Date; b=JlNPqVruBwYkHFrvRc4+k8KqjQID+6zpMkvbQjP6azSfETH5rZ7bKeETNwRe7pTj35xnwu0Cufm5flrZss5f5SwZpEuOSz3jLHd4B1HFeYjnkK/jOlZRzgkN1E9HVUm3uIfoCeKWgWrpizrXwtZ+tTwOyyQyOetua1mJPMa92f4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p4L2Z5UA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4L2Z5UA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B43C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786705833;
	bh=G4mftx90YrN9JKiJiYprY2qVk+XTg6qLggjHOSdfa/c=;
	h=To:Subject:From:Date:From;
	b=p4L2Z5UAoqOsg0SjZFoWis1mAYAm7Yf1NPoaq2ZG4eiOdya60gIV9vPDoAy7MWWdk
	 fb3kaqGC+bMfmICnu0L2XZl1n/TnFki71shJmb98W2WqAkvEesBpYSotLTrSkRpJBc
	 yjVZWJ2jSdYE40wD340IEjbGRi77CTW14V1wX+W3tV4YPG5PztKEQz4y4Nc1SgrW69
	 6+9bT46NUtEO5s5fkPa5avdW7U9N9mkDPcMhY3BjlQpMtXYRtdSemrH5e3uFrUm2Uf
	 3n4XYW+RzfMplywe7njI5wndLmX37p7Q4frhrwV/GH4UcSHaEb9vvVds88FKclXhek
	 iMX16GCtfBA4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB71FC5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178670583368.8956.11227899271874678189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23da9d36c1f1c68b26e3a1eedf1c4a839dcc0266bf878bb9d0d92d5a6c96ff6c
Date: Fri, 14 Aug 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786705833
