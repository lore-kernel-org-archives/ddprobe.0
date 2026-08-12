Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C19E39E190
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786576234; cv=none; b=KdVk0+d7uk829wTzJxwFLleLjrDayb9s3dncPfzTeNjYQSph6XhY/iDHBs4OSfsr+Je3+Q1D3ySz9dqEKcsOMa1ZJQ4bagvR8/wZsmN0aU2qdvOrjvCttnYItn5c/ypPOynTcKHlsHEUEpjo0/jP0oRM0qwGcikNPEsf825arsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786576234; c=relaxed/simple;
	bh=MtlDN1OKvzQhMEs99oM+PxjRtJIApmVk9C//Evq0gVI=;
	h=To:Subject:From:Message-Id:Date; b=LPzqh/C0lQPiqfI4xxKXPb/WjK5AFL0/MPogbyzP8YbZH4yB1I6YpRU0n1/cGnSnrHWErNDgCwVBdeY5o6KGLUgUqhPPh5cxHVhrrKF6TJHHE8TVE3FyGIFkfnofTxWmLm54BvcXPSGdO2lWnFgyOq2blQoFbHr+Y+M3Fr4bdiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VI7fyY6u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VI7fyY6u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5ABC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786576233;
	bh=MtlDN1OKvzQhMEs99oM+PxjRtJIApmVk9C//Evq0gVI=;
	h=To:Subject:From:Date:From;
	b=VI7fyY6unbsC86Q9RRMXrj0X/uNdTSOMo2yM1bPb9uvwUOphMc3DAPVdsxUVr5k29
	 3NTSvtx1tVSKmxh31D9L9PBe9jWb9I12DOgPl5vpYadfJ+gcqjo7CXtdqsTT2GyRNy
	 4DRUMpYrf6XSADDd20Popd66KZmPGzWcu4ob+BdHlap+yMubWDZbzRJGu+AI3ka31v
	 ah0O2FATZvU39kH+/wOCvRZAdLzlTLxepJLcnxsfQHxDI9NRx/IyBayRGxgFLgvHgB
	 CixnjDkb1uqX/+0sQGHF6JE5DGNI8kK0xj1jUQePGhwcs/3nChkV03tWp5c1TLdgWo
	 CdDk4nnLoprBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA1AC5CFDB
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178657623368.3772.6077982604565924207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2625b1d360bf30ce97b706154a504fdc09ca89a07cab5882b23ef329b779320
Date: Wed, 12 Aug 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786576233
