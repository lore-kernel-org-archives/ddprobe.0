Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5108A1DFFB
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 09:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784020714; cv=none; b=WRRYSMa2k9xdqDbN6BhzZVLdcOMNHGyRGlE5Lj/OcjJXOxFYESpzuVXhFb/SmqT6bpNMtkdEvqxyvO6UCjUeTsqiSK9S55wLGQdEs4NwXDGSrDm3hlPLCrWCVy4HU03QNK247myOL2XpkGsmQ6h+hEJcL25jjPTuPCz6VjikOhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784020714; c=relaxed/simple;
	bh=aXa5/wTyrbwSKXqQ/eB1F6hSCyjdNWg24SPLSab0xcc=;
	h=To:Subject:From:Message-Id:Date; b=u9zp+p0dVDvjgXsjpC8YLl8lgiyN2eRrF80SkNvr4SS5BCp6fxddD+L/6ZV1WeFX6DjrOlWoO+pqCRjs5X9OVicQz9BqLgJSCri7dRU+GL80TbvU2Bwuxr0YUNVVsYOFsaJ9V4ZgeOPlPOZPOxhF15VfEWaV8LB1fzZ+gtGCNyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k6RdkE4Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k6RdkE4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B8EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 09:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784020713;
	bh=aXa5/wTyrbwSKXqQ/eB1F6hSCyjdNWg24SPLSab0xcc=;
	h=To:Subject:From:Date:From;
	b=k6RdkE4Y4AEmoYKkQGha7GjX/i0P4Gof1qUgjacr0D3XtKbcYotl/LTUxavmTI9oc
	 NGzPZIL6f5He2DPwI/yaFj+Ci7xbvD9z/5Ruzx9k92jKYRdLyHehx9O7OL7bFubg1Y
	 RxjKiWmKsoYNEbgg07vezX6wMlPc39QtTPhg/simsUpBDtZm3CvAhgqHybaT9y/oXQ
	 9YJhv9wIl5Xnfqx5O/0cYKO85ftLlaDCKdzj3ZiIrnoB4BNsXJXLsJgOb0jzCe+ptg
	 l4NF+B+aHkfwVVtIR9eGW/LLDs4KXKkPBLLcaqqFLEk9T6XaWhj2KrlKw5IqdsX8+i
	 23F9G4UCMMV2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD30C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 09:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178402071368.5313.12295560211627964987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84dbff75c90888baef16aeb09dcc73fe02f391cc5d9eaf349af1886dc3a20ec9
Date: Tue, 14 Jul 2026 09:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784020713
