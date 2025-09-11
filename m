Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1637935AAC1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757606394; cv=none; b=p7Gs0jk1wI6wKPuXDVtws8VCseDWgCrSb14xgnG4TPvesXGdGK//LpzNcDBWSgbiJShQiT/HxxqFizhlnxKZ6L4r6LD6votgftdC8c0Gm5ePhGvfD7y+/Q12u63rdieFnjk+rq1yaW80BPw0NvqsKQO74neCkmCWXa6r0VVYImk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757606394; c=relaxed/simple;
	bh=qLCjKUtJnqKXd2zmfeh/tqUrkFNSWRkBm+N24TxRNPs=;
	h=To:Subject:From:Message-Id:Date; b=X2XoP91JTKZVCBC//swmyuJJUQXI8YX6Ji9FYHIjXkw0fW1bonW/hz1HLowSDpbRxMw8csf8idlv/BPtNEdxony1VXAp5qTKvOHNXoxS6ihH/jcpeVBp+plO6ALPfJAAKH8Le3hVZojPWqopeG0fIqgqv9vQRec+t+TL5+9RDz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l305rMRe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l305rMRe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDF9C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757606393;
	bh=qLCjKUtJnqKXd2zmfeh/tqUrkFNSWRkBm+N24TxRNPs=;
	h=To:Subject:From:Date:From;
	b=l305rMReDRXubCxVKpqxXBf/d91k/8u7ZUF0j0ysMRbGAtoC1BB+xGNb06PCZJZIx
	 KGos7q3IDsCVQpatIUAKki/HnX8XLC56e1swSyNwpo8BCDuHfv29MdROEcWsKEwgLT
	 xbQ1F5hbzOVYCK5qaeQEoRj7mr0M2UoCRpLaRZRM5RTrCLgFg0up6n/KVXReqjg2iZ
	 Ol87nwVbUPaj1bnYe0E8r+Mwy05G1TEX0GgNbskbLLua2tAQqzcCjAmN4qV3IqqJt6
	 qC8gLRBtSf9KApU3wBDetbrZju8mBZHf0pfdE/zySHDYD9jt7a+x2hRt+crv7/Jxbl
	 vWNU8jB61E3oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBCBCAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175760639357.26406.9330244178624833980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dedf7e365f8e0ddcd1a04dd6bf3608487736687cb6829f9200b10887a288f427
Date: Thu, 11 Sep 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757606393
