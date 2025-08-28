Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1746ADF72
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756419594; cv=none; b=g1fUn8+Nbj89ggjssyr6JA6NR8t8x2wNCrF8HNHcEqz4pvIVojvGz/b12JRQYqwh4jXO+Rtp1SpU1LEm/9Y2zuodTIhz64gSKPuBowy737r+RQ7mvSPi0AU6IkWRS/HbfLuWEsqJHD1tUSaBZzH7QHJXWi0dJ/ehZ0THYyjzAqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756419594; c=relaxed/simple;
	bh=KxW7v3a2Qwv07cusB+ZzWSrkf0gN7PnzcWvzmcQ71OI=;
	h=To:Subject:From:Message-Id:Date; b=FzmYl7a42TnlwyAh4/XjtK8PYpureEnuN2hE2eyj50iOqPyf7sXJUUQbKe1KiEflx0uYH4bk+S5FW7/2ooXOhfVf2D2qGXSXBYTW/O2Jb5qULgNId3doCZ63rH1UJNbKJhV6iu94RGxvxYYzqSFAX5BAyU03sUj9vrnPIVrG0fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isixKYTu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isixKYTu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83A6C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756419593;
	bh=KxW7v3a2Qwv07cusB+ZzWSrkf0gN7PnzcWvzmcQ71OI=;
	h=To:Subject:From:Date:From;
	b=isixKYTuZUXgcA2k/1Td/F0Yjd5in1mn+QtZmxqLl2VzbJqOat583MIlbzjbXqyOT
	 DeEt+ReUCoLmT4EYOVqvz6yzD7O7lLUSxIo68nu3q+zWx6knkaWySQ7/Dr2wpO0dYz
	 E55gxbqcptTvZndHYFXJS4S0lJapgTb9vttixvBr21lXFM5FgWP/cTA5eLR3MNGECZ
	 Ff3jaTCkbXBz+eQ1nnpklxZnRIKX8N54xt2BoF8XfjNZEcQMhI3RWd6HYjRhSr5OHw
	 2P/yhsI+heABAfM2JyLG+wckL1FGyUREAqOeaPGVEptxqBBVbwHgZs1PZYOK4Xcq9E
	 zCzQbKfSmf1Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96622CA0FF6
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175641959360.12989.192675012627650383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec6bd617faa12a4e3420b0b1a615e72fe88f7ec9ceb36cb39479c9265a41bc93
Date: Thu, 28 Aug 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756419593
