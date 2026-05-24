Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E361B4138
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 10:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779616954; cv=none; b=n/ZiviCuxReCc2SlISAOH9frnSCj5TZ6C88PcsShjCLDqFG8sO41MRNQx+CQ+984dMXmuQdj7+1MYX4Y9q278tTQOwZqieWcR3xsYyNYFmGbWBm69IFh4wQynYSogD62Tyb8oJIxuLTyUap0pWDcLkVpk4eLjCleZmKv1nI+HfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779616954; c=relaxed/simple;
	bh=IJJAjgMBzQsZnltRvuJis38OSUd0HtHuL5vJFlUk9Vc=;
	h=To:Subject:From:Message-Id:Date; b=F/WCKMew+/yiqm7sSLEefORzoCjnE50ac49SyDIIZuGjajzx6p82ydmVzyK4J2Gi2Z3df10g9CLpaA6Prq2rCIcoj0SI6YVAFAM7HB8ShFi2TFWGuO/gOi99TizhEK9A/f4PznvfzF33aLJx26knf+CjEJhjWG7Lvzo0llomnUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTusZiO3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTusZiO3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C44EFC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 10:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779616953;
	bh=IJJAjgMBzQsZnltRvuJis38OSUd0HtHuL5vJFlUk9Vc=;
	h=To:Subject:From:Date:From;
	b=fTusZiO3nDzAuPJm2wj0zfYTBKRdFOqh5iCcfpEf0CLQZirZ2wphmB/ag0w0ce0Qn
	 MnTKSFrbQ9RJTCoXb3w0kQbsZFsqwXT2RLoIbhPkMtPktoY13WktEdq+r0oGK/Opwz
	 E6jNJT83ESUyYvUflnkYV02wTSfO+i/QuVkSGIZBhcPDFXbwDZ5YGCTqLY8U5CbCqX
	 xeppCZkOR3B+5IROqtPFdcdEFwP1uc8Uk5tFBGB53toCOMEbA7EFK7DdfPkhhYXEYs
	 CtFMSqjGdaJTN2YZXpV5vRkkGW/AMginZwqY7s+wCL3nqdMdzcLqwYEd9wf70MLM2D
	 Acd9JXepp0lpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD98ACD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 10:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177961695368.11856.9433628771243363942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5619b26c20000c84ba63df14d55b6feec46ef333e265818ad6c38c31805cfc80
Date: Sun, 24 May 2026 10:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779616953
