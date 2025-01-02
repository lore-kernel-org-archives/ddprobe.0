Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA471547F5
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735835754; cv=none; b=MjhOCKpnVjBB344sEF2xspZg9L1obb692a9M38QlyAh2AR4HIiNqmYrc5Pcg5g8jyjQaI+ysnzp7ozZ3U5KwoDMM9crDjVCx+PmYkxQ6n8M7x1DrP3DxCc1ok6RPxqHNb5enJUQEPGWnzRkf6OecDGhoxFR9TQ3WXMRVagz8syI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735835754; c=relaxed/simple;
	bh=Iqh/1npykup/5UCvh6IykVAbe3rU7ZEnJQWdfFmgN2Y=;
	h=To:Subject:From:Message-Id:Date; b=lmEJEd5qmpMkV5WQt0rrU3TkyOcQRfzJ13wvA5vzf6LQz4ix6DNIuIhYuLkAJF990y8FlNwa4RutkojkRP52NB16GUCaazjXlcu92+3k6u3i250H5hbRMT0jdGLd/R4NGi3XAb8CE4RMuRSwtL6ifuJqVN5eLEOSYW/GowHep5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QN820n+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QN820n+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8086C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735835753;
	bh=Iqh/1npykup/5UCvh6IykVAbe3rU7ZEnJQWdfFmgN2Y=;
	h=To:Subject:From:Date:From;
	b=QN820n+faVMM7WWZ7e5fvTM6oNUszZgQLE+BeGXR4XHGhVEKhtq3GUBRCBA7sV/TG
	 tuVv3z1jTCVyQh533WM64/p9fis+l0XsoaEDo+anzLKBitf/Y6dv2a6c/w8+1Xbykt
	 1kjLvTvqkuTsY3gtHUNlPpY0QCNEMFKo9EZAYvr7nQBigbmll6gP59EUChjK3a1wjV
	 RIgsxLbvFEfMqHIhgrfpwhmTWSsjXVOiSUKGR6IehCRnrWVqh/6L1M7MK3Ae74yh7J
	 x7pjRwMrVFTPorcV/zoh3Vi3gvmx5IUkBOH9slgrXQPwp+STaPcvJsYdPMKF958v2K
	 et+GWmB8nR7EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9575AE7718B
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173583575360.4402.4626461607822452863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fe5fa96a0be62eede3fbf8208cc5b903efe4cec5cef69fc6704520ddbcbfbab
Date: Thu, 02 Jan 2025 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735835753
