Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8622FF170
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767082434; cv=none; b=tuWxpHTF9z3dg249kYEc0klj/CFY1STK8yieZSwN8JRe45fQvyU5Lyz91VQIqThUw/sUbgPL20ko4wnqKsVdLtgZFC7dGkdwEu39d8q8TyUWVRoErYgHoRmJIVIe4E+34A4vxCQ+hoHGIGjyua7SZeNLA+Y0bwOD0CsvinawGNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767082434; c=relaxed/simple;
	bh=sMcGwDWtfpJCDdomdkzElaMXVKIW1enAtd0sHWvPL88=;
	h=To:Subject:From:Message-Id:Date; b=iBxiAgM3ZGx6uTTMqh6HnSX3bus+YS3mimH0cqA7GtMUv5nNbmUvBsr15VdvxnHjdi6EgNMvs9eO2ynWJztY8mgbJd5gvmJCKpXkI4hBaZ52ZRNzLfztQ/XKOkAZdbnNa/GTW5OvZ4hC0TEdYTOcknH+A4UZWuDTWGKyitDQYMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uzC/7NOW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uzC/7NOW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A127DC116C6
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767082433;
	bh=sMcGwDWtfpJCDdomdkzElaMXVKIW1enAtd0sHWvPL88=;
	h=To:Subject:From:Date:From;
	b=uzC/7NOWODWnCoQt/xHNDIKnUff5p7dFpJ7NJNChNRAhhqbldHvG9NXFv7lztv1H4
	 dkbm7/7VYDpbdJGvCxHW5h4N34c8awC1w7W6Q39hT4l8u4hv0kCpBJq05rApehS+b0
	 aCZ0lbAJR+JDMkFwe4IKUG2TRxvNuiXJWwnDllqP/fAwmxkU5dO4UK9t7u2fttmvMu
	 pfXZLgVZa714LpyjnW4r8Aq5G6aQMS0ILLQpj9F9KGbfR5SvJ82ZC3KMqrhCUH/AvE
	 yq2T7w4BRSvBIFNR8Bwdl2oYtNsdNzTxcEbtaaXqmfvyPMax9F4SbAZPX3s9Q/2ykw
	 xoPT++sVkh0Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CB5E94120
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176708243358.15145.12232536317098368621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 306c0673d396e8c7347a75cfbb7af91d443505d15fa944d2f5184d20fb22194f
Date: Tue, 30 Dec 2025 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767082433
