Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4072E230BC6
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743566394; cv=none; b=f5IZ641mldWIv9pWs5w8oyDBaqzaTxCXYuBbxWfWIojjG6uHhwMFPwe/q5+NO4IzGFynjm84yG9Mxvkdy2MIN4/CNpmSTH6bsevi9n4oJj1zzGUWKPnOKLtSbYijVSBXXcOrjUnRS0/UNbxqrvm3zA57mBJ3uVc6o8U9Rr83guY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743566394; c=relaxed/simple;
	bh=5bXpvOumSTzHa30NKbJIVDNC51g7WZXfDnEtSXfwly8=;
	h=To:Subject:From:Message-Id:Date; b=Ng5mzfObM9GBncAEFqSCyX6XKAzE5tkNOhHz/mFfnazeppXxPYSqwoUMAxTygQyn0v2iqHKo0joJv/owmHzz8267bBbCBlgCMUZYABiCFEUhp6asv+MSs96tEm23Eab8FQNn7ZMQLQLUDMRvrys1d9n5DFAmifQRo5WzSYRo8lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJVhB3gE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJVhB3gE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B203BC4CEE9
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743566393;
	bh=5bXpvOumSTzHa30NKbJIVDNC51g7WZXfDnEtSXfwly8=;
	h=To:Subject:From:Date:From;
	b=iJVhB3gEJWb6dBbLkFMDfCQfXkVRguwTldmzQlPQvGzEZYkSrnfPH3ZHGI1RrV1/M
	 3bI1rMhe87IVZ1n4dXhIJKrtSLZsrmQfo/xlkFStOU4xRpoLI8afCfgGVf1KYuwVGV
	 m6KNzP2eyZnv1jVtoodERY7LHuQyRgVYQBBvH+3SoCutzGQ0uGJ9WC8xy8niFzGAyU
	 eCsXmOS3IqdS+crUv8VJUV4icev3rvb7vBqmxMt55CHjuvIfj/b/IGPCRXIZi5s9tl
	 YvBSC+BPdSD06Vwrqh7g9Yv0zRxdIYYqQLFNt2QLMezY0berXoLZ2B0BcgrQo4+5wi
	 KWVOFuEkAaXPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9756BC28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174356639361.24312.6978857772019740066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7e5e77c465a93186b141da997d78bbf30328e28e0b9607f04d00c97eff09623
Date: Wed, 02 Apr 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743566393
