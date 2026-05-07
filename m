Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5AD332906
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 22:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778191654; cv=none; b=pak7Kjspynjig4Rk2IWWWn/Pu+jgRA9hQTANlj4ovKgSBvoWZeup9LNCB4y2+w6nqXyaG+H+r52XxqNL1eU6dOiaeZ5WA2Zc2i2qmesimd650yOCaCYqNTF6gwqgknXLPtbEddH9RZ8rgT0Mc5fMX2lFiaQMwAy4rGvxyYiWemU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778191654; c=relaxed/simple;
	bh=xePYIXO/oz8U3pmcUkXrUgD+iDGmoJYl8BGLSkIMthc=;
	h=To:Subject:From:Message-Id:Date; b=I8P1qOZ20XNCJTdAz6XbKE04Xq05+f5XfVkS128nk7VWJoE6veR56JJoYOSr7qkeb8Lr5PrStoW5yN4lfLe22GJaVMpZBH/R+w/ukfcCGZDYvWc/AJMoKS8pXsh3hzq1hnGHljrk2xoN7DXv/ZWfmt2SlNqpms53VeRalIobFbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QGDoglcQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QGDoglcQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF038C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 22:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778191653;
	bh=xePYIXO/oz8U3pmcUkXrUgD+iDGmoJYl8BGLSkIMthc=;
	h=To:Subject:From:Date:From;
	b=QGDoglcQ8bncrFd151UiPcgBT1PQ4ucicvDbafN65dKL8akHTyi2hE3mX4nDKAt+Q
	 BOIvWLbg0BRyhYSPHOunW5zV0cbBOvDf6ffM8pw93vIv5JpOzWmF7QfEem9PTJVqHr
	 qDo+jFESkdOpnoAUEqNrUe5EbyzieeUuKZ+mQIWakAmptfXEWGKRybyhxBb0jxaeJn
	 6o2NIF4HtaF7jCbl2JUXEpAWSkHqA+0mosSA7jNRkTR34mZaSrB0Mu4BAeSWVSHoTx
	 HSstaYGFp6HFJ+M7RXR7qhEWn0IMO1YYIdkRwfL+3BPyxf2TSvBZLlXcNeBotaJXHV
	 nWsrKPLn7PA1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF2FCD37AA
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 22:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177819165369.11982.6300779918848490629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40c289464a6776a16a42952f05c45136d460b5bd68392fe433e06c04229bc803
Date: Thu, 07 May 2026 22:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778191653
