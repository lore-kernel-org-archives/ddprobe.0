Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369CE21FF32
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748470196; cv=none; b=SMUpSfMnSKe8aInH/B0L7caVYflNxcRlJJQ/Ei52X7Kb2O2A9t7LtuKrgS9Yo7HEIE5ahqD1BjY/kpFcjYf0RHb6Y3qVX5Ev0RMXO/qwnf9CQX3BOFhh15tRVhl3jjwWCcBXLl1oAoAIwSsCmD0SXnHIDCZGeuV1FJXS+rxihDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748470196; c=relaxed/simple;
	bh=j41ihzCY+c1275jZLJfn8Y7qHuF+RFygzt6aDS1AVYA=;
	h=To:Subject:From:Message-Id:Date; b=Yjo0NB4L/T2EYLE+d80OYMR5raZruwF8vNoTNf5roNTy8turvlkWHGY6cYssUE08GydR06A5H60EKbZXi/MbQZQarz7KRwWuKiUFftNpDkxAO+Vv8XXMcRFsPOgWJbdcnWhTyQjRRhAFTuoR6xRNf+XGzDVthjeWoFbALiqcjEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FXXjIfCA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FXXjIfCA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06A1C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748470193;
	bh=j41ihzCY+c1275jZLJfn8Y7qHuF+RFygzt6aDS1AVYA=;
	h=To:Subject:From:Date:From;
	b=FXXjIfCAdWtvrsMFXMV+KeCJZa0DlyZobRTLxcnIipV4BbY1wH/TJk5YAWS2flkZO
	 aXjik6JHK2R4BsG+ztu7EfWI7lX2A6epmo8j5EsIem15udPcuYHuvgi8ojx5iiYyuI
	 xK3UaRy181+n9/hppnXIe8MO9TbQCEGjdqpnYtMvsP7SDLxq2itsXZEdaTD8eU2cuC
	 sx0QoM3yZiTQb+nNqlTE5F/d9NVK3Sgz2zEk728qG79jl3g7DC+I0StO89eaGZoWdQ
	 64oebWK2/eyZgd5dT/5NYH220iK9tkJ2d0CIlCYmmAujxOub2FsqRaOeu59R/brwYQ
	 CE8iy0/SFkVJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9CDC3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174847019357.13329.10015098378015862634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 142f433fb1eac46fe6907152cca6bf38aaa6cda6701dfc81321f570c4e095448
Date: Wed, 28 May 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748470193
