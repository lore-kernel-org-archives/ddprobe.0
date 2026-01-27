Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111802264AB
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769493234; cv=none; b=CyssaxJjn340HXCOlydCMM7o7hXLLaI7j8Vm/+I/d7SRB21S2P3+IsDzldvfOxdSZWKnltx9ypD64lJ8+TyIt4FYb60IapYAaFvJlwKyKze6DG7zBC7GBnOkgTlBB3Ue+O79giQLhsUfcrvB54JyYMj/telIRPmmrbuFLqvmYB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769493234; c=relaxed/simple;
	bh=qhW6RBm9E1AWzF1/enlp0h+d8CfZ1MvqAuVA/xVu5Uw=;
	h=To:Subject:From:Message-Id:Date; b=PWIIeHAvstSEhPqPV+UKY6BV3jpXgb/MCSF3tfn3PgTfGTBL6GSE5ZQ+e3WHAWXZwODn1fmL1cbkO5gCXRh45eORTWH6OkbjNcu80W4HLbMfC8eJ8cslLOZdnQBs0swRx/CLTcAiKy4/eiKTt7X/oa3PPk552F4KX1Qyt8Lz/+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qtBMMw4W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qtBMMw4W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A211CC116D0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769493233;
	bh=qhW6RBm9E1AWzF1/enlp0h+d8CfZ1MvqAuVA/xVu5Uw=;
	h=To:Subject:From:Date:From;
	b=qtBMMw4W7WC2axba+zdWkxS4cDpM0JBgIAt+m/CSzc50pzzEeRHtTIweFChaZD7qd
	 7KujCa7dkqu7cVi89G6iD+xb5yZLucCtW3cDyP5rzAJflHVKVTBMVTIst4eAbnYWXV
	 KYAvic1fzyCU8bHV4UWmeexE0nsqaxwg49sOAjXDxRvWJ5Plo75Qzd+BMpL6sSlcw2
	 +N/A0nU468Rqk41QkzQbIRLMiCJqBGGDd3uZYqR7nyb1jYfae6l8pRTXqvUsl9HRYt
	 OVibdEA+2f6CTvxlnRpRDt2U2x/+uWs26j0R0lQrDH1IqJgq+lSdYYEffWKraIy5A2
	 Jk4wrp/dPBnMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9097ED25942
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176949323358.32125.6858136469445857879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e9aa1a46f18a7c3ba548f10c814c252e57c4b17ac9a26eb5c418e0d2b4e7680
Date: Tue, 27 Jan 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769493233
