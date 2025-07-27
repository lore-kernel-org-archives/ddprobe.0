Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116E01E260A
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753639194; cv=none; b=KLfqrTW3oMZpyTMLv/SaNwXkwqRM/+zxj4V7yMz+4f6sG5fEaiyxMqED92am7DuleUJCBJ+U8xnWm+HIf+ooYTvIc/kw86Hn9KAej0553a9vc6zxIc8TPksdsIHglafK5fn3sisrTAymf9Swz6fjtHr7e/1tBp3/LK3Wr3MtrWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753639194; c=relaxed/simple;
	bh=sR3VkQubKZurejavGqt5uc42qASEr0wtTZ28UgeQM1k=;
	h=To:Subject:From:Message-Id:Date; b=T2MFHkhQUp1pQaNaI/IUlA4Dud2bAD9MpPgN3by9cKwX3LppMG/XOVUK60LiJQGKA+TYsbK9XQjydiNMdtm6/WgGEcUlHYToLcCjLJtK5I0PQiXyVyN99KOH1cYYzABlTf96qYNxMZnfHpMRX1HTHpUqm+dJ1E3/EYqlacm2t9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VL1b3BuB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VL1b3BuB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF8BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753639193;
	bh=sR3VkQubKZurejavGqt5uc42qASEr0wtTZ28UgeQM1k=;
	h=To:Subject:From:Date:From;
	b=VL1b3BuBg4nUALNBM1KbgP43ZYfJHz9mnxxsZAQ4EZSyL8phULBi5gs4syDm2+QlK
	 LW2U6MY6+y03fiQ9UHgNniAnSSBIMwkJvRZMB/di08INcdN/l3erEAu/szjDctSvto
	 FOBFs6XJ8vHAT0LUYh4UQlZG0Uh8Wx/uQZRbCAeP01M+R/VCSUZ7Ej0+feq8hjgYC+
	 oZ00PkwpHMNlxn0YKlQBq8I4+j+/f2eyw0M7piP1Yr4o9o0ymCRUhWiP5WN4loIBG7
	 Oq34PisXhV92mhlsFczpBqRfuXXJ4vd27TPFNOnVVx3Gm9Fb7Oy9AU4cWQO2q/P/fc
	 GRyzmwMFt8IAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E962C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175363919357.23186.5532832366957764460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6980e3a325ff071e0a130e6f1e77266a93d26506c26cd4bcbd742e2bb3948932
Date: Sun, 27 Jul 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753639193
