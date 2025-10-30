Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBC8337692
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761812394; cv=none; b=NOZ3glt+YNWiHhmZI+oFhDs4ImQK5yUsWOmqLZckLaE4yGwMrLUARkZf2ffyvdM0K9Qe2KeqjLw8oswgu/k5X48F5IXsXQKqd+IAODCW4sXM3duZ6epTIxg8JP+fd2YRCHpwdDdmo6iyvC6sjcFxu9icNugpmtl2raDJQtHn+7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761812394; c=relaxed/simple;
	bh=OWjjFxRcNZUn1qf+qT5WWsbT5gd+Oa4cjP12rnwVUZg=;
	h=To:Subject:From:Message-Id:Date; b=bopEQbmqB8j59drvIoFcEvsiQuoxujcz4JMKW2aTqs07hx/WAoq5/tBuJPjvQEuYwUUH3j0J4bRTbuj2mviw1EFrEC5TbMG1MlTKMBCGeL3tgx8EbFTpEHGWAn4rh4KjTTDhMRh/DdUZsZTCVtHXmJZAEh7pK60mZcYAaxnMr0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nWt9EIK4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nWt9EIK4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47ACC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761812393;
	bh=OWjjFxRcNZUn1qf+qT5WWsbT5gd+Oa4cjP12rnwVUZg=;
	h=To:Subject:From:Date:From;
	b=nWt9EIK4iZuPBsJCB6HPsth2M3WVRQytsWbKQKkwOglnk7RGNV7i2fP00OPSGV+tu
	 gAZ5wMuL5BwixjFcoyMeR8GSZX3sd3vOseXE/tQc+o3dIf+GJ8gxT7VoJ3Oy37AWd3
	 LZLoGYkf+Qs6R/qey0uMyY43qfjfLeIkcN4dCXWw6DC4hnfO4KbR7wofPxaa5oJpE+
	 EGWrIPWa9Ao70cJP7GZX5N4iVSd2K4lfK+la43iFlfq+vfYEA8kdvOxJhh50MEvm3J
	 uKmouAEyVXZJLE6aqVeoynlAXJbx54lCvwfZhz0bdjmbCRGcg34KV1uaqKF0yXqF6f
	 KzTzxb/MC0E/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9181ECCF9F8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176181239358.16686.13988203275309626273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4095f0c6ac3554519a6e1c73b9d09212be94820ea64b22f192a225b472f805af
Date: Thu, 30 Oct 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761812393
