Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1239AEACD
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 23:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765062174; cv=none; b=t+NhQpO3yY8xg29XLRwL4p7/I17kMSl4k/l2sMDGgdQ2ivltmycbVdDnJSlSEvPMjEIjjB1Mp2WEpC2cBzzlq3PBLAz6wg5r4gi0C+08ZI1XzDAKSnk4gBomZF4K4hrFnigZRpDPAFN90nKP6P4pjTA00ggh//PUFe04XAlEUs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765062174; c=relaxed/simple;
	bh=R3MNrMS4kHTVedO4Ev2epBuoZ+BHIPbS+xn8jRvRw6I=;
	h=To:Subject:From:Message-Id:Date; b=HLbvspnh+80JVB30NMNZLWYjxCLS5CAbE/6s8q38ctlJCWkiYe6TCRpB9UC1e5FFg2XI4kMTdCdkxWQnduTnaMyAR0BTT1llN0vX/LcjUMJOtswR4Sac8BSkhdbTJVpdVutDkDeLI0SKbxawhaOrLvi+kPVEuBmIfDt9RNllXL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RxSgrmOv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RxSgrmOv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA619C116D0
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 23:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765062173;
	bh=R3MNrMS4kHTVedO4Ev2epBuoZ+BHIPbS+xn8jRvRw6I=;
	h=To:Subject:From:Date:From;
	b=RxSgrmOvvRImwQOA3Om+Y3xaw/Q6rHUSbRC2jagHHtbuCJNE9NFn0H+dKcS7pucnG
	 zOhpLyMJBV8oR8xbEXjK1QwJkc4V+aFU/C5uEXH5LXzLG61cEqglWpy1DPszbQ3qYn
	 IRFUtW4f72oTV8+IdR4D1cRvGT32sTSUeTJDK8Z9xo/0AaEzpvg68/BKAtu9JsvvHk
	 6zq0J2wyLAYoQiukkOCdYHgrHCDE5Hw2+nXhN8VybnqJy7nmksatWFsUab4wLEuEEs
	 Alt3SngJsCgx62nYPCIpq7PN64MkV36DfFj22MIMGtppupepvDZrGccNbExDbi6ah6
	 2jpBfB203xbow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CB4D3B7E1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 23:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176506217360.4064.11160182439341835558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed2eadbcb01539b2fb37d44d95a66856a7b6842311e883c136c6ac18ef75318a
Date: Sat, 06 Dec 2025 23:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765062173
