Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C616921A449
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 08:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763887313; cv=none; b=DzKNF9Ib6RfkoVyBHfnOeM9eM58pZHkUq4Aa8qpDuG4QoOxAYNePihCNApR15jpCA8DPC62uodSFXXZMJaG+4qG3gUroH1ondFP6a68+jVyz88z4jo/oUwrY2TCcxEEn6xqrrN2BUpKFS1MMCNWUY7Ouia15ATqxF0907fpzTdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763887313; c=relaxed/simple;
	bh=mM3XF0CZfmwX7LtEKtAo85hVycIWKbI9hS1SrhrviKg=;
	h=To:Subject:From:Message-Id:Date; b=n+PweZ3eHoTaGo4iPh4dA6VjHkBy6TWFLCBcfKsFc72T9LfZkJHp9GEOPmEpDdATy1iduhEdYAXncllrb+y3k63eWomxvIokQD1QxMWEMFx00S+0UN2pjPNSLphi27K/v2/An+5ccmHKN0vXQr5d7S/I6UYsdYdMO4KWMAegT5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BthnMY8e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BthnMY8e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25B3C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 08:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763887313;
	bh=mM3XF0CZfmwX7LtEKtAo85hVycIWKbI9hS1SrhrviKg=;
	h=To:Subject:From:Date:From;
	b=BthnMY8eWQxcon+L2jnqmATcvDqeO2s392e+UsWNZQiz0xY45jNlzx/dOEN+a7bnE
	 /Q67247K3yEMvWYrQae4bnHTDp0996QRc7Yz6eCsr4Js9QNqd4csq56jKtjJr0SIDp
	 PSM+8Djvkvfk+SeHAi7xRtpvXqpYighGIgVFWVmfjnTzArkn5uIz0rCa772B7dNs0x
	 0vyuyblVlvieBOOO5zyS7rhQf+tiQ3yWAZTeL1pZ9N01dRhboV1ZPMSuqCGOG98eQR
	 a3ZQ01uvk6zXH/ifSh1FBv7GOs3GaG9SICRoxRzSDG8L8CP+etQgkO6AFZkFI9Xfi7
	 bwFkfjyRFvquA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939B2CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 08:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176388731359.30109.12670330385728907960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07a72b90ab28a57f36c813f662aebbf07f7710e27a930c59d79f50a7c79d7ddb
Date: Sun, 23 Nov 2025 08:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763887313
