Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D226F067
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 20:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715633543; cv=none; b=o164LAz8pHT/zo8f/r25KfuHcMJWIV4UzI01V2ffBLSL4hXWUwOcDs0dQdeApEwsMcUkMuvFAU0fHRmInm3QaMYaoyytjwaUxW1sH72GLQJ9YNrpL55pnvjgE48/ECUKKyDVBmD9oGeJa1moF1QaKwH1N4VclBXn9GXPjzjGgRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715633543; c=relaxed/simple;
	bh=COB03PvhFsK/MIr2556ENSV8/r4WkJX/RJ19I+dphcA=;
	h=To:Subject:From:Message-Id:Date; b=UPCF7wi0KAZyl1sCAnz2Hw6G1o9k2Ujacu8g1SHJG2534HUgwofmd8pkxfrwJE+J/wyl4G+HFVGw2QhuZK76EWLQTc5aPZBiZ0QzU1QI1qWHN3Eq1ImS49oPSQXKg7dSDeMj6RaLB6SKpef8O8Qb3irbj0v1sn39T1MqbMFW5hY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=brQFqJsV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="brQFqJsV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8A8C113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 20:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715633542;
	bh=COB03PvhFsK/MIr2556ENSV8/r4WkJX/RJ19I+dphcA=;
	h=To:Subject:From:Date:From;
	b=brQFqJsVEkVr5pTAJ5Yhp1TGZh+yE5ZqPMJpDubKWwu0urIx57Yom9C0/3AgoI8kI
	 airlEXr3k1T2YyZhyBbaSob+IeAS65rGHGRb0eN7vOXAC+FD1WedhUsmMW4hd1gVDy
	 /7wb6lurkwaIHujWL0PTiV87n2tHfW8jZx84PqFjXWzYGLvZdvy+RI08F7Lobmqmyv
	 TQR98XBXhog4ammBIr7I92rTPSagPoZobFCB5tqC641ZLAoAVj2sm/ltABAhJ6rFSp
	 FS4tMYY+sSGbDHyrCzmd0G/8N/pRsAyphHhz63nrgADsziECvVMOKf9wkxWRZMFbSu
	 PnG+shmZ+aCKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF015C25B75
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 20:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171563354277.25090.11130098608997783813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a00b2c7906c70888a7af06593a1d71f8d44dacac263349a5bb756248de8ed76
Date: Mon, 13 May 2024 20:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715633542
