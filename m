Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6249460
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 08:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741508934; cv=none; b=hbNuZxo/rJFM3j23cBBvUSgKaMPjSV4DW6Gl3EYI6W1eOwuyrhuRidndEYamyC1eEVNTC0Kpbie7fPaKSheD5yDaGeFPOQVq8fWltxu3dCbOs/9uMbqURVJ1tH31ZEZjmUZ4XimRruVVo3Av7mVhGaazZbLaiGzpygrP3KabD0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741508934; c=relaxed/simple;
	bh=EgxuD5ygvOggOsFvbwLY4qDK2EjPUPZ4TbDo8wzRhkU=;
	h=To:Subject:From:Message-Id:Date; b=FEFI091uEp4i5Jog+lUZuYQLftvk1+B4/jflYf8JAysVYcFhwlm8AdyPLHqvdCL6WtZ/RDSknWupbiv+j7KC/SSv0znLdF8cIHJ/MP4nJzwhtYY14td1bf+JkuqkbW7Y+TDT2Y0W0GSgFdMXt1AVf2Flk7V6o5uUtn+JF8coUGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ieYBV+QD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ieYBV+QD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B190DC4CEE5
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 08:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741508933;
	bh=EgxuD5ygvOggOsFvbwLY4qDK2EjPUPZ4TbDo8wzRhkU=;
	h=To:Subject:From:Date:From;
	b=ieYBV+QD7FJQjXc7MMnnTy++egDPnfSFRdNlYoyxD5mk2viD9DTRCuHSuwRfMAHhw
	 LlsT4IStQoAEbcvzqiq2plnbNLMnYcdtgw7oW2V3MjYjPFXwseDi9XDHJJkGjIko+t
	 fIOoi+BfejL1EA0/NJPipQdvsSwZbBSqnRZEOL1eCJm40deasfKoFEG+ocI8djX+nP
	 HdPuOOFKDmphZFSyw5F7ZLLwpi1oZ0g25FIS8jmHxVbeE0wnJ1RcPzKQO7VN+h0k/D
	 kQ6jnRnrjjwcGyG+KedCbpTs7Xe37iHCAyGM9wwv2OhUq+ZVJMNb64jFZI8hqVpC5k
	 0cgpPnD/rpaXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0712C282D1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 08:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174150893359.2792.746081493749167310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60cf18fa692bd76aaa1da5c67df57a2fcbae20526d9c2af1ebfa950f7ac5ab98
Date: Sun, 09 Mar 2025 08:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741508933
