Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FADE348477
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771515894; cv=none; b=JhnsiHYAJR+KRwRk/QVc2AxNBaMLvU9QG+x3lNLqIIRkA/VhasrvYTv2PqfmiBuPpWEFeZm7sO0JN+xED56Twx77lUIoGC4dKLcxQKyKCfnaE/k5AJykfp/1AKXsMN9jXBLHC7gn77ljb1IPx0IzB7kWWCkn2dvPWycXmlh22UM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771515894; c=relaxed/simple;
	bh=CHEQXNnx79cQm9OTiTiqLKMeg65fOUXAbZnHIAtDoE0=;
	h=To:Subject:From:Message-Id:Date; b=VOaAb0nbF2HQy8E9AeqMSo+/Ju8Iaj56yVH60HKDtW+JxW1gCqdL8DXQjdxDCNgmZhg3g/thUxJjqgb0+CwJNIwguV0iHAl/k9RukYi4o6pnJWa06ePeU/6vMC2PzdEDbA5Otw5jgcGvpA3e2bWZETL7Pwo4TKciUVMhgi7LMcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWj/CVkx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWj/CVkx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89DFC116D0
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771515893;
	bh=CHEQXNnx79cQm9OTiTiqLKMeg65fOUXAbZnHIAtDoE0=;
	h=To:Subject:From:Date:From;
	b=fWj/CVkxw5cndKBK/a+FyrnBYfCgTP1jL9b2etOgaQrjdq9KDC0KbS5L6U1TetH4K
	 Gp88c6t5McJvUhjpgxjo+LGkjcmu77TFCoEIkCilJTHQO8sgYFqeOSWTb3BdC6E/ey
	 gXvrzsYRsPBxUX/ruwv6UAbygb/b6weCILuMjS3JFkZ7FF5O8rgrQzgHgyIOjJD1x7
	 kZyYiLiEnjNAixB7sUEOVTMmhqlWlFgTvaNst1AEgbdq/4jAXvtodiK9kvmzq7HAzI
	 GzudSCstSsLV7eaASCluzKVWrUyruWc/AJN/XTpUVl+IjSJAxfdfO/OXundbrSBam0
	 2WweVhKsrmOiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92430E9A048
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177151589358.18362.12943870389057579072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2ca3bcbfa6bb7318726490f291ddc826f7f2634f4b9a21e46658c5241122007
Date: Thu, 19 Feb 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771515893
