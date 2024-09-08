Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7F6136663
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725837954; cv=none; b=TI7AxvZT4T1+mw9TjwcyMgQFvTXoHW/BGYY95bDEpwnk1OrI7aBwUOfq+117Gvaw82biC44zF1KfdNw5uRWQkj4GrnQZ45gFbHWuCtEpBOu7yft1ebkWORTJ01nxxK2i5jSsor369muqDfUhBKZn4jZ/Ue+8wRoWpx6eO/46H3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725837954; c=relaxed/simple;
	bh=YppSHgqkqhnvC8j+ux9uRHK/Ii0ekQGqjsluD9yBADw=;
	h=To:Subject:From:Message-Id:Date; b=Qr7pnop4LIYQDBXpUAiKUS30OFDHff1KPxhOaj4CT6GQZuFnHlzONoGBhxyuWqV+wNP2AEOmtkuE6P05l3/LLB09f98kemHBl3zV8VCcgd82o5B2jjo1TRsAXzLqAvna10Unj/4gXdD3TH5DeGnZrq0td05yTneO8xuDxSg14QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7DIgJOm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7DIgJOm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B216AC4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725837953;
	bh=YppSHgqkqhnvC8j+ux9uRHK/Ii0ekQGqjsluD9yBADw=;
	h=To:Subject:From:Date:From;
	b=t7DIgJOmuC2vy4ycpHhRmwzrg0IeYCCz994w9wu4ZkNQev7C2k9fuMK46OUkVxSYk
	 mo77tO+pcQ7BcGvCXLXcsw/kZwpkGTXT9mhzqzCNr5NtpcTaJ4oE1gdBPWYOmsIU7C
	 Zs1Z5HMLV/Yaw7qlmQd3/sh3+vwv1s7oVntCFtZbfWOIiImnCmIZRxLsEiRs8biKxH
	 Qr1HGAEcJHjA/+ttP68OgpycVGwrEpm27TC/87mGbO0gsFSbK422H/xG2yurMbUqoz
	 iEHrgsqdp83NJuuB3FOfzKe3sZwwL1mRUp71LKrS9lf60Sx+nJt9L+VCPulC5zOQyK
	 nMwLWHs69CDeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D85ECE577
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172583795359.24863.13130024025799638308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e051f9cb9649e0a36a2aa9b2dce4e7999d48b8b7e53afcb7495da4fea633ce2f
Date: Sun, 08 Sep 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725837953
