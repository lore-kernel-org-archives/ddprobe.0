Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7153C13BC05
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 12:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719749663; cv=none; b=T60m1yK5y4GwYLfKoq+6XitYxDyt3+vPcIiNx6WX+25cIGoJsp7tjxkE+VJG1oaminixHZ5FP3htcfPnFHvWppINHQ/Yviz/lWc1xhYZYuHyHn+4lpJcVCI8ASCKwl+XJ+RwOYdLbBjqJojebLIV/R68w+nEuhT5OsqsFk6HwX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719749663; c=relaxed/simple;
	bh=nY4CeojB5oHNzpDpakX/YMcZovVnHs12JELrDAbscN4=;
	h=To:Subject:From:Message-Id:Date; b=uG379VQ1PhRVNbxL5aScWvX3NSCIa3gcG2f4Ic93uy855Uanq8cnWXr1d/KQ+mj2xUNU97xkyHY9x7JccUHN0hTm1/FHqNMjPdi7RXyN16+9BSJDVs8UpTrbXpQv/zp88tyJNRuqWfoC8nsTMPm2/vDHYlahW1nr3LNEOBb0Eg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=so+ufU2g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="so+ufU2g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC575C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 12:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719749662;
	bh=nY4CeojB5oHNzpDpakX/YMcZovVnHs12JELrDAbscN4=;
	h=To:Subject:From:Date:From;
	b=so+ufU2gXNgblci1VjdJVj/cg48uS6UJC4oHoCPYyp+og5IKQtjiPmuQavMJO7Kg9
	 sVbMpumS+NfCiJL/FxrIFnVRA2dFLPUCAfAycRfQ4rYdlaQQMpQsfB1UjHqYjTzfVs
	 8vzbMNLX89vu3NC5dbxU5UY0n+k/Qs6MLj/5FX7cpMg3rLc9Pm6C7UuNUt70CJWeyJ
	 PNJYQSfCD6m3mefWBzv8JTElUF1Yu6qS/dfXPzzfv/pcYYJ5/yoPw/dy6qu9qxlIgA
	 Reefhr8FYQh31Er6a5LfTwsMCo1ZeWKKAs5N+ldab0fHEXitSnUiBQbQSaGBQ8Cssa
	 Vh1INRH39lGDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C71CCC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 12:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171974966278.5326.15371874679803719153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a850eb69415cc46512496025fcb09b44bc2b68bbac6b8cd119dafec0a82cef0
Date: Sun, 30 Jun 2024 12:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719749662
