Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13179313285
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772130894; cv=none; b=MAIf8Saz8qalcC7fsyvAsxR1jGv8mG1zSwE6OQvpQM4hkSZz1TqOwJk9uysjp3aRNtxhlkedbgr+yM60uty5tcdJTgyhNrg4AVWRhiSQFQDKQO697wBw54lAl43nRYJXTYC2X23d1F6XmPRWJuKSDp5hNAQc4guMwkL5iaQCelw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772130894; c=relaxed/simple;
	bh=WD+foxwDxVW+TrTSuoNPlyL1x1972HxqPROhH3tLKLw=;
	h=To:Subject:From:Message-Id:Date; b=e5OGWGXuknoX8AJxMW/YriNMgN49NGzhsRxad4GtNPxtXsDuwl1ApIfVl/vfS0rAlr6YveGomd0vNvQbnW5rkWTFd5iZIk0PpwzS5mRUsIQXzrZMawTYwRGN5NORmsAh/Nq8gVA62DgRdoGHK2OFX9834MWcZ+Ep0z5nYv1cmRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tsLqbQcc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tsLqbQcc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC554C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772130893;
	bh=WD+foxwDxVW+TrTSuoNPlyL1x1972HxqPROhH3tLKLw=;
	h=To:Subject:From:Date:From;
	b=tsLqbQcc2XlVjOPuSQKjwP3EbftZbKr0ZtM5+28NVzniIizBslSBysYjFvo5sPiKy
	 91NkGd9+PF/IEGHpSdmG1lvadd61PpuhMhZl1JJhSYfaEPNuok+H/+jbutVpSWFHeI
	 KRE28Q8Czi1Sa4ByXICypZ8Ef/Whj03AN/ThiGiTla8IgM5OSx4WnoNKRBdJYj0UMH
	 BJr4BEgMOqnsWToBQs89YYknXgFbP9fawnbcFWhjwaFANc0JfzYGjYd0/2MLKAsHjN
	 riQCpHZAaHHlX9dfcidJby1SYO5GixepLbAqWjK1w63Q1SgtugYu0Bqiij4O4DyGQ3
	 x9Xy7mOBh6YYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD25FD8FFA
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177213089360.7463.15640855420224849925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6181e734f1111d9bd04c2f8db8190c3e8b52866eb5c93a19ff307979a711bce
Date: Thu, 26 Feb 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772130893
