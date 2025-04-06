Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F5961805E
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743934794; cv=none; b=ZKKa+xw8wArlfE2Egz6KNZTBPmmoeZPQUFIBQPPCg9oU7XGo3F9pHEJ8yQPAx+WCQTYJqfQ9lGoQDi0tEfrh/0ZcdhnrtlkqwOIiJXaYY4XkiqH4iPSVpIc5UD8gEfrRRVTuDlajaeMJM8TOAatW322OP3IeB5bO1TWeXE1wPQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743934794; c=relaxed/simple;
	bh=8XpJsEP1yjmpySXWXXmI4QG6ye/3hj+hzgBRxvApHRs=;
	h=To:Subject:From:Message-Id:Date; b=NG29koFiPStQRY0DWA9ls2xvzrll5C6wGAasciDf8VtPm8dCidPSSidyq6alZaY+1UsR7regySG+fTpzYUYE1Y+WZghYFhLc6V3/RQGhZyPEl92TEQzKjtY0c3dDH0KzsFdx4N+GdgBjnZbu6thf6zoXk/0ylnWOm/fuOMYTwDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SfaFWPw/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SfaFWPw/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B30C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743934793;
	bh=8XpJsEP1yjmpySXWXXmI4QG6ye/3hj+hzgBRxvApHRs=;
	h=To:Subject:From:Date:From;
	b=SfaFWPw/nmc8eiVyiFKdU4aGim9piVQHALxIcW6vUTqLLzoVInESshCsmgCINMvEY
	 tvlNR7wgQXCS1dagxqd8l2w7vMFgZR1WjbJkUjMlixBtyea2SL34gqmrPfKm1N/GNt
	 KjZl4ZpTFeXo0wDl+jA8d1ZsnwoteruBUxcpw10jNIehh5rq4E+ZLPQAsArqhfJIo8
	 2BqlATzIc3dNu/GqWAL+Hg2+heO4qPDTykk+O58KvvG4xL4xP/n166ElPDOheRx3s0
	 deTZZ5T52+kjXSpvD1blX/87XIcBc5ygcUq1YLTdyu49OOvnGw4/q01xXTjKfQ+98A
	 MJBhdgTmUOWyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA5EC3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174393479362.18845.17960767751483180319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e74190c4fec690f2aa23da02170028728a64604b92a7fd3c1a77974dc85a5280
Date: Sun, 06 Apr 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743934793
