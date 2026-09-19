Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2A5018C008
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789806635; cv=none; b=cK6IkVJ66zOELBrR4dFg8RGZPP9XiB9WFxRcbaRCKeMYYB9cU9iULmXrTw1gM1uj/6zAW7/B6V1oYG/QuCUqWROKUXyLCcecjY5gWu+KXjVoWjqbgelf+Nn/RMFNeJNxMioGJEiMCcXHkl1fMRvnkgqY+mg2Cz7pFn3x75G2tJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789806635; c=relaxed/simple;
	bh=Npd6TsPEqC9gLBdecI1OIWq89CLQmklwMLFoSOHZWRg=;
	h=To:Subject:From:Message-Id:Date; b=W2YaV7F71tGkpnU7sIJhHpb08EwP5uKKw8OtfyZ/tUn+4LromW2QX2YZC3tvFKazG67cDUlmPW2nfAq3Bdx0ctAchK9RwSVyZh8pZcQ2p33AomyKu8pCRwhPW58hggOvm4k7JlSmqpQabiU4Hc2ad/SRoI312nclu4+s/wgUwoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jHXJBILR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jHXJBILR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 61B00C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 08:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789806634;
	bh=Npd6TsPEqC9gLBdecI1OIWq89CLQmklwMLFoSOHZWRg=;
	h=To:Subject:From:Date:From;
	b=jHXJBILRhuCUXrM8FTBVXOesJt22JbU/c/v8rr6Y0lxy5iXACwfgcOpChUvOBZcEg
	 bo3dvI4am8zr1KN0mHscLQn5VDNDM4espXgKCj3x/uiIqRKKJOa6IhZZcV9T7SeLnc
	 6J6UsXL938GczCihhkgZxfiLahxi2HBTh/QL3MdyUSCh/+xKeaXbqDZmzYiid1Fly5
	 BEQDXTB3pxjf29uqSuzIyjOqxiZZbuMhqhokmaRVEydygL12f+RA2P357xjm5aHVOS
	 kQ2Tb11W8uuLaIlYhP4gAD9cjSthYnE059JWow2CWDnRSNE9uataDm8xIg+lGy/Km9
	 KzAE8sboxWT2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01F53C982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178980663384.18499.9619474174207974816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fb17a0c88606c990ba4e6fe7899d54c6f54c59992ecce14a1d8a3a53ddbc36e
Date: Sat, 19 Sep 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789806633
