Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A2CA3921EA
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 19:23:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769109835; cv=none; b=qpC7GCFQUMcnWvewxbbzYamuRxPYTaM+KjAEY1mYcGQ+5+SXwlAJkLrcno5LuGkmES/ONBmd/+aOVWJ6MGkhP4mQsLYSn5v6gpVfm9nklm5Xrx6QknAasXxvCp9Rd/aO3q8KqgAJjBXckV4tw8+CZqMGc1hPmRfg60A2EpR6xqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769109835; c=relaxed/simple;
	bh=nM+2JTEDD0bLJpLJf3azskmGQ5spMQFlkue19+IS+qE=;
	h=To:Subject:From:Message-Id:Date; b=hYJaZWeXRI02kLl5KMkSZ1PoA5zhehnI75X/VDXXpbUj2tfU+serDfd2n4LrLlKv+5eZI1kdmSVGMvrhUb+53kWy+fp0yr1+uZuhIiay40CpGEAGTL1U05hV3cM/NjYeKAfFzwc2nJV4XBLJf0KaOTXQWsrxH9O+YmCpAmmpfOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vB8S706A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vB8S706A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E43CC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769109833;
	bh=nM+2JTEDD0bLJpLJf3azskmGQ5spMQFlkue19+IS+qE=;
	h=To:Subject:From:Date:From;
	b=vB8S706Az+8AWV13K22auky2zhKVT+7pJuCGe0p7lUKepjxYd1o5Azq5FaxwZxWEO
	 o+C4Nsb/iQoHH7UkzYsaxc5FUvcOQOq48mbLQRymIr4ZKw6BPLfbk9ecal1/1J6qrF
	 C/6nHbTslTrWzldf0xjn82t7R0DZKP+YsYNM9EW5UXoiLc9/EwiACYYp9XXLfC12XJ
	 CjSfjd6Yu0L8NW0Qh7wE8Wvbb6zgVGYtOsPsqDxVR9593HQfd9PrNdE8yStFZ1TY1W
	 CuKo+GZ6H+nfKwUVJWqH6ObEJ/hyqWqVkw6zGyUk+FeiZ6GJURbyYTNU+d7hzrafDB
	 bQN0DHkc9q12g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9087FD6CFA1
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176910983358.5634.251276050353396609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 124f94a4677302bbc4a03d68eb334dbd52c4780971842e497d49ccba7cea83ae
Date: Thu, 22 Jan 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769109833
