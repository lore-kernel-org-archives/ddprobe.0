Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44921411F8B
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788498034; cv=none; b=PUnL1YMnD5yl/wqSZmRopwY2G1o7OmpHfQ3aITHmhGSLaBb9jBsNeqBumOW9wYsmWkmIifIocVZm3JvJ+TiC7Z9c867YzLbmUXEdkV+PmNiydWKv/jn7QyNO7FgJ/I7fjFWgUIId9itu0zEu+AHpUWScDREP1x5NcIg3deTvbWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788498034; c=relaxed/simple;
	bh=actATESywBFfx3FDPb+TBm84VmOdkrMF/uwuzEYorWM=;
	h=To:Subject:From:Message-Id:Date; b=Jg3r+tiE6QW1IX0C1tqOBqNjohHoL+A2ArKGpNp9Qpf455/BUITTwVIDX1hy2JqMq9INGUUfJVweSV40axi7XXUxLZFLt8f08sELA25ijyMV7YrWJ1Rc3CPjYM/TZmYRK+PjxINVCDdaz4zIItoPk2DVQ0OiU6CuDHqjbYV3JLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8e8KUHx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8e8KUHx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54DFC2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788498033;
	bh=actATESywBFfx3FDPb+TBm84VmOdkrMF/uwuzEYorWM=;
	h=To:Subject:From:Date:From;
	b=Q8e8KUHxIfSW2DQuKAlOPU0dZp1j9hgfWnnX76RD5PO2fHAhRVyQPnWTH2FH8D2XI
	 wzPg9exyWm1rgRN0tErELVLj1jM+MUCPps+lz7dCFyPIWZnOEJohJNirvfcg94XG7F
	 bp47QdcWzMFPb1uZZZ7pqJ5GTC/6rlFO5ogMNW+H4kkDio1ETKMGhxttqjsleGxIgf
	 AtguaXB7wF8pWkqjVnLcnLupJfKNs5ptp00F0ihchSeNPo7wX8vXWsBJR4bpV/SKa7
	 m+CLm4jL2p8Thb57Nir/sQZA/yd4NkIIzy4oXKryLfqRUGthDhInkY/6aSkN9Y55Wj
	 Yx40reRF7LsMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19CCC79F80
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178849803369.29805.6175320533995486012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09410bd7fbb180a7b5c4e94e824266d438cfc78dad0fad53da03bca6d352ee16
Date: Fri, 04 Sep 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788498033
