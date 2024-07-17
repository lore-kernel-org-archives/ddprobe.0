Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F9817F378
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 12:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721219123; cv=none; b=Ws/ybd2FuchYpOZ5EJ5VCgDLMKWh2GKFyZqhHYKs5K14XQEAXdeJnoSuz106zW1eS9RB1De2oJpZeEpArZnXWnoB898HqIJ2xSEHM/GYuKcAhs7yOtTp36ImHOpUL5K7mvzNm1x+1wo2mMci2jYe+P0CTFL4SVccMYSviAkT4lQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721219123; c=relaxed/simple;
	bh=nPQc/i05+5oDxwPHcWxEam5G5Qqdm0EXbiM+/WKpflM=;
	h=To:Subject:From:Message-Id:Date; b=up39hR5ci/YXdBk4h0CT1+TkRn5CvxpzNv45Zkhv0XTttEZy3HDLJHjYvTBMwMVo3DlsOyLtBxePDgc6A+gam9Qsv9jcql7opbEheh2Wc9OJCw39HdQ1MyRXsDQRW4i+NNPSTnkzCHKzDJ171mDVZsUg6q9zxgBULAcP+rpUPPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jmeWhnLS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jmeWhnLS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE61C32782
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 12:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721219122;
	bh=nPQc/i05+5oDxwPHcWxEam5G5Qqdm0EXbiM+/WKpflM=;
	h=To:Subject:From:Date:From;
	b=jmeWhnLSOJOjLV075Q7vmMgzHhWuzRgnvPa/Tyd7wzKZZmpmAk34hLNvbdvboyDg+
	 WEVjxgax8F1CBKv1Cc/ssujfFXbUvpgn3p8+Fmhg7EsHTtE8Ph27TcYBXamsp41Fue
	 3dLAeeAz67/P5vJOtuGa59GaWI1ZLYoxf65+XrRFtDnHbm1uX6DM8wfNtPLk3dspkQ
	 ktW562GNtDz3Js3AZub8DCsUGIeheZgAUN8P8T9PMzgOg59moF/BmNOk+KBjDJNOZW
	 P8+cyfzNNiZd4zECTjP0CdcE7WZhn9/L4KSZ6CC8CbbRaX9fgmTfAVVoYfKsEcpXUb
	 9T2yjPg9keX7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD251C3DA4B
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 12:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172121912282.2433.10050545446155653945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d41465e5103c5b3050afe33908b3530d55ab2e38b9620dd0651011679a63fe55
Date: Wed, 17 Jul 2024 12:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721219122
