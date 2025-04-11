Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC7A23BF8F
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744393794; cv=none; b=kSyTvFWSM+ObMqwFiw8Q5T7EPTe9EQuTf2r2QmnYdS8TqE0mXpo15BOX9sM/0DVTjio50fMHAGbVhJyC08kf4aonQnV/+AsE2AV+BnLMj4pSHCjRWnjFxGcrTeDlKem9ZcHyMnlYrWh/b7KPYnJVn7Q8IvruqXHvFVs/YefBI1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744393794; c=relaxed/simple;
	bh=6eW8P745ZftawgH2clcCSlGkIsMuZrm/py+E9DlJcyI=;
	h=To:Subject:From:Message-Id:Date; b=L29t9D3thB2zjYtVP8ydnYlwid5L1jiFtajtc1XAeLaRO5oR20XdKHdfE3TsLYZJINcktr1vNtfaOMqBZXk+ABbolCxtj2nP7swMW+StyLfFyKoZ1INzitJfT7EstY44mJ8IYrEhjrx7r6or2VVSSDywruKCSyxdidElDpPv+8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M5aPgDox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M5aPgDox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE87C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744393793;
	bh=6eW8P745ZftawgH2clcCSlGkIsMuZrm/py+E9DlJcyI=;
	h=To:Subject:From:Date:From;
	b=M5aPgDoxVcRLaJGx2e+/X3A+k38oJyvnJxzKvPg1/sH877ezsqLkHbmr6jpTX6H1O
	 NJyShlBSwZX21iRgmV5HdvY4Y1jGAIA+kpD35uexUFlwnjmquXYh5pZjcTWqFKuqp1
	 DcVgLo/z6COzGEfXOM+LiqnZUdbKo7vhPAJvw8xjRbe3WrQci00Db5/50qiPUAyZtX
	 Urky+3AIi75KzoVyB/oA0zPnNTG3VZlJ4r+T1KfcqYy7ZR+I3b+HWuJxmM7KACIl0Q
	 CHs0a1mOoRS2vQNl7asqgp/L/3ceAVU25k/mfhCb8Cwmu+mw4sKBdTlXitt08V867u
	 Gdf/UCsCi8Fbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969B4C369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174439379360.17816.7237213703278244789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7963f3b99952ca64c525e4cb89ed5a3d81a850d3ac181812e23003e0523f2e7c
Date: Fri, 11 Apr 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744393793
