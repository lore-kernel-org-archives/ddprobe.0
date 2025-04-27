Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32068173
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745737795; cv=none; b=VkIwO/qO/dTTY/wE91wX5+1x8/ulZPJDUm2hz951nhx6QF30gyw59atCtzGt/ev2D1pT2Stc4b2CJp+Rs6uNdLda6fR0I2jksOFyOmnEk6aTpY0xwRnD3Vrs8Md2InnIXoz5ApqwGTFU9MI98TnFQKbHyCDVDIpp7m7TSXozvao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745737795; c=relaxed/simple;
	bh=a0fT6ASoaf/lyoUP7nmIv1HxNRS2i8YGE/8iZsO1p/c=;
	h=To:Subject:From:Message-Id:Date; b=JWD9B74rviowaRtHzN9+IsdYoZHzvUzWzyS3k+W5HfiwBnZJC5BPaLtaPQfKxZfXDWhVtSmsm6mmj/tWqpR+9pYLKDmBqt0HReFv01o0+qfb5Ktu5R7d6l7O501ZZtUpwoclqZls8F8Ks3BbzMT9tsIlH4v4L5t+TRuEvrPIiS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M88lu7bO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M88lu7bO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E43C4CEE9
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745737793;
	bh=a0fT6ASoaf/lyoUP7nmIv1HxNRS2i8YGE/8iZsO1p/c=;
	h=To:Subject:From:Date:From;
	b=M88lu7bOajCQJWonwFjGAe+PlW7Hm1xrU/e8kIwqHmoLozjLscZRlQMl1wK6elg0l
	 g9xmT0537Ut2R/rURt5Vtpe4ahOp44tifeJZnJbVMol+CoTA4QPh1UceaWSOf2GiMM
	 i7yoUoFUPPHkkG3MjEbG+kNTLI4SJcQr+/mWEWWu6prt+mMfEWWLIdRqQmTvnW8yms
	 LKNjH2OSn0nbmonyaomq8HxLRNov/uL+TvfOTzs4CZryuHvKSyg8tlHmbXJf6+si3G
	 oGZ9+9DNa9tlGCTL8poVBC88NF3aEb7+HL5cn53SKY9dOKtacUuIhOukJBaySg1fvH
	 LLtPtKm14PFUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A62C369D5
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174573779357.19824.11460546060337038168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf033fecc479521716d895fa611a2648a7a3ab5e87f7e1d37bd5b5e158459c02
Date: Sun, 27 Apr 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745737793
