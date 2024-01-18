Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147DD612E
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705552097; cv=none; b=om7clpelsLuSvFicm0tiAzCWf+G6249hCW5sLgTNhzhSJw0MzsLz29u8BvxfLK2SjHuWSnICppto7iLjyJLq5Z7v9RI8jvT544eJYEFqeJuwTNOyp0VJog6LsbmiXqeiVKkQ79sgo2L/NbVoDJPgW9HbyKZ+A6yCmwjtYG6zWrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705552097; c=relaxed/simple;
	bh=Ay6HAC6u8K9aMlYtyOTylkihHAMT4mml1lYKnxCJ1ns=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=O3O13dy5q3AkG3OOQvMGM2Ke83fIQtNAWMUbSTwh3tT5fwtMNJ6jKjn6ewV7r0sXLfl2J5CU9DHxBX/TW+ZWTuHbKXOmXp0oFEaG1bnQZvD94f3o2YMf+u2768PhmoSDSu5yj4GbwJsJS6kklAnhz6pFtrBA0/L9zf2ICCc4e4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=causTIaG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="causTIaG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B324C433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705552096;
	bh=Ay6HAC6u8K9aMlYtyOTylkihHAMT4mml1lYKnxCJ1ns=;
	h=To:Subject:From:Date:From;
	b=causTIaGmZhb1xPs0b3nfVNNYTXt6e2+ZG5AObBA3e9X+avnRLGyYoaCkBsXfMeJR
	 A8Lt0bb2sfvrkwtUZJgyIsXCTI6Vc81M3IaWL5LMSELmSQJIBYDQnSik6jAMngR30T
	 Tc7Ww9ukT7vRCKGznEf6aDtWaGmkPGeXT7LVfRPnPG1KMMCjyL504HJYkcy8HvRdUv
	 m+ZxvB6MKIhbiTQyUkSB7XcczPWZZWAaweZsoLB8LeN3GI98T7LyuUV6z3koDHKN/m
	 ok3yWZGZN7v9qIrYHG24LXOXERpDp+vg4SSrbfI0CcfNCatB1YNq4Zxs7FyKxKf6kp
	 qYgCZ7P79i3KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CB6CC4707B
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170555209640.9246.4559185905061957065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9db816e5a88d679be53349af91aabe0c928f3589c1f346ea4faddb1d81616356
Date: Thu, 18 Jan 2024 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705552096
