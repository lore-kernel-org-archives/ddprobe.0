Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9C9283FDC
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 18:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780855474; cv=none; b=ZXzawBVu10FUwb74N/Hqw6msGzP0gR6eWMQXJlIOV6aupusu9p9jFv+FIx3JhTYCSOA0RHuYYEyjqOB1BsynakuvwNHdWzJCrBYXPQrGMBKDunxHULdpI8WhfsY7Rb48UJK5WN+8XHPyIriRv3eknG9/ijzJdQQCnW0GmuBRGiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780855474; c=relaxed/simple;
	bh=zIx5QflFZKp/MFJLWA52e11ImIEfQUOtLTStuMMSWpI=;
	h=To:Subject:From:Message-Id:Date; b=uMhInvNXFdHSAbxX/HCqpNseeXCYpBLg+P14zOrHqof2+AJHL+6iSGCHF2Tl1iG5gIyHU/XRduY4WYG8mOM84BZfjZsFb+Nyw5y0lJhK271x0JL0bje/4+LFMBOdWppEjFNDm26Ft+EIb1jf5VYhbGbXo9IUamR7JUGw3ZGoScA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IDSyEu10; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IDSyEu10"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA462C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 18:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780855473;
	bh=zIx5QflFZKp/MFJLWA52e11ImIEfQUOtLTStuMMSWpI=;
	h=To:Subject:From:Date:From;
	b=IDSyEu10BLx2SmChAEEWOe46fSuMjR+y20VTGwhXxSOG0drd5F1S3b3VkrWv+60b7
	 E5MkTCAWBtK2r8IA+euc5dydT0cVSRbt0PLsiJ3Mjjz+wOO4Lc+rZMDIuJvtJaI1jU
	 5qwvEKu34AKV1erqclDcV3UUcusZzTzuNNGWomz+KSGEw0MZDKpdFBOe5Cc7QTZiVg
	 iyzGrzhHUl8I60sHckobt/IR/0bs/nI8p+fTtAhlcXI2S5mYQUBXY/cr8fDcv8Jcbl
	 cTCgatLwvuEh+43x2/jKBBJ3hSZCzU0yhShX7mtvBB3WJy4EpxZ0BwsPIHUmIju6i3
	 4/RpFDkByaQNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0606CD8C89
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 18:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178085547370.10388.11143862334352984780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8212afaa82fc59aaaa4b0ee067cdf69bda3bc6e6b40d68a8ceaf0430652b641
Date: Sun, 07 Jun 2026 18:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780855473
