Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06F263191BB
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771971894; cv=none; b=gteOpIRI0gJFm9uJRFrKgmoGSt6ufDPy2hnF66hxQO3q8GG82UkXndLS7JIm7L0WLBZgcXLXyGEZ0ntjVtTXOWA/M7BpGIrgVG8E2A7ftSCUzdxEMfBmZqPrTkBVOB/aYj+5Itt0hNxLwe+6T5rX3jjiM4MIFiQywvGXghSPF44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771971894; c=relaxed/simple;
	bh=DQwsbyA0AG5GXBPuDMp1XmcWcnJcL9H4LSddpGWWo8c=;
	h=To:Subject:From:Message-Id:Date; b=lCAPvVLEUxK13INVdtYt8gKcoS7mrFL4l9AeYYEj1HZ/DRt7/83wXYPEwnozGTHwlHoRNAw4Qf+TkXTI30/qKcvU0mxm4MguN6l6FnCg0gQJTBRKgJFhSqgbPpUGHn7BUOTWYFGksYljguf+xaQqFj6ksATOZJ6VMb6qIAv1nFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rvVpC4rm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rvVpC4rm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3532C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771971893;
	bh=DQwsbyA0AG5GXBPuDMp1XmcWcnJcL9H4LSddpGWWo8c=;
	h=To:Subject:From:Date:From;
	b=rvVpC4rmHkJHQ0wOjZxUOJeAdJRP32thHAyydAb2N/V2/CQU6DRzq7nZBUB9mIT5q
	 YNLnBcUhmw7dd3RTnks7BnnIyvbsglm/CcN15Q1H38e4t1aDU1Y92mJYPNkaxt/ewj
	 hOXp0l7RsNklPDeujqGt/ooPRpbGxMOWzKlLRGPfA2uhM222o+SyPq1ilC4VHVEVzm
	 91yA9ZABAeXmbaETSehjOMP1qsc+mF7fWUalzQP3kvwHJASo9CXC2Ps0JdrRJozR22
	 vedcnHL/GRwhv9atWDytZubUyscsIAF8JyRmU99TVtQlz3FVOKVKtbkm4NbLotMUah
	 uOtDdu2Z5eFIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EE6F4BB95
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177197189360.4708.1460100494191060280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cceea80d2464fd7f9990c53c785d1610b26e0d45e8a8fc72a7a39ef7c83c3a9
Date: Tue, 24 Feb 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771971893
