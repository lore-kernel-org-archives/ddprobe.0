Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8AA7306754
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 13:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778679633; cv=none; b=Nx2Fog4H6sG1uh32beN0I32noP2gNum+u+Hx3fpu5+3Qth+FcuW0gYgp/VQfZxoy02Rsmpy2u0pmJuaOOmhofjuoxGyHXKw7lDA018Dzey8+IddOeBwioUG9nT+XCM1tQJzaxIxfkhPn4JUmJQhx33F/1OFM4pLuVIgQV9ynP9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778679633; c=relaxed/simple;
	bh=if8kMKvyl8TwykHe+onQehkIpjc0kyL1zJdTVt2aLfI=;
	h=To:Subject:From:Message-Id:Date; b=J9rG9KH++fAZzJL/OlYA06OaH4eUM4mUpV76txI/oADk+q1LEhmZbrkc5kh+xtI7bkgkeZEcUItxWvg0VqwQ+x/egBqDzm36wvsm1T6woDKMh850EQT32fO+464BMX8+1oTRywDAYspglQDFFRxQEYOFgGOm0yEfdUt6TGGWKLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fu1JhlZ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fu1JhlZ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC219C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778679633;
	bh=if8kMKvyl8TwykHe+onQehkIpjc0kyL1zJdTVt2aLfI=;
	h=To:Subject:From:Date:From;
	b=fu1JhlZ+bVEmDlwXXxx0cusKkqMlgByypKGqsf7QIdZbx2Zv8a16nIcNrlDPUa5BJ
	 /yptzFpbCW/IOhMKOLs0Wx4RYTijX1rFo++kHnG4a1dmAU9mh3+D744aCQNPjM24XY
	 i+K5ER2Wt3y5tJkL/bVlbN1lqvJ1fuG1q+MnwYQEe86uNSoi5DodJ0c4+Iyv0yJkdR
	 SGWvMJcdF689gHYk+66EZ4zfY0r//P+AppYwZSjLgvT8wK9EJCOYb3zrAcPHXgZTRX
	 Q7fLBI4n4Ai/sHsQU7nskSi0RXoT2rsWZDNED2mxCGBhTrqiO4YDRFCbqywVEjkpRn
	 tT+82wfPqck+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD956CD4851
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177867963368.27081.14126532605313166218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55da2b9a0e73baaa0777d94e839a9c10db06aa608c508e2b98372f22eed1013c
Date: Wed, 13 May 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778679633
