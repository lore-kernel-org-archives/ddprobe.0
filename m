Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95424285041
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787839234; cv=none; b=lfL2rotkG7xM9ODj6hAkou91R9Tpbc0DdDJNMQwJMymeFTl/3geT6nbiUXYbjIjzQd++Khgc+Wcok906bdXLgZAj1XHHgEnyq6v3nXaJcPDGheIdiTUB2KL0yUmbCqHM9Jvn1qYEw/cnnvBWICQkUu8qja0QZHFvnliXFXSswTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787839234; c=relaxed/simple;
	bh=ZwJTOaFJg3qlatXs9ZJRMusc3NKYoSelXo6r7muR7rU=;
	h=To:Subject:From:Message-Id:Date; b=rVq3T4wOkk+YWo5Zkt0f9vTTvo6Wab4k+STlgxwTuj0E6JEKR1okEqMwpBya/77TcdO9V7wPbnOLjrRsROdMnL47NTTyC2oI3YlhRSdV1djZ52iyoEJb0mD/jIrhAS9QzPRqB7USRLj5g6m+e+ePBsXkZbyH9VkWaoaguLvXZfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqonx/Dr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqonx/Dr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD7F5C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787839233;
	bh=ZwJTOaFJg3qlatXs9ZJRMusc3NKYoSelXo6r7muR7rU=;
	h=To:Subject:From:Date:From;
	b=bqonx/Dr1YrciehWx7Fd658aR1ul1rVkMLjXJId+mRdxuqyon0xRHu/fn+mXardZ/
	 x+rSsGw0rXxBtxjXHBGINDnklMoKuCH/ywT7HpYngEnpVR+KjEVp2t4nLzi6ykXlKc
	 M3FzgiQY57g1dX9sxYOs4l9U8rxD4cX9VzQmnlxABDDKu2G3DC26Qfm3GmV16BOOr8
	 TKhyP690aEVNgp+V6G8sNYmoslcU8IZSs3bvwe5EGAk8eUQSLCXLvgDrITiu10ebLa
	 XRtIUSsfQb8uzHGft79cZ9S1mhdzczKAblRyQN5R7e7S1XX1tNtPN+nclawboYKtvC
	 4Ppvxn62zdqmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA549C61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178783923368.2544.8764116037934379800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fd046e0ca0f314f859e5c31c27d242d4f0c125d5c62e9d7e52e86da7212f608
Date: Thu, 27 Aug 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787839233
