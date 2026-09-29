Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184C52236FA
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790645434; cv=none; b=fFJ6CQxNH4d8qx6rQlc3sU35q6n68LXEjsyK/4to1B7vExih0/XmlpDO0L3ZPS3w0LW39G858WYI7lIPWQtLzOOSBm38ObiXUZXlVGo3tMs6Oa8yku0bmiUgaxzbMHpL69iu/jLLNmqnctOyV1dqJjtCFnwxOX3+qYCSeEoPfNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790645434; c=relaxed/simple;
	bh=iybtnTAbTkNcwKjKRDmEab6GV538qfDG8YR6SsPLLbk=;
	h=To:Subject:From:Message-Id:Date; b=db/WSBfBZex1TDGX0Qgo8h9weQUQNvf8UygYetLgH807Lfi4F9TqdOkD4++TYL6UWqz6bqquhm0QzsBRb20R8oF+uT6NgGjIWlS6m1FLJD6ST3HW7hHouPzSvDV6CDrL9HF6nu8QmAxAjqFwIsApGxlm02QHVc5h95odmTGnfS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XaBhBoZM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XaBhBoZM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4F9C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790645433;
	bh=iybtnTAbTkNcwKjKRDmEab6GV538qfDG8YR6SsPLLbk=;
	h=To:Subject:From:Date:From;
	b=XaBhBoZMe7l2U4EXz3Oes2ZUgYubF1KxNKUAqov8EKxW2PPD2c07i5GeckEQx2r+E
	 KsiERFQXariBssuBuHoP0AcikfSusXQDQZ5wlMWKoip0+MdnxyKYqvcHar7GbzBigp
	 iLp/t47/KWHU0JsyCEobjt4FvRGtc9wdt0MyMRBmLoQSPveaDV8yAYaJec6s70G251
	 e9mouaTzwiC/puH1hWJ/2LQSSxvtg1Nx26Cd1U05Elbsg0RFUNycPvneg4m/R0XtLT
	 8JImvFrqr9cgj3YF80sK6AqzNzNtWD0OJpg41jxaBWN8uJ0tnsQTRXJf53sfLylgIR
	 +3yjPXSz/pQXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAC4CA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179064543368.27599.8509807870337168735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b40fae18708f696c4c32fe57785e6bc37e393e9da0a565bd1bf1aff6d28b271
Date: Tue, 29 Sep 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790645433
