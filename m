Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53CA14B0481
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786064434; cv=none; b=PJTWfgqIAkpeYPa7RENiHq6F3hpMd7FBNszPhSs4E1t6Gz6cKsSbqe/fAI3kmNFuRwxYqCZW7m2Gvsm1zJwFBwKQPxw530NFVdEvwRkZ8YPQkcLk0O6QjEVO6/F4w4kC2YpNUWFidEZRl7wXoA9q5x2OJCI1P7IKVtjPr9Jfsc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786064434; c=relaxed/simple;
	bh=sCGtNT1uaM3BLca5d2vmkiyG802Hy5DHR5OBhquBv/M=;
	h=To:Subject:From:Message-Id:Date; b=LXKQ3dWANCHMrtIld+LRSWsaXA2uUkXXTMu4xbJSo6IQPuacyu/hOJuvKVOc5f2iCASVwOIlX+QTMvU+K0rrQl/H9kv3sZLU1PR2xxCSAOz4aDjHKnV5jwAekYhTOcrs9U/04n2Qp48FRWo6ITLaiqr1tUxont5pB8J+KbJauT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NvzO+pN7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NvzO+pN7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A2BC2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786064433;
	bh=sCGtNT1uaM3BLca5d2vmkiyG802Hy5DHR5OBhquBv/M=;
	h=To:Subject:From:Date:From;
	b=NvzO+pN7xxbyxTJhcVgcYxaqJPfTDj4gnQqS3unBCEy5ndiCP1jauV2aDOr85pVOV
	 4L2IimFN3BSRg6k+bPLEEPkj6LOLEqhYwfwdjbjQrK0io/gba9+wqNZVgLseiEjkKc
	 /PkqL3j9T6ne1z5qvvLy6hxXQEGCTb79kxOky16YzWCQoNiu4BzRRCSgcS6Nzpacoy
	 jQCMiX94jlu798kCgAftkX3Aw0B51axCLDQ9wXK91LHz8+stm9ilp50R1X0n4Giutv
	 ncNDPwFYGyBWkgqquE2Loqy2s6gaz/fkv9vI7wcFgxFFUMHvy6WkDhG8qIdTXL2FNi
	 3KRi3EoEy0Cmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0020C5AC67
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178606443368.30569.16800211226465239972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 305749534ac040541c08d769b99798a341e01121b37f891f52e5267beebace65
Date: Fri, 07 Aug 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786064433
