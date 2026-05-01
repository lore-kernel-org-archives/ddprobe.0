Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0309B39FCD6
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 12:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777637254; cv=none; b=loaMLwxPeYcx9cG+HZe9F7LAtxuBSCvuStgISkIEnGw7FR+ezBvQu2NmJ47GrINy32loz0Dcz9z9y1IrFFWL6PFmUXGWO5GTjfALzopMddSE0iFqS+7BJgz9Ba7JSi/Tgd4xXZqTGxSKqUl1wY0mx7M+Hf62IJ4s4JMgeBYEbxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777637254; c=relaxed/simple;
	bh=WQ/39YwmTO3LcJsJOivjiGU9PIMNzDyPwe2incjQDMM=;
	h=To:Subject:From:Message-Id:Date; b=pCE4VOEOS1fRcQJBPlLKgijOxvqF+oQRWK7/ci6w2ctZr3lXoYrIvGN3552/LauzVErDSxD8PwPUp9dOHZ9zApBH9BL2vHpd+Ls6ePBOpme2Y59FSu2ZfXgsXWg+cqH5y5/fG8z4Mk3SR3+dlaVkbGvOBR80bBq681n3DTZldK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUiiZC7h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUiiZC7h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBACBC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 12:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777637253;
	bh=WQ/39YwmTO3LcJsJOivjiGU9PIMNzDyPwe2incjQDMM=;
	h=To:Subject:From:Date:From;
	b=CUiiZC7hyD0CG2CfwNyYWXWAkwO0LfrrBjpGtNqiGv6dcADZgZc5hCBIiLZAnndoE
	 dOWRRpnVMGXL8oPkzPCMqggkHYsqG3Y6Otp/heWpjSoJm+6W3q8JqF7Y5i36SOklO6
	 bnxsourC44wmX3TsiTfjSO5zWPTeqKZxWgE4cOYrTxTjQbAjPzRg/bqBP0pM6iA9N2
	 XwEu3/npa3HRUGV9Am//0xQ/r3AdEOdtrtyi89oFfuWY5VIFQgtcXYzX92x3laSiFj
	 LVmCMkrcjFl6t6EfquHpGUmFz5iJt3hqUSxV2xAs4/h+3LW2zBxmkYHg+RqN3D+wzf
	 G7iYxHS9yhj/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC78CCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 12:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177763725369.4156.9086776354171882828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94feee143639dc42f5290719e0d3d4698f1639955277d0375d6a72138a009d89
Date: Fri, 01 May 2026 12:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777637253
