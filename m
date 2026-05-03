Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E00EF22332E
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 00:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777769853; cv=none; b=ZLBhD0RIemIoXbnSIVetRIFCc0ipGWh1IJq4hEvvIZCQt3Hdh3EepAx1g8ZxbZqTO61YkNTIQjDOJKrMxh+MXtGWz6Pxzu//pyRJ5RIhYgnbVdaPb//DWBdbNvfCWJ4aUJnGyxwyuQQ7y1O7uO9tDoo/xmpzD+9q9dcLmwtXk+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777769853; c=relaxed/simple;
	bh=mdPkHPm8IRzJjeM8juek8VWdeIAOnE5pI2s/bQoXPtg=;
	h=To:Subject:From:Message-Id:Date; b=anSCsPFdzkWlsBa2LWb3Yh/HngKGiDsQELVv0xM2aOlxQ/5UbXJmjl8P1tdyMF7zG3zGfNBW1dCR7+yZTdyWB+DKAmbmW8FIWjvTpvDjddcYr2kZoHyCR966rpiLn/Wymc6CJfUUjROVuV2WGcBbEtwHBi6XN3ZoEjkI3tMb0T0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jj7xWeyD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jj7xWeyD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDCCEC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777769853;
	bh=mdPkHPm8IRzJjeM8juek8VWdeIAOnE5pI2s/bQoXPtg=;
	h=To:Subject:From:Date:From;
	b=jj7xWeyDLnCXvvZsgt5qls9FOQR0KQYJQx+oMc/JJQCb/1lPvcUA2/5yTXEvneUKm
	 iujIs4OojvFAwAl1LV0S6cjKmyyhlZrslPV5JjbkodjMdgtMpa1bgMeLAofDSPIXJN
	 XRn8p/43IiezDhpGyVw/Di6qvdQ3MAaSK5UiyGYFz2pP2GeaTXV0C4mNDo6uZs4/9y
	 ktZHRkvW2G1Yf7rD8Lc3svzJsmufUCfnfkgp2BKWtMB/4+JdeJ9L9QaZ0G7D21tNtC
	 eTWIV77yHfeJVtrm2EDl83XcmOP2brZbLhtwK2pSU+uC3jp4PTOUAGjY40sWh4XLFm
	 xxftY6DB4SylA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC51BCD13DA
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 00:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177776985368.1150.17924197049093126180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74d5aa485d5da77fff47c085e86f433cd0edb9f0fa5b22cd3e3c557a02c7a26a
Date: Sun, 03 May 2026 00:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777769853
