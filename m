Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6044C81
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760147394; cv=none; b=dRsC3/1/ztQfALWWdyevh9YNfzeXFxfqd7GUrIvW6CPlZSisL8SkzNr7bKphZYO/G+HmSeNpNsrk42jipGXvJ6XaB1nB1s4HVhCWI7OSO7sytCZryhF2uk5NNHCQbRaIDIx3ireZm4kO+QvsAQAMzU7AxivfHOL1FtjO0ue9wtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760147394; c=relaxed/simple;
	bh=Y5lEhD9fAmKQBhgf1Zc1drRS3mA/WPLiHpnuIQ7DOK4=;
	h=To:Subject:From:Message-Id:Date; b=RXX6BUPykEqiw6FTwoAF0IlHnhTFjzLkcBKcD6aCsIgA7soiVTx/0Ngp2RxjL2JBWrPLVfRU9Z5/0c6trWM958W38AWOqFQaWthM1hJ8BzBZSd9yKUMuXjjYaeQn4rru5PchTp45b52UbxhmNsf1EhYpD83aeabb+tBnq7Fsvk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fc0cKK+Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fc0cKK+Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A469AC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760147393;
	bh=Y5lEhD9fAmKQBhgf1Zc1drRS3mA/WPLiHpnuIQ7DOK4=;
	h=To:Subject:From:Date:From;
	b=fc0cKK+QCryKyUWeiVPtIk5BQx+Ee+rkmwzVCGIi0CYalmCDCXV0OaRgPTTSap5py
	 ZDUjxHHPgZ7XiGxXbSWB8haX85IJbaL9s8rcsDTqEkwXjyzUttmx9YYO2k95mBmcFm
	 /7LjjK/3pw2MnPbpUAl9CwppX8tBYYmuCDobjYIoQhPERRxDK6/1b2xM4rLKuqHWq6
	 DClRNYZc6WuA81xHEoiEwk9j7+e2jSb7AloitU4SyDsujWwKhrANhi2rVDGtxoiY+a
	 aQ6ED59knD2tYywo2Q4+uQvE7QI+/qi6mIyqqAWqQ/v8WJYLdp2Nqwk5rLia8lg3gg
	 7Te1k0UkMhFOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F609CCD187
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176014739357.22822.18095007657509150298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a3469fe9a4f656fbfb6579583b8024cc0e7674fec12b1fbfe17bac66c9274d5
Date: Sat, 11 Oct 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760147393
