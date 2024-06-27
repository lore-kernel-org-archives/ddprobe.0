Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5071D59164
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 07:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719474263; cv=none; b=QTaBz6nJGG9stSclXcMXEhJSZBso9uGp36b8gPzbk+ZXg5ygxwR2XSe6PRBeLpqsjh6mlrA3CZv7eM/GPHY+6Bevwd5tbMM/CIyeiMOEZidwPGN5kYvU3uzkrOOwXI2eQE8zjtT3qUIOeqTpiTCxx8J0UjsIngIBdBaUrKLR+r4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719474263; c=relaxed/simple;
	bh=LDOKltjqLrRSIH5SorVUnXVRwl+1Wk5OOOXTaBOnacg=;
	h=To:Subject:From:Message-Id:Date; b=kxWI83QP8MTuyd3BOX2s6wFJX7qZkwv/344U+ps/rI9t2JXzzKD1SOJ8yO81Kt9rsaCDpO+dti/UwSMXp+Bzg+AmnV5XhZWFShPmtHViu3h1zcEw4qLDr+QL/Ifcg+xqGjh501Fi0jMRVaMTLOWdoa0uCZCgWvs+ehkqUjd9uaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YA3WIspO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YA3WIspO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1713C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 07:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719474262;
	bh=LDOKltjqLrRSIH5SorVUnXVRwl+1Wk5OOOXTaBOnacg=;
	h=To:Subject:From:Date:From;
	b=YA3WIspOTZohovsYzOg8In1wtWH6JYOHI5/0ksOx3cXfIXcKgLYeNvT7SdygN4l5I
	 BEj+L2Ax9xHxlcCpuQ9suSTxdIFvUiAjiVXBVmsb6L9Penb2oQnFAfx94orw5E4GBj
	 XrdsioqD3Cu0j3+1KghzuEX/P2CjnRA+zfhBFMbK1pO1m59YC5Dv2CWsx8BJqG9FAE
	 X2z7Qnns5El2cm101Wk7df6S0wrwm8lIOZvlguJTNvZwOYsag40AVLk1OiFoTWO8g1
	 061j2c//YHWcumJ9ET5rj3a0wqnF2Xo26nNxNiGhllSpQdopAI0rRtfb1/DID5aUQ6
	 7Fh2JDBgRPoiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD223C3064D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 07:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171947426276.5562.15627866224830472030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07e219394fe7f1d85889d1469964e882ef86a20f7f91e96b0f728a3294dbe577
Date: Thu, 27 Jun 2024 07:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719474262
