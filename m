Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F01274B5C
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769966034; cv=none; b=uLg4EBr8YT5e2NyecVDQRpEi9ZLqMTKIvoM/b939XyhW4mvReI4WQUeiNuOt9uh0yd4LTtPmkMW8AGTMI26YxdOgC1Rm+KRKZVMsutCKS6OwCOS730+LDAm0Iv0dVLsoj6dZl47tQDoSLie48Xmsz2+xDWJw2BigMw5uRZKqvKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769966034; c=relaxed/simple;
	bh=O6hIth7cL/URRlC84ZptFkSO+isI0J321RvRMfUEHUg=;
	h=To:Subject:From:Message-Id:Date; b=EWVCpcw1N8DITMcBN27BGWC1RCea+BP7eNbGP9TZEEeUMUPSk9ApvcETqgM8+Cm/298lG+9WWTYEt/MTJ2vGoS/DfbKaV2JdSY4zA019T1BblY08tGbIboBnqX54jAma5L9nUIZkScvSYkDAev9oDtQWht5LNNizquwj/MyWnJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YnTn/OSb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YnTn/OSb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2AE2C2BC86
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769966033;
	bh=O6hIth7cL/URRlC84ZptFkSO+isI0J321RvRMfUEHUg=;
	h=To:Subject:From:Date:From;
	b=YnTn/OSbdaE06FzFRdtLBZQfazvpLiPb9kafltyOpzJUlTgFT5JgwO/2wXJf4Dpz5
	 1jVC0AyAVAnJnqQe9uh/ZkW7OX3qmcN9JVNxRBb8szJd36v02B8Vy3o5N6pjDXAMFI
	 ZW/iFgVpD9GtyMLeShYyexmifBxIIIXXxU8Lm3/cH9oU635RiUR6KbtZgzAhDfRsfZ
	 vP0UFSA7n/l1ulS88jmuWi8TZG9vt77XL08D7f2TFaRWthiGBkfWkWrJoHwKn2RnC5
	 NIDac0kRC6SOwO0yFK7hc38E35N3ZbJi44QKLUd+WPuskld1haSZcwsuS2AUPehNm6
	 gzB4s0UmQxYWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85B2E65298
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176996603363.2017.17620099185327369113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04b838553775faf65023d115bda1e5255118c770097eeba8cc0eb2fc87e084a2
Date: Sun, 01 Feb 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769966033
