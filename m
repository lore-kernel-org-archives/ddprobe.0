Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B4F2D0C68
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759139394; cv=none; b=juX0YBTVd0FxMOSI5t3S5jhHdTrDIjSnY8qZFi/VimtcrF0wNfdHpC9DlLq3UWltxiX0NWwC7Z2cZ79jZ11JU65fsZdv4LXoINBbmUqfFieOO0NN/hYOdNSlsON+s/VvYR/429MgKpTduF/H+CgrwShuNZr5MUlUtttVLmLG1N0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759139394; c=relaxed/simple;
	bh=Ela3APnwZT+Eq7XofBOif2/t/dLdbIxsJ41iblXLNpo=;
	h=To:Subject:From:Message-Id:Date; b=WtmmsAhGCNTK67e9Q+IPA5uTHWBYkSDQw9W2aU9YFcUmBjfCTdxFSa+UEldBwm5vu7kGCYkBzvWKJT2QTdWmrt7IfyaD8GEHMjToAI2A0Kc+UPUvXbwbQcdh/C72EAYxKmM2bLXUMQ7wuDem6j9JPzIKKNUxNcF1B576/bIm22g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8kmDQB8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8kmDQB8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE13C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759139393;
	bh=Ela3APnwZT+Eq7XofBOif2/t/dLdbIxsJ41iblXLNpo=;
	h=To:Subject:From:Date:From;
	b=i8kmDQB8BdXgsg3P28ZR89OPs2l3MgzC248emGWTDQDA9VfdespEdACSmrQQBuSdh
	 rrF6lqBB7sTMfpQUP0KihTN9jVQLcsPHabcGstpbVKvyRrAaKmePdKpF213DE6bydb
	 rzj12n+LZtDd/6W6AaE7zbfj98tCoxhl7lnp9m+z2TfuSOjNHFI6DmDqRfci24i6GS
	 UVYubn8oLo8y618yjpDSOYRkhWSSNmS+80xa6eaf9d6PJ5gv6cEHwvzZzacFuIhxw5
	 JpWXIQKQQ8EYx5ySl1rR4xLiHYHPMSjsms4lW8A3UiGgBXExBpospAR1uE6cVoDNTJ
	 KnVuuoxTM4yTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F4DACAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175913939363.1749.14349417806324109752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99313e6f27e575fd0aa48f9189f1f5a8c1f2592f8b6ac61bc7dbed9e4f2c0a24
Date: Mon, 29 Sep 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759139393
