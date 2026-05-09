Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 097D518A93F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 01:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778289454; cv=none; b=EgKDiYz6S7K/OZWbuPy5/Z4490eWjJBA1f8w+SePzCZon8ZDF3Uf4k+hWGyxpwVsxyuQ4MthVHS3DcsEzLa10l7eGmz3ZR2mK+p90gyZLM31pM57zip6z9DhlhmYkIiM9OggjwaVF6k+Vg5gZdTWAcuTYcQQxlIJj7mP5eAmYS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778289454; c=relaxed/simple;
	bh=uyHCQxnGH58jo5EMu2oE2v09roH/PVg7d0miEc7AOTM=;
	h=To:Subject:From:Message-Id:Date; b=CqpZDgxWOyQYHuanDppluzXcTFUp7HeQPuTYhCZGLqKv4qFvDDtJWTJ68qibjGDg2LEO9nMWVgHqY8sGAlXopVRRqDEfhpPZaIRDR77cHhGQxrVmFzgH875+chLctgfX8GLAMU8uWe/iylFS3eY83R3HwTX7C4vBW8jVDE7yFQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVc/Za6n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVc/Za6n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA079C2BCC9
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 01:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778289453;
	bh=uyHCQxnGH58jo5EMu2oE2v09roH/PVg7d0miEc7AOTM=;
	h=To:Subject:From:Date:From;
	b=HVc/Za6neQhulNznUKkQ/ba87+PZBS+mRpEORaoYHITaQwa2YZq7tjpsPWMkp50ZW
	 mE3xEqAux4IS9GU5Ax0NE2aBKWln/7QhrSQs36Ch5OR7axNMD7VrvQWm9JiFFDQUMU
	 Af++r9jp44PcoqOB7swQZMJ7fnC4FVJbbSXMBsKFQ7KiV4oExlAyU09YfslOHkrvRk
	 qBKtclnn1DOW7lFWmXayA+Cy4th/IEPXkV10ZHCR6TkFQTx272ycFnrCINwdbWaFRg
	 Nkw1vPQYeJNOQk9NY4hG6Pl+jlsCx29kx7cBZzLjhGDc3lgXj2532feFy0Mc+Hi/wM
	 K6UA5ORB5dMlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC026CD3445
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 01:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177828945369.12678.8974882175600805144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3065b4d5f2b0b0da9cb76771cf68ce3c0b6f906c50afff490cb58df13b90c80d
Date: Sat, 09 May 2026 01:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778289453
