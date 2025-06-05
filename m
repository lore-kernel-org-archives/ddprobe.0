Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4470627AC36
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749149994; cv=none; b=RA+tjsNFOLcfprWv90yzZE49zRo26hozGiisc0uf6ADuvQm79QEAUAFde7u0SxKiJCmE7LV59axfBjdd24S7fplzsgu+HiVbRZbzCTM8sR9ETwTuaC2Irw5i4DRMHNMS28NqNlpHmg72FJfSp73TFmqAWOcBZ8PL5SH9yesqRFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749149994; c=relaxed/simple;
	bh=Jpp/OyGVyAcoD9TR4Nfj2f3poio2W3RkAWNwtdKN22s=;
	h=To:Subject:From:Message-Id:Date; b=DZmfPOaHyRMWmF/woi00cQl0INUsUG2SAAsCuSJEES4hOP6KwRYzZ/LioEn88WGB89mzlVuWvQlwCd6ar8y+vRo2+GFW3HMand/wgxKTQLXNdaOzBDl8tgXX2gjRTZOhQhsAbKvN6F2F7EBvzEAJf7crhHBCfSdfFZ0VyJCKs9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBsi+vhQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBsi+vhQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03F9C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749149993;
	bh=Jpp/OyGVyAcoD9TR4Nfj2f3poio2W3RkAWNwtdKN22s=;
	h=To:Subject:From:Date:From;
	b=SBsi+vhQnGCalAOomS/gIu68/8pGrFZ2SSjMBfbkHlu8m2/Sw3aKdJxnDCZZ0l/F9
	 6Cd+9gsqt6lnuJI5rgrFd+UzqvAGheNDEhk31Rj3kOtjLjE38nhs/4QmDzN/ZElC5c
	 D98T7//Xtza2p3ZAsObYnxKGiOV5/yKWo769I5AeFxy4+4NYLaJVS2vCS+RqQf8433
	 46nEoaYSKWkjMdBZI7xVmudUlrWEeQVlJAZ1Ae9eFEmlh8G88e+tET7jylAw66huq8
	 rjjEBUbbSuqbLq6KwERZnW3+Nqq7mYNq432tDLUJECvM8FyafDSoznxDhinxHWqDHW
	 3aeBcNpviiuWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921F4C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174914999358.18717.12469480779878188335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4a40fba8356068c71cf4d05ff8299122a722e4d9e0d35f95c93340d81450a3a
Date: Thu, 05 Jun 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749149993
