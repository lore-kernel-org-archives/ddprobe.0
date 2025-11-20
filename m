Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E21340A59
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 13:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763646114; cv=none; b=ndMyOTaFxop5cSM0/+JOVCvPFJDC01zG8IUNCcOCfXPKPlW8JKdl1ROtGaBu4nCFR5SeqdDGf6/0pbT4n+e2wjyGnbTVp06h84TF9Wd24+SASw8hJHxvW2TX8rb7D3Y+HrPcJcvcbQuLTpZjpy7Bz4SCA3tLlQDj5XlZ6zhpui0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763646114; c=relaxed/simple;
	bh=WWM1pJ59JVmlt4mbloeFBQvuuN99jy1RQy9tOBtYg2E=;
	h=To:Subject:From:Message-Id:Date; b=a3VCzrNuk8MMu5cYEuzE3HaltUt4jIMO7Y8zDTpnXnX0EvVhWZ6FoS+s9h0yHlSHy9pC0a3HReralo/4laNybET8VmHVUcsZCZrBAIohTAM06zg5ghpR5/dNi3pCrX8IgA32zWy6q1Qxatb8Tc0HDyrPVIMsQN20wM2F0sJMO3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JboGBPTo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JboGBPTo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72D4C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 13:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763646113;
	bh=WWM1pJ59JVmlt4mbloeFBQvuuN99jy1RQy9tOBtYg2E=;
	h=To:Subject:From:Date:From;
	b=JboGBPToAzt5V5f1cvSEOoxEBBw7pdxoZamYgdlPCzT9kckAYrSd6qqpFv+9pQnnF
	 O9VekQIyVNhs3E7coKJssJ3bLD1ius5tBt1GK63ZKDWxjA28AvmyRnPHt7YKEGqVZt
	 UrPUOtEgTLqsJc5wTWrNwIpuKW1Oxn9sV0OYeUEsKb2WgVCBu6zl6qFvnKTN615qQF
	 d6ICgg2tfRhYfAUEAMe1LX4NMWs26OoWRXGWjDuYX3JnIYl8XjlEaNdXmkzjKtQ50v
	 ZplQprvJ5SgFnP3ig09NgZtlE7nDT5DZ+C1xld+4uuZA5LLE0YV95jlv2Nrc1jnzwE
	 v441RNeNOjDbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951A0CF8859
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 13:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176364611360.32740.7366898314596636264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 904dbff5407af4b7166baa2b3d5c795f28c8d5339cd23bd1d225d6f17ef6872d
Date: Thu, 20 Nov 2025 13:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763646113
