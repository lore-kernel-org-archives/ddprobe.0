Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3522C271456
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752565794; cv=none; b=czSBErPwmp6AL1vaCITIwP/a+OBfKcg7SWPGDJtQfkQRD3uKNPwpYa59KEDNvBf88/gesQsjy6qdnnU5Hfe9CY06BjfN3bZpEwIPr4S2FBsiJti5F8YnAqHOwS9j2debLDAnrCwFy80tnAeEcG9tYboJ/GrsDMVI0LFSfPMqdbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752565794; c=relaxed/simple;
	bh=uaGPF8KBT1X/1T3oEoNmEQzWhWcgPw9zkTP0DI34IaQ=;
	h=To:Subject:From:Message-Id:Date; b=N2xmuuQxwITbNLqO5VM6dB39p36zxGbo7La6t8oL018gs4RI9RKLk76le/sSXTpL+iA8+S3WXbbKWiAIG71rEfbZtgrbQ0I7lHNjEXQOWzA1uwH50SLrQOGp35d9+CsrRBytpFpBGOkjHbhM3CiEPYlBPVnPDa21qwqcwh5UWCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=COm+x/iL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="COm+x/iL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74A3C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752565793;
	bh=uaGPF8KBT1X/1T3oEoNmEQzWhWcgPw9zkTP0DI34IaQ=;
	h=To:Subject:From:Date:From;
	b=COm+x/iLzINqEg4jVX23K7+M0xYU69L7R4+mk5dLTME4e5nLWVUJrvhwHeFsgsh0D
	 p6xC8Hgc0A/ihxcCLze9cHDNAzrrMbfJral05824vwG6zN2wfOhf+x8q7curuD8Pau
	 XPsthORbwLxin59WA0AHWXha0hQG5RhG3TCp/N7i5HM7Vhx6He9Dh09cK3fIZg1KTE
	 QseDb3BUvif0GBCHCBBdmLnWYUijVRZezXxeuxBSjsJD0/10iKGvWTuaDvr244eZM5
	 xoCvPAK3dHQY/Qt37isvzhGfrTX1/OeNlAk578QJLuFuLBBYJ+oKTJ0ci7QWWauIgZ
	 IoyYdibJXEWGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D4EC83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175256579360.22110.17226480587681872257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b594ecd32386cf9404fd1bf7e4f057ad30c571f86f2c84b088b1d76e78fc327
Date: Tue, 15 Jul 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752565793
