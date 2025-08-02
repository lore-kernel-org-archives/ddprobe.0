Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3426B210F59
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754127594; cv=none; b=ESWfPh5eT9KoQiIPMZ0Ko8S+layEdJggXZQw+PwoC6uu+lfskG08Px+mXI4Dim3SMMxZjAlMcJ3bkBkNGj4mIeAnYV4oSgkHi1ykb1b+EqTOCzjpWc7EjwBe86YByVBQEsoqXWTC15Re1lJnJCWHIpUUhW6p0YpQkWv0q95VVxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754127594; c=relaxed/simple;
	bh=Tg5Zz+K603dNDFy2Sh4VR5zQZ0mSig22IER88M+y3HM=;
	h=To:Subject:From:Message-Id:Date; b=iw1GLv14MQooTMJL2z/b+3ebT1ITro6A+RNvs2WufT5TVPghC50rLpfEhopztLMcD+DceHyCut2HzQOqplZRNFu1oTT+RFbU4Hm56TonO9dZ0vXOqTiBAY/PCMrwUe72HzzuIwnJULundpABh2PjJfZugsVMcIkNUzVKQh1qhNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2/NjSsN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2/NjSsN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14BEC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754127593;
	bh=Tg5Zz+K603dNDFy2Sh4VR5zQZ0mSig22IER88M+y3HM=;
	h=To:Subject:From:Date:From;
	b=c2/NjSsN6/zqVj2Nyw+bqTxwMOYMOYs7ZLCqmEOlMJduK+HuU2LZWSFWLAXW2z48G
	 T1o7BXlfNVo21CCopbazfqq5lYwHNUOue0VSwOKgKJLjpcK/jkA8uOJZLRYnbiYY5V
	 hiEJ+8udLYMlE2AAyQ0OWhz0EGb3OJLe6ecpWZhDvYnjDUsK7zu8xwDz4r1GnoJPMR
	 OVmKDNQrypARAmbvfg0lAhVdMpGt1BvHu7sRxicn4dIBATYIaWt8NG1I1Hq8+1Zbi9
	 XZ0sfHihBhoE+rP2n8yMX/+VFLLjfuLTgkRy8gqNUtTk7Js8r3rLjOFIrzPU8xvOp0
	 gTNb5yBOFjZSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F484C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175412759357.3107.10679910688617362244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85f9a36c2cff7fbab07f48e42dab33aaf627c0d8cdde59d6cb9c826d379da21a
Date: Sat, 02 Aug 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754127593
