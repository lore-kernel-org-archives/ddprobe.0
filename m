Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344D31B86DD
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 12:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721478955; cv=none; b=Bhoi5x8nCJneUuekLHtaeoIM7zeKrIFafg3n8XOMahQ6bGB8obQtrBL1Aftq1TojGgYp2mGSDTqd/XsEFqA/rPzwHM1PWuxxHzS7yQYweXW/I0522Adbkj2zdUcSpck64RBzmdnzXONKUEk6Jd2iJuoRPdmMPygdV9+HLtahYgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721478955; c=relaxed/simple;
	bh=qi1CmPviMdJSII1YMRv5UVcrX26Hf/Mu/odERhh06Vo=;
	h=To:Subject:From:Message-Id:Date; b=M2/JEHXuh1TL8B5q1qHILcwZ7zcxIUT1YMZbCNfFCAwERLOUKPbVZNGpWpyUIzzmCvPrB0Ysv7+TlNM6QXjAKMmsIY27KokW1/qmqooOi2rvTJIbjEetCyFFKkF9gmKwW9qMHgFSu5a1aQP/kO02PsIUO5MeesP+P8wuoUyXsSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lx9+/ZFE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lx9+/ZFE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB800C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721478954;
	bh=qi1CmPviMdJSII1YMRv5UVcrX26Hf/Mu/odERhh06Vo=;
	h=To:Subject:From:Date:From;
	b=Lx9+/ZFEh+bh4XyFgKemQnrz2k9Pb2F4RAoa2StefyPchLHnnfXA5Y0JpGM8JYf2d
	 4O53b9h666H1Tt0Lv6jypaHUJUUgz9N7CIa/VV9oqk3h1+s5dVymLcR0sfbqOwy30a
	 +fhMGp3VSH8GJ/VUVJx218h0rIonyLJtsMOd7BU2fmrsKRzCPk/lVZhgIB4BC4CzvJ
	 8i6caL9vumjSYrAcRQw+K2soWoCgBsCcGHFeDCwASdTWZOPpbUAZOb+Ixbn2ZMD6rc
	 yO9fH/ibbLCFI8iBSQ+y9jtECPCIm/28Ykrob01WNV4kdwonct5wVbwOzpj0zXSpK5
	 3xInRwJwvyyHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F4D6C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172147895360.17606.6877031088152598569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c7520f47e32bd4525971808aaed16899c33deb50849aa15ca2b9dd8c59d55e0
Date: Sat, 20 Jul 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721478953
