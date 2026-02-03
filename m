Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FB43128D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770123834; cv=none; b=ptajENTMbKhPYTr62YthKxXCl+b464vqc8WBSARfRsZLzhb1+oZRZRSBHYZbq/nXpokmqE6o2fCv7iMFuJvp6I+8O3YFCqJXVQIpoUh6i2wPrwB1/hCdFbiJI1+4paZBAJNAF/QNt/BACTTX7lrPyKDcGv8l343HiORzHN33VdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770123834; c=relaxed/simple;
	bh=pYwxQg9+qLyXCXSPMACQYsO0A4f2hma0KkIod5q5qRE=;
	h=To:Subject:From:Message-Id:Date; b=iQyVcs4dMJez0bTjjK18VeXOQCm3JsKRy595j9S9Ehg0c0RAU92IywFi5/VOsUF+2rbxNCNoV0R/s/MEj/0GeF9lOR4vatv77qMBxxl4n/FAG4aWV3CJNjxgeYa4bKNHRODdRoera8p93ABgzw2IQRVxYY9wRPI9fVfFiZ2XvDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W2WScAJ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W2WScAJ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6EFFC116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770123833;
	bh=pYwxQg9+qLyXCXSPMACQYsO0A4f2hma0KkIod5q5qRE=;
	h=To:Subject:From:Date:From;
	b=W2WScAJ/CiweuGEMxbBvHREux54hkTxvvbOWjm4S0aX+sdhlcxGNbN23hTtCyG8tU
	 SSYS6/sXyc802kt75iqqpsICPdG9bMULc6r0xhXja1+SY1wZIV3oFDz6RTCDRguAj/
	 DMD0oaFmXa2wU/6UzA88+nV2xXNoeEfBXo8PTJ9GjXkk2OT/OHuHzJEDAGq1hz3Ijr
	 sbM2RgB+eN/cq4Yufn31Vbq7rvc2ngr4vwtCJuYdnNXVNrfdxlFt0DRClH2W8zX4M9
	 Q2DOCfKmFiKH18V+xcgnmfC5kMmYAusbaO6xjHKIs0yNxFX4QApK0C4/I04b/IJSB3
	 rleia/Gk1CRcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC18E87823
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177012383362.29918.7529722616050052589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3027f5c6cf5f402a376211cc77befdbf991d6ffd166210b8c9cffbe20370d06c
Date: Tue, 03 Feb 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770123833
