Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235561C28E
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727363754; cv=none; b=qamr5pBKC+ugmLMBWoW4y6mx/nsgvwVIq6eIRCXzd633OqxIinrJyHYkxjLvTr56CKI4okXFK7mMoxy9GA4CW2IBj46XjrNdgflz6dITc5HZcljCwDiEsjGSAjzpWuj/WSn0e2u/5LcD2/bB3rDkW7vRdArIiNZnfQ2q2hLa9Do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727363754; c=relaxed/simple;
	bh=8LivwAS19Y95ZtnY/9SNadwnD5Jb4NtD+lVpTp2OXsA=;
	h=To:Subject:From:Message-Id:Date; b=ZD067JOHoxZcC6s8mXSIK4GsA6q5qmCafRVQvvaokoAT9LtVJ9x5jROi+SDxEaWH0RCsSt5ycrxuf/IJzTfNyrgRizuxmFTgqpREh4BLN+5O8MCzBayw/qYYZMSA3sOGVPjARFDRKAwk4CnrNbZmqc5t5NaE0yNoRoKUmQK6Scc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ct8jXt4O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ct8jXt4O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1DCC4CEC6
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727363753;
	bh=8LivwAS19Y95ZtnY/9SNadwnD5Jb4NtD+lVpTp2OXsA=;
	h=To:Subject:From:Date:From;
	b=Ct8jXt4OQIusi5OtDIhuJCNbtSqchchKF8iFd+j/k0Swklp0KWbauzt/Cc9XeTnAJ
	 uSWpSNOyRZ9z2ck7Na1lCvGp8ygBFpB4Yt1QDI6oG5CJd0A/hJbSHaZQh8P9g4sFJb
	 6Ihie9u1gdrhNSkvd3Fqq9EbqmflPKFLrLKhnR0pVW5zdL7sBOMLAkCGQygaN6e+NP
	 EAXYGJahdVxTNynypf/YWillFL08hTwsPJsJ7veWA8DyNZhigz7i2g32JcSF7l677C
	 6UfbkVz0z5TyhAOsSVngau5uIfwEVel4xV5pNB7dnwx02dJbVVnxXFA5siSQGoXiU3
	 iq0yZ1y6nR+9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9601ECDE012
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172736375360.28226.6345403731616695243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90d244e6cc782ee60365915ed4a81b9cb8c56e6b5f6f5cf08a50bf3fe3cd1f10
Date: Thu, 26 Sep 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727363753
