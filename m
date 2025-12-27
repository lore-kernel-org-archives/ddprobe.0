Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C87E18DB1F
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766812434; cv=none; b=drL7qFFAvsMh0TOBPYS3lwXxKQq3GklaV8E0E0MQOZgCoZ1cGSkNb+W5VlFSljZqg0PfYnAXm+4wQBxPo+r975BMmtFDLIc612pMNTWIybDQT45nNC64PMKrRo9o3YLgdt2KVQwAHScgTTBps8IwbckzcxL+4AcZHG6wV3s6S2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766812434; c=relaxed/simple;
	bh=UV2dfHKmHGAO8+VCOqk2K6Zl4Mja5wpXIp9vHRU/me4=;
	h=To:Subject:From:Message-Id:Date; b=LNjI1K+Iow2CRgQOTSGwxyuU8tQ/CCw9sqXeCFZUztjuktSCF0r5Np4VK6ZityN+OvRmrRzbpfPfiJYeMm+f88MGREWpQ5heXIha3QL8G1XMy31SOrCNvdFrpOQXpDc9cnMJ4RrTK0mJGS6C3v/5lNyveGsWy7LvZkyBbh4zVWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=edhUmihB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="edhUmihB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6DCC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766812433;
	bh=UV2dfHKmHGAO8+VCOqk2K6Zl4Mja5wpXIp9vHRU/me4=;
	h=To:Subject:From:Date:From;
	b=edhUmihBo5zysIBgh0HXhppH+8Xfnu9k8D9JMvVI+fdESbbKY/FZUnb7nfL8OTNo4
	 zcqdLzOXqWosveIBOlyv833sh+UVaXxdfM0vP+XDzmGPGTMpZw5OUN6nHhKfbpyY16
	 LEyYuAhBOuG1HW0diEe/fUizCcAE7PmGjAJM32I45tC5CLVLZ0+bCZGCDuV8Vk75Yt
	 mQMxW7HIcMyk88ICXDWhtvX0UzCKGF+0miX37VCSjLF99OO2qJV+Xt83vRrT2I1JgZ
	 cf3ipkOey+gtbEVxL5Vqz+dEROq127b3WybrZXKLsOJCxV6Wjd+uMX7yYBlnDMKq5p
	 dUxnUQuMpsUbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994E6E6B279
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176681243358.9996.15569929611467418960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6749f0cfcf1667ff574ef6ec7d31dc9e7563481c95f84570134e2bc76ea1f36
Date: Sat, 27 Dec 2025 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766812433
