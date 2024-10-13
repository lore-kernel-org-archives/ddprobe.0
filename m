Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9E112C54D
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728818754; cv=none; b=rYy8PVolUxLsNUhxHoP+hFmW5Y+RMzfoiiftEN2LQgPkxMga54VzYQsrWOg+QBWDPFOzH4kNGGDJLQko6fn0Z8KEi4e0+VwxgoN3xZJkVIE54JUONFpUg5l/rllYbQiiCtIEwAVafuAVSa2o7sLWHXbNhoTYgu5AJlEyJYs4Zp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728818754; c=relaxed/simple;
	bh=t8wJy0oL5ZGB7RuGKPvCB/5YC6yDZUm83DJpViIhqaA=;
	h=To:Subject:From:Message-Id:Date; b=XR8Ee0Bosypkki/ZewAwI1Jo1kANyrZ7BnbD8xePKl4roP3IZpSMUqYdS8oHiJeR9wrqtSOhB4lCgzgXOpyh20Sxoe65TZrs6dnCG23xpS5860IlyhUkHNkM7WRvUeZfZzoDv9nJ2/PeMqNCw4OwNVcB5Vk2IpJzJzYMwEUYHIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TIr3GRBq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TIr3GRBq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD28C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728818753;
	bh=t8wJy0oL5ZGB7RuGKPvCB/5YC6yDZUm83DJpViIhqaA=;
	h=To:Subject:From:Date:From;
	b=TIr3GRBqGilRQsAFRyS6VrKURk+prI9dLlJAhQqQxBcAhYItFZJXPdO7E0qU9TQ5e
	 EiT3MU08plkaLYNRYRWYt1r7enjR02ofs8OK4QvUplNNm6eCbjEqX2Ag+8uDbX6kxS
	 HskVsSHQb/Sz81j5mIpISnUgBx415xyHol6x1EOdn1w6E245haIVITFwYGIcoEU4Hm
	 Xv1wZmidhpnbI/ywHCbsr9cjTWPUzQALQv8vJgsY1l1Z05p5kTucwSW82tI0OM6/55
	 py8+I2roa3z04iW56iCBrHA0RLmCQHrFh2rtyXTDiLnHsu3jy3tnw0L694tBpW2uez
	 o0MeN1VnDmUKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A58CF2576
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172881875360.20418.860663131786205099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b44089976b8f0e0870b0377e9b24055546878ea9511a2e0f1b92e3b76a9065c
Date: Sun, 13 Oct 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728818753
