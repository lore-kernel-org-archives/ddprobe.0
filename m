Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 544EE4C66
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732248954; cv=none; b=WCN6TyLTFowYhQkwsfWR8eGm8UpYX2myFa/qIPxmxoCAhctKJqqciU0ZQV/zlROk8L3pJMz5r+6Qha8MVJbM0Ls1bREM/LxF1GUhX27Wtj/S7ivG+dniO2vx7QaQYBcyYqJSKe8UOIoMElC75G2EuzwDk9hfjnyOom4dpqx/wpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732248954; c=relaxed/simple;
	bh=zWtDe7DY2bJY0x4CeSAVbjm72hw4hKJGn6DjfZJlo3s=;
	h=To:Subject:From:Message-Id:Date; b=BUBHhkqY6s7Z9fDMbTUPPeUgWeK2wTiGGcrdUOU8xMv6GrAh2DemuRSGCJza+T3sPujsVRxO/ekhsfT91rgqpkX/WE6DRt+fZ9jxvmZLkUz+H67VSqz+0NbMJIPliqTReaD48XDQ3zEuVMPfg51MRN3YiRkGWJSzkTxw1Ox4fUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XjAXokRL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjAXokRL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71A7C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732248953;
	bh=zWtDe7DY2bJY0x4CeSAVbjm72hw4hKJGn6DjfZJlo3s=;
	h=To:Subject:From:Date:From;
	b=XjAXokRLraS6rx7LZxV0vxQjPBZSy5I3Kow6ekdB4jtnztU5eCfJmX9McHOjnQjr+
	 JkWf5ZQ5mrDMoickvLSFd4lTz4ExkTam6cIPAH7EccGTWM3sJCwfpUCyg4JfJy5D9E
	 ZO85CrAS4xiJ6y4oRxrnR7JL4Cc9B+nEdqHcJkatVrkXrvmc62EB/Itk4vAOoLi1Uy
	 kUtl2y/BofbdDSPdQiqqHjFzQ3lhjzBdiiomM7io5AItc4BiYrLSifOfUAom21/Tfo
	 U6t62akuk/1A4yEcFBioZQYdUnQphBU0WZr8/6Ikytat2+GrKP8t6a1F7yeGesTcR5
	 HDcc3F0mi507A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92633E65D25
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173224895359.31681.7319298019719857217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a0314985b5605fb689cd23d86812146f87ee75b6a852a359ec891d301865547
Date: Fri, 22 Nov 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732248953
