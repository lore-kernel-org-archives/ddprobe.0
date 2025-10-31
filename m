Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335B22C3245
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761888594; cv=none; b=mvUURvCUAf5PkCVXT/fBuRpIme6UrRZvgAi7zapp0YXE2qero3S48bfeTWG5HZJvT5b3NNl6Is6/mwWX20kQOPFSMUnhBOHe1RKRbiIUWWbh4BF0kRiM6meEpT7chrmbW9i6bxeCryK1i05ObmawwvoiI3K6z3bJK1tN9l0U2Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761888594; c=relaxed/simple;
	bh=cfxMFcXPt4TGT/ZFEVLcSA5gKFu4U23uqF43AFnS4pU=;
	h=To:Subject:From:Message-Id:Date; b=u1VSH2jGqq4TxWa35jmxaZKJhvZCI0aX7u2a6yayC8fprhF0sQsypujyWjreulYK7sjM9U8wmEdcigUzqLB+Vvp+QsbnllOALjvp/ooz6PtSIcISJfbMzRAeIObS/G5i6pRohcbHHs2rTQZkFPtYsMuLKsvhGYmWJVcmvjJgfNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQvpe7U+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQvpe7U+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D76CC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761888593;
	bh=cfxMFcXPt4TGT/ZFEVLcSA5gKFu4U23uqF43AFnS4pU=;
	h=To:Subject:From:Date:From;
	b=RQvpe7U+XB2jmn5eryMIS0AwGHz+geqBhutoxHL3CjapD4BV1sqOsvuOKgcJ2wHki
	 W9f6wxGXcFVJbVjfSvsX3DdeouK+KE4ipHlXi7rCz822n0kSBMMZtSjgaSaz1sfbrl
	 4ynK1QF8uCmvP/n5MrhqzKc6eCd5KUOkKxWzXP5+gDAMlBXqA15dn/1iFEcvo4PYdU
	 gbe6r3cNKH1mURCrGPTkXLxNGX3dlXUEys9TbbWjFzCJHqo5Cv/L02UJ8AlM1OP8Zj
	 B0OY/I97cTOirIxLKhqAjSwmyDdY2NLMo6Jtkgsg1ra8t+qPqlBEdyd4NK5mawScJS
	 EwLd1Gz0uIwFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE6CCCF9EE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176188859358.4240.17008606605355699657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07e6d89a271891e05909f5b8176747fd0f5e9d4f022d2c9b4c4012279cf7a9b6
Date: Fri, 31 Oct 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761888593
