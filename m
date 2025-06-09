Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D00521D5B8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749499794; cv=none; b=dvxK2h96SdMUBWOWv7Kzrh+WwSJUpwZeF7yfp67vxLzyew4GFtTowcTDqGuHrLRKQXiA6+T6HVDP+8VBKiKVbau7BH67+Ov/NkkcdFTE9Cer6v+EHtCk9N43USOMA1NEsHhSfJ34vS+Xf8qmLda/9IEkVIimObea1IyhH1ko3+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749499794; c=relaxed/simple;
	bh=NSitR2eei8fSnp2y1KCjXl7/Ar5Qn3IPLmeNqfjUfqc=;
	h=To:Subject:From:Message-Id:Date; b=dTK5ni/WTBR6LdL0yDGVRzquEzZ5+hO19o1Nl7MX6rpCy3D5qGIwtxLp+TnPz4+YNZB1rZumU2o8TLa937rtcTSE2hvZwgaZNk60p7dLL/RnWKC9ZhU6XQwET/afiqy9B7+Z4BByqCASWR3S6btqKKzMjeqMf8YYw+33ccxsJoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLqMFW8x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLqMFW8x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A395AC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749499793;
	bh=NSitR2eei8fSnp2y1KCjXl7/Ar5Qn3IPLmeNqfjUfqc=;
	h=To:Subject:From:Date:From;
	b=uLqMFW8xkcIn9bPfUB9mLRfCo9+3L24BA31I9rdkoPUdMWdHAqdnDb5BX2m7fWhMN
	 6HCcM9iPSMlCMJBdi4T78muSzlQQ/WwgLwAGWpmGogk6nROD8oq2EqOg1GgsqmMKJD
	 /iArP83ksGErQlWzleqNRguWkQ+GHutJRRxhauup9bS2wJCNh9GBA/QPEjJohJYCnR
	 qNm1VMPvpUKRJ9itrNPWx/E2/dk65QNwLPzAOnE/B0/agvysNz3PoHbG4yOFrq4emw
	 lBuK3BWKHslvPhcjszqPg3UfI7YoZeqDnfRG6tMN6BN5cJVrN29oPlxbsVM2ixePqI
	 lGrag4GRGziLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF1DC5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174949979357.15579.10748559837836584536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f22c62a1219360a97fff2ff3b5d32f00c6520a350b33535b3cc5e15cf36f55d
Date: Mon, 09 Jun 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749499793
