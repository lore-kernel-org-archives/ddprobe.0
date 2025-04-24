Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341FF1DCB09
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745481594; cv=none; b=fdQ/gDJ+A2DxGSx24DmmSfZtGXKNTqDdf2fIGh5NJThCCYwkWOkCK2MkrctoIWmKsHGkUyU2EMTlIU/tbKdER2eioUyvOFp9YFuQJcQdgjQnzqHWlJst72ruExFcN9UUvv7G/HTPi3IMz5Dk2scbExIx/uPUOFtY4+CtzfL9gTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745481594; c=relaxed/simple;
	bh=Ha9+MDIGTX4zrAlUaPxUrzTr7t4dqrOtQWtsePi10/0=;
	h=To:Subject:From:Message-Id:Date; b=BzfdDMkR+sVGx/vxHPTpQ1DKxqXOGfKfZK23CmqXm9eEg0oc6XTRiXxjr4xtspVj1udXofDUlIsh2JmJIOVr4h3SDq2nN+KmZ7fahd+TI7Hn8+1x3JzT0DSJNk2uGA82xARDtGTtC6KA71Aj/WME5D1VcjXRkmr92acu6AGH0yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VqKzWM6v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VqKzWM6v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25D7C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745481593;
	bh=Ha9+MDIGTX4zrAlUaPxUrzTr7t4dqrOtQWtsePi10/0=;
	h=To:Subject:From:Date:From;
	b=VqKzWM6vfU27IOJ+7WU399rHUvHiFTDGT59wwJy10DVnc0xiYekZFqAC09IaDy+nH
	 0urmRHZtVDX6RCOdh7wOG9wH+eJnLaMjv0itfUwV8GPtEDnrrcHhCrsUBWzi4IidGn
	 SgNZ5u/bNj7E4Bcs1EDvTQHonvxqeortizILwKqmfAeB9LQvSN5SzlQycXZaEmYspP
	 FQspifGqluadIkTVxUFHbhnr9c6/RhtmpRywaB719mtenmcOphtFAmm04tlOJifSBu
	 3TU4DR0OplZGpa3DxtqJ+G6gaOZ8opa3V3fG21qS94uGyQMV8C7zy7GU69c9Hwofxa
	 ha9DcpWlh8TCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE7EC369D7
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174548159357.12027.11754613065679810350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 291cebab32b729f5552e2208dc85ae0fa2806b45072be949a37ab7b7ac9d409b
Date: Thu, 24 Apr 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745481593
