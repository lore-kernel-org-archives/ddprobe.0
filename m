Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62CB81B6D09
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736726154; cv=none; b=B+EUYr4nMjqwL9mul46iZN9mCZuNI2udBGwJJwh6GFVtdHT3dK3+M+jNSdn/cBBgkwgLeRCeIwgg36MC5wKG8Ua6rbBX/NHcNLEWyJvYHn/pT/a3Sq2Yin+iP90h2zeWDu7L38+FkD2Lvn2rmr7ypq4pU6ACOabj4ONWN3XYy4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736726154; c=relaxed/simple;
	bh=Dx8GIaSnQltsUHTeVYVr9k9K4wK7qYpGonT2ubCxEdM=;
	h=To:Subject:From:Message-Id:Date; b=MVb71V7GPcqE2VUteZMt1TeeDi6JimRx76Cngl2j0l/0FWeAyn9qPbWQcDVGpBRMmkE8wIFLbFTZkfH6kKPry65mTB8/7mubuG9xWm3YGFMVc6nFhbj25tVm1nh21L+1dWPzgkDlWjXInrKZSHrXtwRtTNVTMdfQptvM4jvWACg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hstyRCQ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hstyRCQ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B631FC4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736726153;
	bh=Dx8GIaSnQltsUHTeVYVr9k9K4wK7qYpGonT2ubCxEdM=;
	h=To:Subject:From:Date:From;
	b=hstyRCQ10S+XHqxvd0Qi9HsYenkuWoieeYdHzPnsg1yAg1uuVd2goaFMaHTs5bVfj
	 9znmi8YuS2ZSLWxv11J1GALKdKFK60gEbbi9BTly+vqvvnUQAUAlxEYfUDz57K3YOs
	 Z2FebaMbgdCfxdDtf1lVIpFLeMDwEZw5fGWJpJnTrn5jC3ezxXuD/mWqPOymCQo2ic
	 d/jHCRvkLzaKAgIvXOtcz5gqD/ooUJkYcOhv0DxGKiVXif0gVy25JYccgeLYwLKI64
	 EMUrm6fBuNpW1fGwyx6t4KJlfkaJGu1xr1IMFYSJd9B+5bp7Gjx57pXTLrkDgfR/S1
	 3FIwOy4bBC0hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A189BE7719E
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173672615365.14945.10313334316257127981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd9d8c0ea979ee93ec5f506560618b3192f28054c0a45deedfc67812a447b1db
Date: Sun, 12 Jan 2025 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736726153
