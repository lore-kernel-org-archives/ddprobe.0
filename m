Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D1431C5F3C
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 08:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735893954; cv=none; b=IJGrraN7RVfzNKXygLLe3g4q3WLTj36Jo1UWY/GkBAzFM0TOlPqB45NEQGoa712vzOvGkWaaZeQWCljmnMyRz06I1xkh9K7et6rbc+lFH3T+7IwQ8gU1jxyRpk0ymEcoJ8/DTe5MpieNhUYTje8+qgKNrr7HwYZrJ/9CU/z1dlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735893954; c=relaxed/simple;
	bh=uxXqee0f+aHDEhH1AN0GHGq9mbfcAP/gQj/mOlrgqgI=;
	h=To:Subject:From:Message-Id:Date; b=uNoQNuxUrMYTvBFMldHWxJt0udGTr9yOQSgYazoBDq7U7XEuYEeC+SUJKNGNzR1P4/GlgtlYGCvBK5lAefTWPnvRnRPAq8Sy2zN4gvQk11ewVuO35Q5KxXg0ptbASS+o1QBuXWBjE9+uKC5uSTiYrws5sae5X4IoUc+zdp+VlQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gaelJs8z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gaelJs8z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF858C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735893953;
	bh=uxXqee0f+aHDEhH1AN0GHGq9mbfcAP/gQj/mOlrgqgI=;
	h=To:Subject:From:Date:From;
	b=gaelJs8zClB4Hoxou1fOSnFRo2wAGlE4bdd+P3dcGLN4osGnJj4XzkXqCbrcLCMAt
	 txV5A07AJcFT9nqItFxO8yM7uV7k0f8n65pefH55dO9y+AT+CSRcLk/YTPxWLFkUCh
	 Z0JWbAfT6X2gFJoy5ESAGbjA5D1Slxrr6UkApWbYMRtlXHW1N5Uga7ayAfdYVKDY1y
	 TPqKIT+NlJXs4hrpMDqkkteJcLVBZcaVc8xQ4vo5mXQbgnTSM66nRraEGV4y2bF8JM
	 ZTpakzjCyEN1XL1Xh6Rkygn67aISqUr/FWo9OPMqCBnF2pmYWZm92O57dePjtBRB4E
	 dvzYrSSaP//RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8C2E7718F
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173589395362.7028.5178888674177665740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f05018ce56074944253aa0fe09911264d4b29805bdfec2b12e8c0cbbdd5e3f5
Date: Fri, 03 Jan 2025 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735893953
