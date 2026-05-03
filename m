Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322F733B975
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 21:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777845454; cv=none; b=IXOWviUWLVFHQfKYKh9+5kS1OKXqjIKPQqsHvuPf59GdR8HBzwdyCsFaYDLHpMrklxx03MG3uA0miYnKFxxthy26Vy3aXfxLVT/BGonxKDxaYZfSHXEI0d3+Lxm/NtMkZSNF4ZEdpvgpwDQCXCk6BBXgS2gxwDLBIWUkrVyOpUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777845454; c=relaxed/simple;
	bh=fdybBUK9NccHYvUxLAW2YxtWGXwJKo6rd/nrWcq0n1o=;
	h=To:Subject:From:Message-Id:Date; b=KE6M51kjo6dRFdhChACrvDK7Vl6SfJXgDmx6l5m5XSbY/vaFs6p00RFaHnHzDAc/I+/Kub9bauhoiGE8YrW1bpzmwBChTPK+htkL5ouFCtZa1rFfbfpZ7XEHOUZ3ACjL5hdhMx+NNg5mz+yPPbd5vqaaJTFZf4R7P33LVMsFTyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivERPvw9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivERPvw9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDA5AC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 21:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777845453;
	bh=fdybBUK9NccHYvUxLAW2YxtWGXwJKo6rd/nrWcq0n1o=;
	h=To:Subject:From:Date:From;
	b=ivERPvw9HhdLQM8ZIBmmhSJ9qERvRhjo1J9JaqGeakXgsnD9Hck0BiyQndZfienSS
	 N9kc+RrHApsIPdvV0RdK630G6I3a6W0gCoXmU6TNea6Iuw4ltigrE00+1QyWlrtA5o
	 YDrN8lPV9HDstG0gilhI5NiTJUHiB1WASW0KSUEfbzw0T1bXprma4U1twNdRtlhCUZ
	 G/MGQ1XZzL8xUTQQYQ5p8OpXqs8qLyhGKuGxpfRrjVyoBfeC6UNlG47Zt3ILl6Sps/
	 1rROXysbWjAcBfr1hk0aTGyWyJO8yAyrZwNjb3NtQLS72FgRkKaXigw3203K0AL8Nm
	 LrawLIxe/l7Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC573FF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 21:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177784545368.29502.2045704441930233781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cf7cdc484315aa0c6a51ea202366f4f49aa1aff00f657b2e1cc351c5afad102
Date: Sun, 03 May 2026 21:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777845453
