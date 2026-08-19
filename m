Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A02E17993
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787158234; cv=none; b=kR+UAOLq8hVAmzNJhrJqI+3IJ/3YqHV3aQAKEJEis1mSfxG/mKMMs6hG3EKMFKDZtvIU0pn/qvEh/mMbBziX0JdZysQkvnA7hm1/SmLbxjVQbmFLCOZPm/kfxamtKvYXBn/c0rG4vaJCfacj1177fqU2E1SKWG/wNryLK24vwjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787158234; c=relaxed/simple;
	bh=99a2xoecPS6nTOFIFpMi1llGX6jGEGFJH5FBTro/57U=;
	h=To:Subject:From:Message-Id:Date; b=ARgKtc4CS/EZCDkJ9krEso9SJOPCoedycUFeqX/IgRyHyQPUfSkJ60CCXkKN6hdjdfIY5Akl9EoZLOt6+ZoRFobBJPLCWmIPtXzpZQWCZU4bQjo1D/9VBgDvykoX+vq7Tsg8oLAA63btwuuKVcRyu86/AvchaC4KB8UApqzgUho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2Replon; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2Replon"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F18D5C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787158234;
	bh=99a2xoecPS6nTOFIFpMi1llGX6jGEGFJH5FBTro/57U=;
	h=To:Subject:From:Date:From;
	b=i2Replon6XjlxWP1nKiaJIscfHzVIUoVQfPUrOu6L06tzp7UYtk2YHRMkqhb/h+Pg
	 8hOpMc02yIliqqS92Cyk/Bf+M3Cnzly9fMHsoNIq+T4fZq3rXJCzNtieS+K1sox/hF
	 AokacqNo0RKf7umirbIhpbnSpxB4BHs6XWnxVJtIfwdMXPlqOg03P5pe1MxyeawRhQ
	 uoWYfEus6srbvX9n2BxEbuVZhm88B4KNwtjjpEQ5nJFHag7r8h/6pt/zY02/houiFK
	 zrKM2VHqCX3YSAY+ALbUogTS9NL0phU9YjBdUM33YleHgadY+hZ7rwtSRFRVYtGnpa
	 wyZUSTYjoocEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE1EEC5DF85
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178715823374.15837.15861534071067079658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5c265f80e2ab8a6b97effb12015c22f13c4c570c23a94b1bec411fa97bc0e07
Date: Wed, 19 Aug 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787158233
