Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D16BF1D0DD1
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727881553; cv=none; b=kDCE+6d94u7Ftiq9cNzO9kcHy2YKGMyCdKwWshQsCQal3Y8PQ4WjvhQRE/uvR7cIuUOPuK14RD0uPP7lZkQG13XnwK0qzLRtmhvQN1K0Hrjp4vHBee8SKD71fGgbL+jKB2F8lxTapa6j4qC76S8NYl1d4jgvh9eioqnyNO8OtUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727881553; c=relaxed/simple;
	bh=jf/H9NMPrv8uKZP8wFujeXNAETwHUyh/NvlQ9Xu7Rls=;
	h=To:Subject:From:Message-Id:Date; b=RVIQnIpEhr2oNpVKlh4jcgOuygLHMNjJInPySfmnPYMbbWfbt1fSnx3tiC6IkxO+avnzgA92ig94BBtcpBmmt8IBtlw5enxQZtBp2vEpR+oelPVYu6iVY/c5mcYGHvEq/UoWmY0t6yC+uNxTRbgbG/NRmRJ9PqDdHv7/nP7yJuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y1AK59fR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y1AK59fR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4CCC4CED4
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727881553;
	bh=jf/H9NMPrv8uKZP8wFujeXNAETwHUyh/NvlQ9Xu7Rls=;
	h=To:Subject:From:Date:From;
	b=Y1AK59fRnqGXPKXlCD7jz3OGZs2+8dhX2FWde8pDdiyV23O72T+js2/p+GOSoKcf3
	 9/Zf6Dw0vCn0p0BzC1Qix6oVBtcN5z/aCCCnVpL9Oi/jVbKLZUQKWUJ3NLmY6I0655
	 inJ1Z8pB+I8yL7KFYR4c6+hUEdc3J6RjPOYXjkc3Gh7ObmrFcbK9VNAsH6D6W0wPmJ
	 h9HChdXLDMnMxhfBog4hClpZ5JOK0zfGaznhC63/ZgAL/pxXHenWBieC3IbNMQqeZq
	 hxUjaFty05D7EUUDYzU0QTchOE7dWWEuNE82Em9oipPxH9x7s+q+kaR3ZJca/Rb4t7
	 Oyys5SK4dYysA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DEBCF6D2C
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172788155361.23944.1152349812443814391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2ff7f3b8389196cae901d120fd2b08ea81e4884a95be46710bc03ee00e1df1f
Date: Wed, 02 Oct 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727881553
