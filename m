Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11485383B1
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 23:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716851063; cv=none; b=RI1+Tm0rtNNYi6U8DogNqFg47DQdz0Pfs6aEDkQkN+Snm9Bb4yioergbt3ya3L5mtXlCqXe0J74z5QAKM8Aol1r5qXhbNQ/YPm5ZMFhjV8Q8VeWZy0JspiuH1NFgO36nr7YjbBVWEXKnbPdXrhDeDx6e2XBmHUfBwNRb/OUyArc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716851063; c=relaxed/simple;
	bh=YLnwpLMObf9fDK/CcDBSIgOV46V0qLlTq6vv4fZFpqc=;
	h=To:Subject:From:Message-Id:Date; b=f4sBd85XOxMJAJIQyJerYMr+O+kcBs/OuNj7JRi06ZyzG6WBulpw6g9TH5VmIK5OMdzUaaZOuvVrkAn+uQ8pjUjLD9Zh7baZh9VI2RgEtL65xTW5KD/NjPwDu2WOU6CYeI63phqW5gc8dVWbJDSPNuxRWXT+frCL+2K+Z2OKGbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sg6YB0g2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sg6YB0g2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC4AFC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 23:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716851062;
	bh=YLnwpLMObf9fDK/CcDBSIgOV46V0qLlTq6vv4fZFpqc=;
	h=To:Subject:From:Date:From;
	b=sg6YB0g2tZkwbgb2IQmjGjsJVF9WNkm26vZg27ghL6XPert6bbDN2k1iAxWGam9sZ
	 UbaSGg8zviRbzePiZc0NICyTAjY4XxpKxeJ5VksPzfZ9kwNGlN9PjAFZ41YlNZxO5+
	 wq7fQtYKUeCPJ8LnI3PeAWobmteh2HsA1RXk68/Ein+KQyuW9kEb9DGaXSEF/wL4aI
	 qTA/hiR+nfxRRWmRWdaLBYkEOIFtD+qaLb5+dknQYwv21/CmtsqP/bPXnf9whTOQfC
	 Fswbriyad74/522xXw+q2EoFzLmEEMMUUv3gcHH4cABSXVRp/S2r4lAWNHxJ+RoWYQ
	 hmLwm6jPwgqXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D8BC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 23:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171685106277.7369.17747063128793791535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a8bfe22ac97a8120f57869aab769c5770f2a48bd0810a4188d24e344f779736
Date: Mon, 27 May 2024 23:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716851062
