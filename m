Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0CB1F790F
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748345994; cv=none; b=OYalkEqVGpraioZRaj5gQiUmx7rd4HQH370CdrpBZOIRsoS3doUa8li/mMBAa1trqpy3LFogs2LRazHNjqjPESn7+mOmFOQ4qaXs/nEamhVxbBNWKw9c1Jn+zgh28xIkRuehJJtD+nNPPtVPChx6IM5N5oH4SAw3hRHw/47rd7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748345994; c=relaxed/simple;
	bh=rzj173/FYZWkYRxm/H6wp2l0LHSoFVL3cbtidK5RfKQ=;
	h=To:Subject:From:Message-Id:Date; b=pEm85pR4duufszxuZL1zQeM1yr/WnyInLDr9mAeONzxGtjCl/IlUwYunNk6wOhbFc/nmvisSZ7KYWwFzBg0DpKi+gfV4lJCqXPELGhYD5t8cOuBeEfzpTPu5SREpYtfCDHL4PuZQEaKndtrwhRx7zYMsyCpFo01AcoD9U2AU+Dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aeWlxYK+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aeWlxYK+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0331C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748345993;
	bh=rzj173/FYZWkYRxm/H6wp2l0LHSoFVL3cbtidK5RfKQ=;
	h=To:Subject:From:Date:From;
	b=aeWlxYK+SL20SrsuOcPcibSv4/Yx3b8j3YStJQ3uZh3LP8JVIGC0U2oizcKorcsJB
	 UaU1E1BjflPSVJJuUoE34QafQOueenyB9HmjSQosHA5qm/7dE33byI1b5RjyoNygcR
	 X9vd3olU+9R1mqerI6OOuC+cxK8jONrb4CCdJ4MBSGFIYzULZ/s9fdR6ow8V8pGCsl
	 1NaUvCFMhgjM6FJ6sruGkXJKxkY2PWc5bPfWEiJmvu7INUP4no3rZQXnXRwrazfnl+
	 2EZTyf4IqMZUoSwBCA4+RmB4OqV0+JwNvOkdm0ZzamgQQ6rzWQIBjXlMaQtVNpiUSs
	 nk8y3VlUP7syQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908DAC54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174834599358.15948.8894888802392710987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1e1ef82f5414cb7b4b6edb5ce698acc1bf709d8b200514bf73c2cb2e07b6e93
Date: Tue, 27 May 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748345993
