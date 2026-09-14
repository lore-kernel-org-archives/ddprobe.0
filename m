Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4272741D22D
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789378234; cv=none; b=CmSiIa/R9IGa4duqTcqJLVUAFdgLBAmvP00x4xe2aYRyxZZUq1zQFTdmtkJ5X8WZCBktlrVaH83cxyQuMJTqSOl1oqSxcCXmATolf7GhX+BB3xXxEAPsgbr4fPIW3h2bvj9CZykcvAbvm1aPj30JRYxv7kaUSlAiqYXJiwUIgyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789378234; c=relaxed/simple;
	bh=YtRX4QCiihn8YxW0pP2kyjtZkMITCSXb7IJKH0Fu+yU=;
	h=To:Subject:From:Message-Id:Date; b=ugRxD8uEMZoe3+vHare/iPmNZ0JufrRiuk0SMQoWFVHofvsPRlXJPAFqiYgohVGPIZ4kQ/G2W4RhkFL8uxBmDn+3iKMmHOeCUQR0PUB7RQKH0zxzV/G8i5PAbfSLIInwz/ETvf7JqOz/xIrYIvh6dB1mGz8bAmXGQOW9ZS5Xo8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BS7NMFdC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BS7NMFdC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D98C9C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789378233;
	bh=YtRX4QCiihn8YxW0pP2kyjtZkMITCSXb7IJKH0Fu+yU=;
	h=To:Subject:From:Date:From;
	b=BS7NMFdCJ4i47wYccH62fhMIjaR+qH1KkFrP/tfR7iLmsgSrnCXQt21jK8r/V1oXx
	 KzV14xTl5svCtimJlVxo6ASDS5T4K/n0VcRgFuhqf8AVp3pOn4VJLZdaJfKZbPBTVl
	 o5OLa0P9dBeB9fhhR8EKB+34EzQyAoWffECjvQdSpl0IU6fMA9aCzXcQVPRjk8xiUL
	 XxDyqQL7rL5C65qoIo2QdaZmrfPgw9nIAycx3mqawNqhEtxBMj+dJQITesxALBzuqs
	 SPgPNCRlIzWd1EYY+4XDzwS+x95ixRgCcCd1NqARZISOxg+EzxZAT2Ujf+yocRsUnJ
	 J61nE4r49I2iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B191FC88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178937823368.26168.5587612021362849939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d23aeca46df039e8935cecc700453f4d7d094552ab1164a402cb619517e3a2d
Date: Mon, 14 Sep 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789378233
