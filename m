Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23330360
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726449954; cv=none; b=Eb2crY5c5JereetUS5VrgGBvhRHVvrM8XGDGcwVW+5KT6iWogp7fsIm5660/FEgBUV/5hwOyNDVhUHOdREarb32n2dxIeZ+8ql5MB6UXpG/J8Ed0RxL4anQ8gLV0p4O9qYgaeVQu0+tC2y4JwTk1T1ZuOLnrcoIx02zh1zlXMEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726449954; c=relaxed/simple;
	bh=dGaS4C+VMeR3DoyS/Ym6eUsR9k300TWGnheIizwgopU=;
	h=To:Subject:From:Message-Id:Date; b=L1dJqVHHzohmIfvn0LJAh0fPoz2AXGo3Jxi14PJPVF/lqECtnu8OxSWOeHt1lp7OMWaqwW8SvD+wT9oimjT5jnt1k/lcj5IIkfQKva2B26OOQFhp1bL8o+LF3Vo+EwAhNP9H5VsjZ09GBRM3Yv3Ke/zrEER1zZbhIPa8D/emNUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZQvgpyJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZQvgpyJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC862C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726449953;
	bh=dGaS4C+VMeR3DoyS/Ym6eUsR9k300TWGnheIizwgopU=;
	h=To:Subject:From:Date:From;
	b=LZQvgpyJ0sIsBj2/ppJMPXmclJLXB2tudbcNpUG00v8DEPUgrL55iYL5D3O8pzHAM
	 9FsVZkx+A1a76v9DLxyoL09yG05zcVDoKi6wfJIEUCw7+zhFsXUyxlaVU1m8WksRlK
	 kIKvxj7p0nyW4hm/yv0pDjrDFH/q+WWV9QImXsOuBMfeWSMmFFEuVnQPTdhqJewOY7
	 HjMZhjkn4orW4PBk0QBY2xyJ85hEIAGbTNlNkJ9/cp/BMM+neOOo6hmuyvFS2rUjGb
	 6bbyBiNkz4ITIplpH4vci6/HV8trHbAigUE6QULT9m7ZnhC9FP4kGgbfU4ZA06/n6o
	 DNLBvexgv6yrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93588C3ABBB
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172644995357.4809.12718312610882895498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f83cc5031329075116f387ad01947766d405cb91dd8f35b95d3def2bcec583a
Date: Mon, 16 Sep 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726449953
