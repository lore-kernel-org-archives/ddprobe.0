Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E5A240611
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 06:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777442854; cv=none; b=sgF5Df8BC9/nreOlvNtgrjHn9BgCcOhrl0v7+QMkRq7CgcKr5Qwlxul7sBzlexJ9coaG96NUn0uT/dH+K115Us5wNrBsfNIw6q93dMh2H2But6Bf3pja4nbmKP4xg3+StYWmCCVX7fNQBj3vSfYgqJ6ObirVkrYLlrMQfm63H9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777442854; c=relaxed/simple;
	bh=TrEco5BruXoxZtsTCYlZntywehEXbNRNIEMMszpY8C0=;
	h=To:Subject:From:Message-Id:Date; b=R7jiE6qr1oGwssJda+PoWYpMzbR2cCgBVwm2MqDhcbruIv0eBcMxfGOcG3W30POkP/pzMTBkk0ck7ZBgGkKaWA0YpObZBWzmGrPTZy5Nvb43gz0DmDHpfXezxECrhETHwtEPxPL1nkeK7B1gKASbSD3ZjURRx1CMgISOpdSUCow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=stAYBl4E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stAYBl4E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7418C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 06:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777442853;
	bh=TrEco5BruXoxZtsTCYlZntywehEXbNRNIEMMszpY8C0=;
	h=To:Subject:From:Date:From;
	b=stAYBl4E2OYk41Lo1whY06U/i82PUak+Y5iuOOKCHRM+DJIIPNlk4iDa+tiOLMM4j
	 hN8oExEHQ9UB+XG7n7BHCZK7iBDyO6W0xAO5/8eREANqPaU/1tksrvqo1LPmRK+CdA
	 UOdXnl+M/b7OtXggyT0GxufK/FxezbHaE2s9lMy6mBXGQtbcFLs55on4dLTjJnjltg
	 tPnGvkCh8GkU+30YKVsskrGQrRVZfT/YMqKlTJUqKjVmjXzYVncBFrB92ud8BKdtz6
	 njKAKylNMkiQ3I0840ABeFdC7Degwpc02C/wXcfRfSYVA8/7ZZ+E4aRFTHlFSmc2ND
	 Q1wkm6yD5ihaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9671FF8864
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 06:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177744285368.23604.13144961909527451654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 677caa8d11cffa619e2573d0689d8e36ab9d007e68d71f03fb9070d1a90e8178
Date: Wed, 29 Apr 2026 06:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777442853
