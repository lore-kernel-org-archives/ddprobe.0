Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CA5E33D6F8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790054434; cv=none; b=QioFBMl8NzgwsQLSxZVAwcM5ONrPXsJxIDoAUUhfasb7Tkq7mHRaq+ogLiZzhB0Ci+FZgy076OU0EBcGksRCKbim8RiSq6yX20gsAUQWU2ywh1nfP+fr5BHnF4pEiTpr65v+Xyt6Z5LDB2YQGt00HvYGrF7sIZoCViVk7av9GgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790054434; c=relaxed/simple;
	bh=mRveZ7Z0gEi9Q8Ol9yxMSyDjafILw7HUNwLieyAULDg=;
	h=To:Subject:From:Message-Id:Date; b=sPaWqnqyP5Y0dmxSW6lYad8JcrXuhEjE0Hwhi2sgiMbVdam32PDm1rdXY+ZRD2R9l5sg+gksew3jUE3cjUYooNjVYqtq53293uum3R2N6udzyelQE0LqNMKbnbWY0RaxvVnOLQ4ed+NlExN68+WNlVmckY47SXSY5vdKNkac1Vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vHxZjYuU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vHxZjYuU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEC2C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790054433;
	bh=mRveZ7Z0gEi9Q8Ol9yxMSyDjafILw7HUNwLieyAULDg=;
	h=To:Subject:From:Date:From;
	b=vHxZjYuUaPhcTn/wFPg3tpGPKGN4abfqwkYDIWmMFU1uZCr8/ThAYy3tluaD3Tkfq
	 VnnOpuAxt8Fzj6v4Lf3ve617o0MmfwFrlxiIMd61zyGZqyOKTBpOLm7yDOuB4BwqUB
	 MVwpLVGDIbF46vDGoxPLwvWkYh86nwh47QMkzSZ7X2SXkmiWc8/J/kDmHKUgzpe5PE
	 nLmLYqaftiNSefErCNbbKLGkReZsqb3gYyrWYF5vLvohMWcQMfdy//F1KZ9TpIoszl
	 09kIa2F5kjQwdmd+xm3x+1YtevkydfQ/ntqibY6BcM+jOQW7n7FQXXrL2MOldL9mri
	 IAfZBRVbT5iRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D53C982F1
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179005443368.17019.5207711628119313335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca48dac115e4a1e10035efc4b2514574e24d946f19a29ff1a31fa2039fb0c929
Date: Tue, 22 Sep 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790054433
