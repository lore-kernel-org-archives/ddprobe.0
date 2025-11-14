Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCA62352931
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763155793; cv=none; b=CWhaIGNgqop3ZztYGB8HJPOUZwLldB9stIpXZ+sToboL/IwiyjZNC10KVoDwSl+UlxJY3zypAV2mzplpjMfpIgu3gYf0SwrkMfzxJAvrZzyt+pHb3tsVmfNbzdiuSiFo6w+jB8xX0k8M16ejb2nZJYIzq5bEWhGEy7Hbhpx8j4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763155793; c=relaxed/simple;
	bh=vKq/bkHwwIwDkB4ZXxHT5/7kaC8FxUgy4tD9xJLKbGQ=;
	h=To:Subject:From:Message-Id:Date; b=RIg+JhFPeFSAYtp+HP0axDD4K1kUjkQDJp90FIsRxUm1V4GoDGa3ADEkjhgGiMne8cs1pcobpltAc6b6QmA9u3QeOgGqsUvvtow/svbP6upUFbZOIvn0vEropYvw6ZbZnkhLM61y/+9yzOGpqLgqxT1/sf1hW2XT4F56YTIi9/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RH4kW/is; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RH4kW/is"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63FCC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763155793;
	bh=vKq/bkHwwIwDkB4ZXxHT5/7kaC8FxUgy4tD9xJLKbGQ=;
	h=To:Subject:From:Date:From;
	b=RH4kW/isTLqLBwnEWKyt7ed+Z7Yaf0y3zX7saS0kwLVMpM4UhTYzOuMeGCFN9KS3j
	 2+OERwHEQaKioV+Ze7n98UZc/CLf6NtsGyHOJY5BLLqDokoS+51D0TW7HLhAWtdTcR
	 KMTFXS9FNSHHt1K83/Q0gxc556+8GgDaSS6Fxr6W6Lg/KPRAtw5k4uIMqppDRPId+x
	 lL2SwxePvlT0azMEQ7dERkr398psEGBg08FwDs5oz8/wMROjZlelv8XCkl6Mj7K9PN
	 eUJqNyZh3cxV8FhTmo87rEymysUvqYomNZk8RNxHtJOYnXZ1cHWwz+XDZV7tJKxzwV
	 /4+RAYW5TjqSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2B2CEACD6
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176315579362.24133.4079524904229218670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b03d772048abb3a2d61d5d018e5875e8e60a765c3326d010de1741047eba398
Date: Fri, 14 Nov 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763155793
