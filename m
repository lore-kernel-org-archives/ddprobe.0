Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2541632D5D4
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758049794; cv=none; b=WLmZBblzkvqnIeId9YLM2ahTFQuHURjgG4RT+UIH4I31iKlbGbDGGXpaLj8RL+BouoFZ1AftrfH+FLO/pykEuTBYBuhchPzi/e4uv9/R9PZFxR+gGQxOQ1wqCc3sP8MHOg4a3vG+T9cE4vpHLL/OV+ranZ2jEypuQ21SzHvBtpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758049794; c=relaxed/simple;
	bh=bkkWYtSVWt41K+SxusseulIUlRjwlEMb1kA0kEVQ6ng=;
	h=To:Subject:From:Message-Id:Date; b=cajsuxeQnMFz72LYT1JqbuuAORR+kwERxhp3kLlZRC4lgq6lhuLle/xzDBvnicEyQL6mV76HzBV5v+LA9FarDBU21LVXfn/dmKM0rvYseY879Jg383VDK+h9MlnKjxiKML8UyVDjNiSwCkSPnr7K6T1l7JnuDPge+tBVgS0AMmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=goDn0uV9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="goDn0uV9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AABC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758049793;
	bh=bkkWYtSVWt41K+SxusseulIUlRjwlEMb1kA0kEVQ6ng=;
	h=To:Subject:From:Date:From;
	b=goDn0uV9Y1CtfpSpe6GVK/RBjQhxmAeT7t1FjtdTTSUncuxdUQ82Qtye2zqG36kMH
	 pogP55em8yp1JlzpXfqymTJQ9qI/aU7gPg0wt9jndTErIMwuHppMFv/Gx6JEirMgpo
	 uSrYKR+Y8bzUT9FjE072SLnwhWjRScddWJbWvKkrwM7pNAau+qJJ3YpGiyG1BcmQa0
	 ZVjPhXQgKUD6p/3xAK0BAz2jC/oOEyKdmL99ZYc/wVEbhv9aVoWyJnaWnLw6A7hq26
	 zQpZM8+QFUp4A3pCYtO9HhBQpuuG5Kotpva6VUEyEbjzwcn9LRYVf3hyFDqR/4Qn25
	 WKQ0Grnc0UJ+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7ABCAC592
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175804979358.5563.8006456014703207275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15ff93714cdc0c516b086effe3ffffd2b1bf6309163ba6a0fbda19312bc218de
Date: Tue, 16 Sep 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758049793
