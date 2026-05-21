Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62CA537E2EE
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 23:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779406954; cv=none; b=X8wGlIm7jMgtPfANx68KAE+Gn2VYudT+kDrN8BQk09/Lp5UIT3UnffgPzqYLf3bMeazl6ByHlSU4zYP1LPQwy6vW9g1i+ESEu+tV0MB4dJCXrV0jxXJCqlha4d1T1AJUXQCdXrhGbHPvSo9+IRnMvsfFF8woLSlGh8gRJr7dZ64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779406954; c=relaxed/simple;
	bh=UFhknsuTzrRRhPI0sYYgIOEAv3doatyhOoBotoGaid8=;
	h=To:Subject:From:Message-Id:Date; b=upbAraLM2dR3y6T7/TdsT7y8Zz5+Rg03qjW2R2XUS+JSqMEsjNaZ52Zty1E5TF879BP0sUtOoWs1Xk2sPvW7a2h5tmM9XKWid38J13grkji+bqbQ4a0MW48G5chs766VbJAUIaRyhIHTj93uJE1n4YoUkZI8hQqc47Pd54GQXn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3lcluXR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3lcluXR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5992C2BCC4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 23:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779406953;
	bh=UFhknsuTzrRRhPI0sYYgIOEAv3doatyhOoBotoGaid8=;
	h=To:Subject:From:Date:From;
	b=q3lcluXRrbfVz+CBOGcfkhBG1GiXKtTVq9DmWfT7gbnFmPqBkAV8AtJZefPMvKuB8
	 0YTWoJHDr+07KYoQObXLPLopYiWNWSv8+iqEkiAgTV+9h83CRZ+DwRRHBwCHw8duZ5
	 N48ZQBMzWRnBmS9g1GMkmuc+R6RNAVMBNHIIoDWU1znscB3N3Pvy6xmnyllUOxwjTA
	 cmR4+nYbDWjFrUqsy1rlfmG73UnnXe9aFsB7KV1+QrO1TpjH3WdlSNgYdfGKQlTgLG
	 coW0kQG1Zkajzt8g5OkPBi37WyiTGmog72HLwvDtNOdXkX+kDd6UCV7J757WSVbhkc
	 Knjo2OE4eCoUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD652CD5BAB
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 23:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177940695370.31442.13003932720408577604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf724266b44aafb143b9147095cf5b2aa5383e74d7f4048e296e372ec38090f
Date: Thu, 21 May 2026 23:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779406953
