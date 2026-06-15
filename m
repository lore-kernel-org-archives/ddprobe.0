Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D0438BF75
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 21:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781558794; cv=none; b=rW7lpcX+MvRfQKdfdgyuI4vftP0J9vcT+YjWBy5Qi5oauSpteltYor76pJdIvSONIsfSV8W93HobSHigtRVpSQiXTCp7hRNaqNezgRvYialRlZxrDpvseUvOvdzXNMcaz87X2Ct5NtDZFGUgsCTzPSFW6jZXV+I25PQ5WBZFJOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781558794; c=relaxed/simple;
	bh=LZBvJGxZOdHYmnDHpBazT3dT9trEuHfI3moe8qa5e5M=;
	h=To:Subject:From:Message-Id:Date; b=GZOCX0BFbaOtGRCs1vNgb0p/9esAmbhLEeUbEwK/Vu1zYTh+T2e42Z8TXGenNQ1jBDnpWSg7MLzSLluPoApZS8GiO3iZzZ02fwkzhrC1Szx00/jdmMj4KigUcERB+BCwnLV3YKzMontTiMLNiV85zN1FGXKB5YPXK0n1OzU3OiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t6EGK3YS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t6EGK3YS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D980AC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 21:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781558793;
	bh=LZBvJGxZOdHYmnDHpBazT3dT9trEuHfI3moe8qa5e5M=;
	h=To:Subject:From:Date:From;
	b=t6EGK3YSyhLrnvYeMEI+rfddPF3ZStvnq3HdIE7ziaTiatjAoymwzoC84rN+0kCBF
	 YwnQMz5rzY0MQCRakdM2M/iwJwtF1cP9Av316rmiXaEiCmKuwpZKCyvg66ybROMw4B
	 RHulqPVnW9vv28br4+TzJjftQd1II8zbEPRF3JL98VOOEa2Gr9jSGjYfrVtp6KZNt3
	 0n9Ta5ONbwW1Oxj/oWY9tQkymw7YT2JkmoTmvEVx3Wb8DLgxoYpPOiADVqUFPMgd56
	 L1cj+jQo3S17c2qAXdaa2HMXCyctfcOFCehYNzU97tDqE+sFEl81QmfmgqXfp1qibT
	 W/urs5BtFIsHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B80CECD98CE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 21:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178155879370.23484.3612533044170795373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2edcb3b0ce0645490f6b98932baa2c2c7bb9f9d9123bc535ba22c09acd4d830
Date: Mon, 15 Jun 2026 21:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781558793
