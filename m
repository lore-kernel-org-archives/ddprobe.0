Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23950266F15
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754651994; cv=none; b=QXC339x9ZYsKpvHx/nhbIqHlH88Rr8CWFQQfjDtV+qOKKFMlDb4tWTXyve6vaRhGT2WLyo0BpTwHb4vWXBPQ+92r5tjwdMmLCont6hPHu3usF46i5Ty8lom4d2HO3rHmJzQUUwsMhOokFh3+oKmi9ILBHEUfGLsQsiYBHjXPoYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754651994; c=relaxed/simple;
	bh=KgwX2/hCOmidPSm+hfmAhOiXfy7+CtNP7xPkN0iXhyU=;
	h=To:Subject:From:Message-Id:Date; b=C8z7bFYZmnjFxjLc6CWRRRCYiSkPyeBsmRfShjzCUMvK+eor28mRtyINEuublf2FVGlcdMqnT9lX1zmFPtEQh9MrKaTuYTEJE8zfh2Ijgf/wDtgZQQn2OAp067ymazPthF7M2IKjjAHEz65P1Vziax6nLZ++GQzDf+GrYgmWwOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5p5oQW1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5p5oQW1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2941C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754651993;
	bh=KgwX2/hCOmidPSm+hfmAhOiXfy7+CtNP7xPkN0iXhyU=;
	h=To:Subject:From:Date:From;
	b=J5p5oQW1SuUv5H3F9C6rWCdTPgdfqHc5OvkyNZwX94AUYdB97aUgh1AMuNdbPAQmF
	 AMQkqrbwVfP+KsCPsOfVyFBLXvQv4F/n0yKKL9fh0sjAsFME3ZYbNmTc3xVmWBvkgO
	 jFXP7l9ywn7XiEZer96Q+Ffr9JGVJzlFLNj+fGi76e4zjakKwvpBrmxwHgrseyoZK5
	 CK3ztPvIHRyzz58Irj70sqq48ZavznGyJVsL+hHaHiRyTbkPJlthKIb0CqOI8ioj92
	 gTxpsHiI2H2tha4XQJa89r1WmNW20WfITBSsuO1OZpg9nGzT8FMPwN9ls5kvO/gD2Y
	 kugBxrhimRT4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91665C87FD2
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175465199357.10161.13986972055523989109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bfe49c4f2859590c84c327a22415eae7c97b0eb2a699b66f9e5bd948c2145fa
Date: Fri, 08 Aug 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754651993
