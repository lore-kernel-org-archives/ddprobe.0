Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B821381BA
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759109994; cv=none; b=jSSrJ40uy7qp5kGbszmtQk/CK717L9OdaVN1yxLQCxCDqLpB/so2DrWKuqOE4a6i/NCpl7GD/PWtxoYnXb8IL7uxjpghx2jnxuONR5ie0HeDvICirW3ANB5kn6XIcDl8nyspwdCHl6jv3yyY6zHqgiTjrVb2Cc5DKgBqTkvU+zA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759109994; c=relaxed/simple;
	bh=jDHEdHuXtZ5KW1lC1pHJ+/5YAUEGKDUTmpUdEGqsoWU=;
	h=To:Subject:From:Message-Id:Date; b=qSQuD10kxRuvE3xPFQ1mRh33EEkKQfo2WXj+APFZxBmOVankbhS/WdO28s2xLY/HutcM1dMIrAnCq3VjfV6KF6PE+Uuv+ND8uEP/ncdPGYo+z8Hb4SWzcZ6JNP+YXZXvf6cQECAtsQAiNiQaahVcK6m+oLp85cTgwg6pvWGuFqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NO8R6hyx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NO8R6hyx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65E0C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759109993;
	bh=jDHEdHuXtZ5KW1lC1pHJ+/5YAUEGKDUTmpUdEGqsoWU=;
	h=To:Subject:From:Date:From;
	b=NO8R6hyxZDpnwG7hVWtgrOXSCs7N219hI9xOSXxNJeEGMPakPg7MJdqEXMDljLqw3
	 GEd4N9gpIQ9BRZpo398WWyAHk0VjZ3AFkmFd5sw/M0cI7Ps41M7IbYJvVsupPVo6gs
	 I68B7yGMqhByiE9k+4YIsBjQ/Z5iNQFQAA0gPycCKSLYZOZILRyh0w+VvrAzpCBPm0
	 oksto1ddkdEk5DBcE/jW8K7IsQREZwRmdhIOOlV6aQwKUHPRFl28C1Mh8qyrubtr0v
	 OlxhB2GyHyoRgtgUNoGc6A5yQBRb5TV6JlEEfA3/3fuRaVhEV7pIvDHOfT+MhZ2rND
	 1HOIoxlvUuDTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9169BCAC5BB
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175910999358.32408.9480229180297342973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c85fc4088397e9faf424264f6ab75ac1ae92969a8ca6755d91cd4ea109342c7
Date: Mon, 29 Sep 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759109993
