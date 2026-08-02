Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7244D184
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785644434; cv=none; b=nQQ9AozOrQeW4SZ1VvFJZRhP+1ynkjjwazYoZvKJOqTVOH02BToobUTnKc3SI8ppWBpl9yvMjcbyYC4EA9fiyi9obHlKHTeiL6Y1JC9fFe8k7hNRy1PgLawvxYy1Hbs+wqcoMiF8KOeV8CHTgGrLvgBb0JmndagJM1x8HOCoCBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785644434; c=relaxed/simple;
	bh=Z5QeVGcl93bIzR5rhCpCoYOoinnvqaPHP3ReAjDz6Xo=;
	h=To:Subject:From:Message-Id:Date; b=ORpl9/W9Kk+oabRkpYvmHIV+L8T3kF/jCf72HcBIzzgTwFQ2Aix1AFwmFJORiM3iOBrzyOz16JR7mElb1SeC4pR2FVSRT0bG1cinFpjAlLg+iomftIoZgy9gxApjZOKEArQ+9h8J2CUpvXmtUju7tv7fQy/5miRPjxOMadbiaLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEJNeAcS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEJNeAcS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5D0C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785644433;
	bh=Z5QeVGcl93bIzR5rhCpCoYOoinnvqaPHP3ReAjDz6Xo=;
	h=To:Subject:From:Date:From;
	b=XEJNeAcSx+CHh34bYbTo4EsbXp1LqC2IohZY76QywflSIYCbAFomwAjI3m+LbJhn5
	 KbwAsNiMdfYOv+joLAz1NQNqAmywNkjhsFoKynDeN4GpV7V9hKFptoL1WZ4I6cCIxc
	 91loHHVaKCA1ln90bRIRHVlIwV1U4nu6Nqof6HJfYzNhoEjxWd0KPQ+z2TZnyoCNlp
	 vLvETPgYbMn3jWWELBeCFAIDOXUFOL5Mdr28kknyzhoxD685tdQuUD1xTwEc8zzYPh
	 gGKvXtbp7NR2UVZ4E6JtmhvlaHtJHOAd9HeDavdcURR2pFguVJO+aYEMDAQ+oue0m5
	 Pe9hy8UiKKZ6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B659FC55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178564443370.8277.15482892667678710625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c52316a215dedeb1b2079a44470c260af7043abcb1a286f30839cfefd072163c
Date: Sun, 02 Aug 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785644433
