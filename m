Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1112D7D3F1
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722288954; cv=none; b=aV0bBAXVBh07ySW1ir+8f2BLznKv2imC8ihaOO/Et+MPGbLKuvQvUv77STrBlUcE43Ro6KhdSgWR10aXB8fP5zPuZmpZRYyD0u1Wn0X1t/kuPB6rDYPb83/ILlwc0XrTlSB71oy3pYK0/e4pzPG27q2CKVmbegSo0s9xOMm2h7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722288954; c=relaxed/simple;
	bh=K5Fvs2l/2je4sybMvhNROxLVmzCMjEEmrBhhPfQd0e0=;
	h=To:Subject:From:Message-Id:Date; b=EZe1bTgmz11DseQFwMDI0rtapLadmgYVj/2+xTqB9IdTaVRLynSQLOdxnZ1UnVGcU5dPwxxCU8iK1Znj0nMiaRM2jsfQ9Hts/8BVwXY5ddx0NHqpksvz8i85lIhPJmboPaoyzHKb1fVUu2FLeVamXezcefrWSHvrP56PRJCZadE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jrBlpvlI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrBlpvlI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8350C32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722288953;
	bh=K5Fvs2l/2je4sybMvhNROxLVmzCMjEEmrBhhPfQd0e0=;
	h=To:Subject:From:Date:From;
	b=jrBlpvlINz5hk5nMtXEIqRsLuTu8t7vW1CxT8cnyqoSnUJfgXJ6RkSYJjjO6IUWdv
	 xAdwok/oT01cQ8M9LM1yD+EkAzkzxqI8rznRkNTo4V5Go4zPycacjU3rNBaszPg8+y
	 kliJND9XrZwu/rnF8NZNGufO7LWgLP0FdCeOK7IT0jRQn+jnjUsuB8/RxdO5LiQevw
	 MJaKbOUZU4xmufOQsJcqq6LYWCvn+9inEqDyapeNO4GA2OojJ/VdDznTgH03Pc0hLE
	 2miiMB+9TmaSHKw0qlhuk3QYfY8PSpE3bG3gGwVqDZ9PrkzTYaBt3noBKI6tvcnAHG
	 aNraazlpM6LeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94985C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172228895358.6113.18391640760327717769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad30569c571c742b620a3f6e55989c16cb8823c0f3d6f33ecca8895eac22c890
Date: Mon, 29 Jul 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722288953
