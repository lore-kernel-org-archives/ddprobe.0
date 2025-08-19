Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69DA024169A
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755617995; cv=none; b=lF4c3+oGtT2lRImYCH7bc+BDQbenW/ivdTPiVlaw/A6jBD0nc0hcyFYIn+WxoWW223MiSK8pdsfyFlR5jOfXTc9P/r8EJPDIKbxZK5QbaxdrBq4juehwAWxHs3mkYw2Rfl9soqo9CclAO2FMH2w/xc8biqCIjVwmSOpNlqFtgOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755617995; c=relaxed/simple;
	bh=Eu5/2lKluJQwAihKmPEUDh55w8P4R8fLTE2bB1rDF0k=;
	h=To:Subject:From:Message-Id:Date; b=m6aXMrw6IaqAQJ3guPIAYZ2F2jENLuktCcNI/FPrVAhggq8Mnio5T2eNgpUnjrW1fLQgrUTQ0fvD0NgJps8fGVb92appShXn5Ge8SI1gPavbY8/GQGf3A6yJcVd/ytYblMipyqUGZ4DrvzE1GUMMjCZbfGnwwNzk+SAtZ+fQ7ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t6O1wS2J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t6O1wS2J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D670C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755617993;
	bh=Eu5/2lKluJQwAihKmPEUDh55w8P4R8fLTE2bB1rDF0k=;
	h=To:Subject:From:Date:From;
	b=t6O1wS2JQs4dN9Uz+kC3/T+DeAf3wjXtbn8WXstemwS5GgpItrJgCgEeZJZ2qUAJD
	 cA00bHXnXQPLeH91WFA02c5rR4y7jYaBy6yBlh0WxJ7I9i72h39RmegKs4Fwkd902f
	 /u7yM+pLCsej7pLejyXx3cUqedOdq6DGYeDd42EiFCJi7l8/ZRv2FaMY45JJcO82EY
	 s04rlhZ64FNqZq5IP1pS3OG9dwckeSfRXHVp7l6zoy6zn2odJx49hbBOLXEeFj96Hp
	 aoGY0orW1bAMXlwtNBaZRPAMjQ1BONcd21c3hhDNSYPMJHhbjy5y2s3lokADnSgsxJ
	 29uHE0RYRxERA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6E6CA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175561799357.4127.3238992687060383356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83ee5e0921bc0bbd53fa58207d73519151d2a37458a9ab5e12b1e77dfdab1a3f
Date: Tue, 19 Aug 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755617993
