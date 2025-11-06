Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0406618C031
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762390194; cv=none; b=o1y5IvRysxPk+RJj/nQk2/dtJLr+/9+/i0FCZ25kTECS7as7DAlKNgP1EkEhqITy6r57rW+S7HPVzq0wU7S3wjkmzf1tCx7LCjNk5SIJv0Gzkoel7+SrmjyGAT7/HfXJobHPyeSzBmpTgdsovAl1ob27BLVcv2V2l7WpHyAZ7LY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762390194; c=relaxed/simple;
	bh=ZR478IyPUOT9IxV5B284MQarPCjFUVNhe/gs89Rjnf4=;
	h=To:Subject:From:Message-Id:Date; b=b9+OkLUap98lXiTkS0p27lzLn6G08c1NaQaZWdEdMBzGGFjT6p91V+RgzbiveOeUnDL7RFDGWD+VWtdpoJt4MdkYuKCnvJX/41JO8uk6XOjyD5BNjyc1Bm4UEK+lyLmxDXEJcvsPBL7Kf3Eiie47fnaBtKLyWvBSjFCG36Cfe80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChDJcAq9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChDJcAq9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0770C4CEF8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762390193;
	bh=ZR478IyPUOT9IxV5B284MQarPCjFUVNhe/gs89Rjnf4=;
	h=To:Subject:From:Date:From;
	b=ChDJcAq9QlNbjxUGpv/xwrudIyCquwxGjTeXcuvvgJ3BNCbRWjVQCDredPk1jka8N
	 5SIPJDqu14JdTnbeb7XARN6jm13FqeMRuL9eeFQdlxi0Q5JP+Zk02/hvZG2yBQi+p+
	 c1QH0vUJxzfiKf8P+fh2W6+yesJfUWcGPksEXPkOtzdE7qmRXn7WAtnnyhBsH71Heq
	 pn3W3mpfG/GtfzVHQeyxK6xjWjR/wujQXVWIVZ56Mg3L1YL4F7zXqBbFoKLckp1K+v
	 rrvgBFAsyQ7bsXZNhqwFz0SZELtoWdwJnpiymHTBrVkWKEcNjQJ5trRwa5qWPgV3f1
	 0r/ww1T1TDwvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C8FCCFA0D
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176239019357.6168.11605325735215305818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ba162998809d194f47764f649834516bd702898e65f7c440658842a590602f9
Date: Thu, 06 Nov 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762390193
