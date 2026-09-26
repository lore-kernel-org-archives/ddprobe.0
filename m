Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334ED256C87
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790453434; cv=none; b=gHi9dPrGwm7xm14mQsbE/4D6Bi4tQc1ZVVQBHts1MUTkTI880OUjw1B37bhI7Rs5bTd7CCReo2q5tMeo0NPL/1n8lHDF4czwruw58ZTbMcs9iS/Vbe3OQP/iBFoPf7g3YcvUSAGluJvtL1zT0cnMPRpuJ/Ro1lN93cuh1Oza1Jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790453434; c=relaxed/simple;
	bh=Yhc7a5pJSftggChexm9Cx6N+2BYe3xot/wmJ+TKYosA=;
	h=To:Subject:From:Message-Id:Date; b=bubwMZmdnxBCyybaNuzcrm9KhVU2nQ0Om/IPkhHxY+oOTTf4XPSYzTUDWf9JbkhAxKwHsh+iKW+prkXEzF8g3SundkugElqON/QdtSV8jclmmnIXzye6wZhRbtNwrl+lRRiMJBV2VuzWGYcKFDa3i0V+W5UJbYAmD5Xs94evHCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hjKeJwie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hjKeJwie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE6CDC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790453433;
	bh=Yhc7a5pJSftggChexm9Cx6N+2BYe3xot/wmJ+TKYosA=;
	h=To:Subject:From:Date:From;
	b=hjKeJwietWIEv9xOP8HRl8TmSse5Uk4/fvmR/r22m3LrkK2dQP2xPxnk112aTwhNZ
	 FPfejMuzrZsIvGlOsTRy88b+JCdTgnDmlYTpf2QMafj0clm4zTPC/ERQayz5MZ7clO
	 XLzf3pY5n4rPqOYtqiMZFHz7CsMhNjwN444dy4dK9dr14eKEf9LMfBVt+GIqg385hC
	 rZ6yzldQKybpA3/j1IP5lyKnaxb3jk/ijeaCRbtYwopQdDNPqz7G//5GPBMhnN45sg
	 VTU/UB1ZIDdoifiGb4GgIkKqIioz/960F5K/H9hPOUDvlgp+tTqlNrPSPppSRwHqCd
	 9u/RKi7lVJnTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB95C9832F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179045343369.13181.17113881761910794810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 822f366d3b1574f12dcb3e4d295167c63d5a5f6c99fa751d30e5c41251032fed
Date: Sat, 26 Sep 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790453433
