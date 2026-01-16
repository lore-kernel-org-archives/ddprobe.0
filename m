Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BBB1335573
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768586634; cv=none; b=mLuHyW9lh9gDLEInxeXphYoBBYoB8vJ4/5TDfnj79FzB6xhupjhuzsiLki27j1uoIPcJAfs5/IdfnHJHos5BFo+7AYKEgl0/9qVN1mU8T4Eictqpen96bl3w6mN71KFLIt5SUjOknO0gxzioIeIHKWrUp564NmXbVAlNXjE8jCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768586634; c=relaxed/simple;
	bh=XF3bj/9SGCg9zs5jXsPhoRHWYUGo5DJ/6fKiL+KofsQ=;
	h=To:Subject:From:Message-Id:Date; b=gedQ6laX/nw7yr0G1QMUZkcMamWb+06bvJIxd/ggrWOWaMYcl7Zvz6PAX8TfUYco2ZEAXclx0TP7MnX/SSdxFDVzyAQIIewGoiwZb2DGcMhdnt472u6UgDiNI4xp0TkPf24K3qDuqFX2nVeB4ov2QxJ62QG6PheSFlEuX4kNMoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvB/4KMz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvB/4KMz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2F8C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768586633;
	bh=XF3bj/9SGCg9zs5jXsPhoRHWYUGo5DJ/6fKiL+KofsQ=;
	h=To:Subject:From:Date:From;
	b=RvB/4KMzzhoci+6sR4msxkSxYyzQeq67bmwxTb2Ii6ZbjuZvj1+i3q3qvQXPnS/sO
	 HX9EPtiEl0JsO1qHHl95fxUJUpkDnNLumqZzEudP9sQJujSGIWAvpkY7hrfSs8g1Fz
	 R1fbXz06h+5W6BYes/xk5nnWrioMcSATifO9KGVFGprMBoQI7KSjByptwqQLqQ8p2r
	 RIXA7UQTzdk2e9oGrrLRDdOGe0kjOHPWEM8aIVp8p4paOtbfn1XLCxCMAEuLXkW69R
	 enikSgVJKDhz9jAxGqie/P3G5nzxVm5Plm1thgJAcqOyikeJkjrfizMRF3h1a7lxKO
	 E3dG2EJaZwsjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DE5C982E4
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176858663358.17213.10037619350020268029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 128b1b2f1a79be8d5818cf0fd25765e9693a7ad60d354b4d5b176a4389ec050d
Date: Fri, 16 Jan 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768586633
