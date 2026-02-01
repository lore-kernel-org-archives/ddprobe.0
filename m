Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263CF3EBF32
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769905434; cv=none; b=of13uOoT+dv47NpEFsyKu7XnMzildGqEwf151jCQ5ygzfBdzwUj92bP8T2VZ9SVn1hnolHjX1AI6Eo9aPYbGbI5iDXhlGdwXuwsRUiUmY2Oc0kZestu7QMGmdKFhRF2CPUa8lw18gXFOTNAiS/svdHX8fYIvaL5ZVU5Cmk0UgCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769905434; c=relaxed/simple;
	bh=dYIRlx/cwU+RHJe8QIFtYVaMUJHCKFb/PT6dbOxMDoU=;
	h=To:Subject:From:Message-Id:Date; b=LYed+Fd0u/GewXpipjBL5J6uBVoRCtVhX1B7idSW2f5tVf6/icmRb3nnb5OfWbRPpi8jfw749H3FGHm43GvtcGAJsNNn68swRLQxBuvBTPfsDgEVp1cGLrkL0JeAYZh/rXHQOVcrJeu5jSOsVwkFosttUUsMVdpEXjaRMXO3lYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cAlPDtgp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cAlPDtgp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22B3C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769905433;
	bh=dYIRlx/cwU+RHJe8QIFtYVaMUJHCKFb/PT6dbOxMDoU=;
	h=To:Subject:From:Date:From;
	b=cAlPDtgpe7glJkUsBP5voasDx29RHHAPWAwLgLgPjsqTgG+yd/wVlw/A6J/giS019
	 fVuCxX+dRPJ9cUbkArpZkkg0XpL4ZF08T0IF82t4KHT0g35WFTg3EEXbPz+kwTMSxZ
	 Iknah8ZsrpLYbfsMzlqR8Ecmq1bu9C+sdahRLX95jcwRNEDMrIVQyEZ8OVfo7XWK20
	 Ep+zFaVpR7RyFiIkKHm836y+F3PjwLSA6ZGkiekhfZ1gILCcTGFCcHqKsVRpeoI7Hj
	 AkvVcrM1KTDZuXgqlM8BtzxSOU02z5o7RlmNqylh/0/ag++q5dxGCcufMz6zk0Qs+f
	 mdYe+7RYC2v5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94132E7C6F9
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176990543357.20489.17051834523094437008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 851744bc048ec637b3bcf1681b95d66da28e373dc0df4044e9094e37b37b3660
Date: Sun, 01 Feb 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769905433
