Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9B7271A6D
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 12:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763640114; cv=none; b=aNtoR0C4Db7pEajNViREmUJoURGLpwd/fVl37nWmNPQvLQ1Y3fnAe57Gsrd/nwn+7lckUra27tNaWZo/7C3T/98JIXsrzTkkn9WUSpqR9AuigpuhLI9c+pBPrits+Hw0upoLvFF/hTUJCo1QoqBI2y+AUfTcQ2igVEiyMQ4vD9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763640114; c=relaxed/simple;
	bh=836rDzBB97dXYFOM6jwFk+rw/DiPSZtZE3bVnh3NE98=;
	h=To:Subject:From:Message-Id:Date; b=Ym3dxZp8GHhuWMlZ/P/dYiQjRGbNPqOh0vdgscf5QXPiWeWKqrZUCJ5Zrxhabo35rFeK3YVcz92Fvb3Ph1l+Lkni+jdhNYFSdqoHGmGhUO5FrvH/GfJpDHatdid8BvGNuQq5iIPgyQgXIZnj/7yeuWaRmcwALtI5hI8zl66Fr0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FLnv+V8d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLnv+V8d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC507C116B1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 12:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763640113;
	bh=836rDzBB97dXYFOM6jwFk+rw/DiPSZtZE3bVnh3NE98=;
	h=To:Subject:From:Date:From;
	b=FLnv+V8dclItOdITm7P9SapUvaF3AVmi3HsrTVCd5gKa9nCyE6NquU7t+119x0Ted
	 EWbLLxioCbypeI13HyQiu4/1+9dcOSiDbRI0Y0X7IkzD81JQA6L6Q1Kouzf4JXuHNP
	 +QT+taEtEk3fT3dXoXzpfOj3KhabfCUw2Asl5FsVggUftBwHQjphYl0U3Cd8FyKDz6
	 Ct8VA1RZV2d4VhH9rn4RanZKYJYLMOVun+gierbSHFDkDTk2P4ojeHt/haCfnhuIIT
	 OhrvbY8FYVu5iLaLdun7ixE8PJ34Zc+fSvoG9wcm1BcQ+4fvKd6mT/TdxTGfd4BObg
	 vFdY4ULgU0BWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96547CF8847
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 12:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176364011360.6899.6933912462191625919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e592cea63cfad9d82b39abd86a4391200323f37692463e3c3f9408d01ba6d58
Date: Thu, 20 Nov 2025 12:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763640113
