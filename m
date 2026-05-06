Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD2B3FFAD8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 10:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778063854; cv=none; b=iTZPbXChUCooWKYWdn/g4ovV15mnpEiZ6epdophRBdQR+uKwISCkYl7XQLrTSF1COOeb8jxpDtDloX5DLvY2QXP7ml5Nms4wh9Iw6H7tq4pMFCihB3OtOfTguKFKa8vEngJRf/M1xgH1/dNJ58/o4HejLoacbaSeZR6Rg6cnE0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778063854; c=relaxed/simple;
	bh=hbcC4jj2y+G0azhnAvmrA0lbxZ0HWEd8wDdVFcycOts=;
	h=To:Subject:From:Message-Id:Date; b=hcIPGobMiASbyFVLJePHjlAtwCe3sM0ZtTccs4FtMAXOYowUElXkWfCunIoMJC9/Q/xbyvXtpM6idQujGucX3BCDme7YPsTXMh/x2nqVXbU2iMEFhd/7rdxbXc9JWQq0FE+BACRgmJy8qPKWMaTikKE9wDECSZPIbFet64jr3zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJYvh5lW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJYvh5lW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC67EC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778063853;
	bh=hbcC4jj2y+G0azhnAvmrA0lbxZ0HWEd8wDdVFcycOts=;
	h=To:Subject:From:Date:From;
	b=lJYvh5lWElVWekj1bsgxgbJDDUhHZ6j+LRKfEnA5Rrm2BeCoaHdExv33wHXZMMgjs
	 CkeQQA5Z0OsUCA7aZSv9nmTi7B295bQFyP52+F4mIJWfufDsKdOBcWPkx+4cxTiee7
	 jKGsFzT7cBoyZDxhOvlYBJONCnDlK/9EISL2YjihSUcYPfsBjRSl0HFrjdIbitg0cz
	 QSSdpyemwJEZIzFnauFwgf0n9KTmf9JMNSGbgWS25gUfqer9RtHWby8hTS4iHStof9
	 uZ0b/v2WkR+NYGhM+riXoyY7N3fd7eFZ8Wst7nXVcCVpzKXg2ztlLJazrjcF2R2yWb
	 7ahkMST9upCZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAFECD3436
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 10:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177806385369.10606.10938027935684388847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99d5b05c07675ec2db4b5bad4356bf6994e1e943db983656476d6fa9363e4bd2
Date: Wed, 06 May 2026 10:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778063853
