Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126903128D6
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756724994; cv=none; b=i87phcIFgWmWK18c4DDwXGW5+B6LGXQxvXXjYSOGXD5jtmJ35Y6coYu8cIP+tc0othbtYO+U6QPoz0tSwwvA6E11aY0+JGvZ84AUZHynrV1UpSbdga4s/W4ZRhJfMwqA39McHvF7vtHWJmH6wqNN/J4vbD3NevoFCWOctjvgPAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756724994; c=relaxed/simple;
	bh=GGz/rRr9mO5kSIb7KjYA1CnI1hq6wRh9IX3cnwWulIo=;
	h=To:Subject:From:Message-Id:Date; b=gB5dGmxlpHADGBql8wm32Ju37AA+H5hHN0oQNmMlAtiIAU+s+tK4TTzJP6MUBQcZraMBw9sgHrbtmn0jbGsUd4F2UaqOrtI8LvU86VHd2HOqQ5T7X99fsTI3A5pZzeG+ijwEIKJ8tmedm8836gHQKx0nOrrSkt/8Vyux/Ut9Auc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSjqz6Jo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSjqz6Jo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1C3C4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756724993;
	bh=GGz/rRr9mO5kSIb7KjYA1CnI1hq6wRh9IX3cnwWulIo=;
	h=To:Subject:From:Date:From;
	b=oSjqz6Jopz98ZiF+r1rTZZ1o5fob21j9AAAicJ3JEyL0DfQzs+O5iD+r2PDtejY6c
	 mvbtBP5NVy2aR9RZp+v1BmNXTyTVkHF6uZq2Z3fct/zizzrpi07Q3EzEvkHeKLBc5A
	 PADBMkMRIpEMlV0S2SQpc0pXzqeUv/FBhjE8r8bViFGCPsS/GxiD4Cg1E4e1Kx3yxK
	 P/yj7dg/Q1zD5mmnkwoTAI5wXjtzPGTy3huzWsQ/9J1gySbYGwOrvthPH/2ggf6Zab
	 beeTXNVRmTbk9yXWpnyCdVgucw6/zO8BTiRgH3q3zyg6mq4c02dB1grUphBVD4nmwT
	 gZua2G9fauWPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA53CA1002
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175672499357.20788.10895060929583200549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5810e2e0e88833e4a2f033d12688f59c8878691c0e987b6950a011aa88394644
Date: Mon, 01 Sep 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756724993
