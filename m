Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 616EB13777A
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 17:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713980483; cv=none; b=gCw5NbEgUPJKEnFB0UC584BMJqq7oUqyZ32/mZfw0No4u1/QEy29I9nGRQixSN3xhM2fMT8yT0u4rARmrkU8i8F2ItN1wMRyZMgzoxfcc+uf8K9kKJVPHpajsMdyld1dA1B852bk9Kx82Yk5ESb8PCPvWw4MKIK9B19BY5HoHKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713980483; c=relaxed/simple;
	bh=61k5Hw1HWBFxm0inRjYZdzb69sYeStYpjC9VNjOtzK0=;
	h=To:Subject:From:Message-Id:Date; b=JbTi1bnVV0gH+NxPOriPU43IkfzIfYAXtPqu4kMGw1/bODs30roY1pYO4Hv58eqezer5lzzDrCbbApceFqyoyLzNbqJGnd2YsoGUnUc52Yk8CKZn9+lWvsv3qwx0mYSJJrlQfJ31jeYhv13nQTNj23tyWN8OLm0IcW9pAimho1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RC1pCIBp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RC1pCIBp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4216C2BD11
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 17:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713980482;
	bh=61k5Hw1HWBFxm0inRjYZdzb69sYeStYpjC9VNjOtzK0=;
	h=To:Subject:From:Date:From;
	b=RC1pCIBpk6NWVodPUc3gxMu+eC8rl64wi8/Tr23uRz9J5/5Xcg9eXPXjEh48WGfM4
	 kzdxYYt7xvBXYHRO5MxsyPUWttm6eGIQnX5m/Bk1+61REVanefypiiS2moJqY2k/Eq
	 cREAW7G5iZlprTaHvf0OO7Yx/8IXDA+doam53uxw4DDBKxt7vBcSNojOac5dGvUTWm
	 T1I8olapD4YC5f5Fy/Z94ue+JHENhmclYa3MXH20oJL4JBEGWhuarVqekiPuij17Xj
	 lmiI4rht2VPeHGgoeMxfrZQDToC1QBYY7o7/TK/BH9xW4vmanUukQ1BbS9eMeU3QVm
	 7QcTe+Mpq2EaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEF09C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 17:41:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171398048283.433.7595788380996342931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 341239672118cff2b83419888c627587eeb32d10867ae7848223879efcd627f3
Date: Wed, 24 Apr 2024 17:41:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713980482
