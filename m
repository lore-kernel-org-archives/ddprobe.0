Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDFDD29A9FE
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768117434; cv=none; b=fDYXWy+ghU3AiM6WZ+D6UHqmc5Frc2HJxusvo6wbrX2lfCAOHfLoK2dWOWDnQFT+TldJ/CMomhThpfPFKM5mucbQfNtLt3gQXdNZD+NI0Su+D3pdOTwcdB09zbng+4F384r9hMLp0rtke3BB//lqbvQi0gmb4inAiI/ecETQpGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768117434; c=relaxed/simple;
	bh=F/Jxsn2uMyt7RBLQVzFEnG352a7Yh9O8N/lwd50+Gic=;
	h=To:Subject:From:Message-Id:Date; b=Zy9WJDrh/jNU+WaDZbU/j3FnV5pYnU1fMyyldiWAic9Eikg2K6Wci2Xv6uCd6SQoMMDQlhJdtMlU09k08wbKaYwf2vYOcJinUhFZqsRyTyROcnU4uJr40HkzwwFei/YzUlAO4ipRbnmJjoWwcl6XoCAK0cNQpVO52UDGmDHMHhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DM6tM9E4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DM6tM9E4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6145C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768117433;
	bh=F/Jxsn2uMyt7RBLQVzFEnG352a7Yh9O8N/lwd50+Gic=;
	h=To:Subject:From:Date:From;
	b=DM6tM9E4g9WDkyHCA0nhEvQbLwrVsKpVyVl7TOtkWv1ztgXFjyCTpz+XGdGamehEb
	 MEjUUsVlUv9pPVB7V5KiypQvFVm3fG/cTscs9C1xgGVpwIC0kMFQ88ZxTvq0ylw22Z
	 mBEpSuZdMmD7JrWj/h8if9VEguZzRyXBuGDQwLv2A8U5BPTTPyrL0+EsLV1fpIyM1m
	 cJ6BqPjs4yGPOeBB4H/4SSl7bxKJSyE3Tn6WkeiJeD/VQoqMFdHYVrG5APM6KPN97z
	 PuyPMIH5KmecSy4q3SV3bZrz/NXdFEGrqTmi1ysvJa0PUl2FhmrytaZ6dXnW0Frabq
	 WQGAQyxgsCQew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9441FD2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176811743357.10227.6157071059113899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53e28da23ee45989e70c773936937e695cba0f4be432d8433c245a3eb4254307
Date: Sun, 11 Jan 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768117433
