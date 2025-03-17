Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3984E21D3F6
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742207394; cv=none; b=lbya4oiNZBvu4MkMHJR2WhQzLspZCzAZWfkyW5mLh7YgLCBVY4LvIAZVPJ7XoFn5RI0EeLNZA002Jq2TnF2D4GKus0GjclDnyntC9000B1Zxr5iZCVDVJeS28Ik4qSp6KZ+ooYYpfLdpkhI+l76hwRkL8GKHcBntUjVyZWkjIUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742207394; c=relaxed/simple;
	bh=Pqh1smJYYIv/WdBVVsd/ic8UrtvCqfk+cKSm01Xf4ko=;
	h=To:Subject:From:Message-Id:Date; b=rS3lI7SQvzbj51wYJeGExsYbFzQYyXr9xUfPuKALdnAMt8PHdRp5jxQ6cv9vsnkGFniDTeM06IjS7KH/ptZeCbg09vO9r9erl5VaanoD9lrfmjl1uQTaEO/7NygEBlQvTCG1tMkTInHYlxDPFbHW/S8M/DOAQIpxZJwI3J/MtBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jHSdfLMn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jHSdfLMn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6263C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742207393;
	bh=Pqh1smJYYIv/WdBVVsd/ic8UrtvCqfk+cKSm01Xf4ko=;
	h=To:Subject:From:Date:From;
	b=jHSdfLMnd66h6tDy+hdys01wVPbdTO3nJumW8cjQaUa+NBDpW7DMot4lx2XVeUwcX
	 mQJ1wZC9rIuXTHrUyHkMC5w3OcyWpF+830OOVkoK2EOSqejkhwsGhv3leCasF2fQFc
	 FuV/xV+S2H67pORjEv+UIlnY63i2OCb0zVp6R6UeIzAdRM0dsVl6OQDdqId/aEGsGZ
	 yxh8gHdOgMj95gN/JUr2nUlPWyVkygkbMP8dsVDoEf/aFpkDdQiVTEsQ85qG1PZvI+
	 6NfL+D4RwPzh2OcjKWwacrH4g/clyeMtXKDXIuITsVZLxSwyb3+m2VvLPIiO4a4Vpk
	 AG8katpT+zhfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9445DC282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174220739359.15684.1434724969491265389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5558ad2db8cdd5eafea0e5e0bdce0315efcce48f2c81d7ff0dc01f3a7db5e42d
Date: Mon, 17 Mar 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742207393
