Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2249F31D388
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757451594; cv=none; b=ZdkmHZTEwGUeB739rshIMtTQxGMyT2PESiqWco/D85dtzFkYzfVVv12N6APVoP0NkbnvfosTBDn12JQXZn5Pj6z9i0tGGflIS64qXZMV/pmbQhH+RUHW+E0ny9JazvoqvNLMf/AobWxGkSyW5NqIYd/gNxTuendAO8/Km81torU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757451594; c=relaxed/simple;
	bh=GUX44A00f1N/RoFdlaoQ78roaNg3gutprxlFY11yh6Q=;
	h=To:Subject:From:Message-Id:Date; b=aET2Bd36rfhypuYKlDTHNi9UDz7AHC2M+gguMFUylHxXReLRoSHXBZFYd6q2kmAoxSNKHxUiftzfHpSZPGSKJCyfzW1KqYNjSByk2G7b0TPrrf5PCLneGAtljUpA51hveJD64MFziqDMrpP9WTOdgpr1FI9QrbmgoYZmXcvaVr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mna84MNh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mna84MNh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF2CC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757451593;
	bh=GUX44A00f1N/RoFdlaoQ78roaNg3gutprxlFY11yh6Q=;
	h=To:Subject:From:Date:From;
	b=mna84MNhQwYbzEI3OZmTRSolaZvuFd/CGhc0H/X/KhXePKOaMyKAFqEaASLdxlbCB
	 Ah78xxTXgF3iEg7voUIxbufUEon9ZLYT1FyBztMnP3vPnecxuevXAelc6bVVm2imQD
	 cNyhpO7hUPo5mGiue20AMXJS5LnxvkP8Q60X6f8DMey2uNgRXabufmOqa8nMh1tG5r
	 SILBdYtVYYTG+QNDQMvXR6L5/uuSSUqiB8Os28SUKDczWL/1q60GNtKRzNX+eC5ZI3
	 CjW0jBFMKFPd6TX/pTgDd6YzWR1GGRcpgyJCjsutvIlxeOKpRvaYEB6oB2BcDdL1M+
	 c6/Rbf3RdvqZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F212CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175745159357.4430.4727792719011458695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94ccaa1d9f812ecaefc1a65f6a575ffcf0553c294c63889a81e3545694d1a5d1
Date: Tue, 09 Sep 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757451593
