Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F06B201278
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759113594; cv=none; b=bzLgZPCGixOwUfB5Ly9txwKvydO5bezAABXf+slKR4HpIgFrDvL12Bd78cnZKpJMD9jiKN9bxrvQob49JR9L/R7sHg0RHPQVtFKfO/lNsy9KCcAdRvlTCt/G4XS+irJ3oOnpWFy3fLbd5bdxNpnb6j3Lsmk955HkZgBHWY/7nCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759113594; c=relaxed/simple;
	bh=9ydFCoZvg84s76k2sJEGPdxsDx3DnyZ9yjRhvykl/yM=;
	h=To:Subject:From:Message-Id:Date; b=bSrcznr7B9S66gVPvKX3eNU6B4khmg4fSbS6t3pMAbOWj/C1jfc6nO6+MGYA+snaA8ewnMmiL4jxkt6ZfZjvhSBLzOEDwBd2b17Uzcr1Y0UkbjGlpcKsk1ml/AZJA4xuz8kSf+FulX6JXGSVYf0lSHjV1+vRPg6RZTIhYdLSJWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZW+5BDqf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZW+5BDqf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4730C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759113593;
	bh=9ydFCoZvg84s76k2sJEGPdxsDx3DnyZ9yjRhvykl/yM=;
	h=To:Subject:From:Date:From;
	b=ZW+5BDqfybNn/mcfp+nXofOJqc2YmEvR74bb5A0vtzlvReOEgzR0llNQaL9IEKFh4
	 jTwnK9hrcIMaUo7nSQ4Lcg2km1p2L2ftjF33vEghTGPRVUXfMDJg0sSIFQRRpicVh/
	 NuiI9oLNXbMbDpybbOk2XV1TELqmYFiOhtQRUS7/hnyg5bfB/2ZN0iCwoYN8bLLhec
	 Zg+q/+tTjL7wa0DIQZwd8vclerSB+AsZEcPWo7F4WIVDofJRI4Z6PCfIPf/QTjLMdJ
	 YKi4iMwkdymEkeVuZVl+3oFxJ7J7fPxsCI/7RAmm+kp92Qgcw3V8fiTnJRZm2tLkoR
	 QXiwuPqfgvmJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9269CCAC5BB
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175911359357.2711.12582583755489151841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26c2f2804b778b865d3b276453a58ff24c9604be44e13d859c50b905fb38d33e
Date: Mon, 29 Sep 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759113593
