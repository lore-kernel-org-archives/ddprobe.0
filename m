Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64BF254705E
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791694234; cv=none; b=O0UAqRE5jsgfF/sZmcl15uvMz6xNbk/fm4NebsSmW1n9qKsTTbdIql9aLzEXrWL30TftgSlwyjDDnKfhdty9pIOYvovlDneBUamNQOUTZkDTwmXWT/IiGqlUmkc7P+S/b71DzUmQ/5I9b1CEqaCsVOykbTS2gEwToUn6Vk2RNdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791694234; c=relaxed/simple;
	bh=CDhop0dRyDdxlKhlx3t5o/I8QIFlHMDwnqSyLgmdyeI=;
	h=To:Subject:From:Message-Id:Date; b=g+SgG1YiFnWjGhSfwYRqFCuazkVxCTggXuO2jGzBXb0rBCDuLsSOhUko1NpYRCdUQPI/ADyskexQAygr1i+1TR+sWx16gpagm1kv3LsYpF2i7uKFVwJrwiXLPwqIpz5gzqvoZIeAAokoTyhsBdj2t7F4nN7uF+WFEcJU3nhZT7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQRZ7dMF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQRZ7dMF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF63FC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791694233;
	bh=CDhop0dRyDdxlKhlx3t5o/I8QIFlHMDwnqSyLgmdyeI=;
	h=To:Subject:From:Date:From;
	b=RQRZ7dMFREFO3EyIk756nZRmS7zWbStHDsPWTdjnUAS6+fBnbKIuo4Z9dJFtkKjmY
	 dOJ1yMx12XKSmuO+gBeMabsp6k9YiTuyYi2mEcvJUeAKPjavd54LCiEWulebRQWctC
	 t3yaZ7n5CQC6CaE3S90ze2b5c3IMg2Xl8yNOzt+FOQ+/KtBjPPDvaATTNZvb3M2sVi
	 fMem+jC2fYB4j1nIEPkkrVCxKXN4loUQWP0+Pm8AlDjK5aDb4ufLi9KBs8S9IoJkl8
	 ED0YNQR/Q2VdocYaehnTfpPWQIDSJtPcAWu9E9WJFR4NDPh9f7otv+Awudlj2pKBBb
	 0722izvsdOFXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC639CA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179169423368.25522.8583541780354305710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71c1947fadfdea7d246cf144c470fb334b690a277e06cf1452ccffcaa4fd70ad
Date: Sun, 11 Oct 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791694233
