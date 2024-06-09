Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ADE41FDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 09:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717927043; cv=none; b=VSfmoka0eJ+cDDGKt5eXal2lMJvqtbBECm1BRWgyhEE5AUSMLxy31NiLNgvWE2egRfTN7Yn23dj/1cDxLkaS2poqGch0HNq/AWER25qnYImBm17vnsYVnJPWiISjeWjzkDTxekKZ0nbZT7VAibr/nj0GuATKS+b7BYnps4KVmtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717927043; c=relaxed/simple;
	bh=EYvfX6g3iKIXpMEuAbxnFqcrxr8LQ6+hUvHrgsalTgE=;
	h=To:Subject:From:Message-Id:Date; b=tf8I70gqYIRaV+1TxKaH/iwpOAfVdgEOhyiMJtTVUeMJNk+NvBTomyqo95hKA0SGKspMG9d6K+dhTq6Pv2yPfFLck+xkEqZWHlO5LehWOzy0BxS7C+B/dCUcF7dzkB8YdoCf8MyTYjJ863cO+HsFKVW0ZBKx8B/xyF2XpBEfAPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tb8Cn1xt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tb8Cn1xt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08ADC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 09:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717927042;
	bh=EYvfX6g3iKIXpMEuAbxnFqcrxr8LQ6+hUvHrgsalTgE=;
	h=To:Subject:From:Date:From;
	b=tb8Cn1xtlLXOnPJDk+9zIpUgP4if2M5KoXIGBlYU1tVnLulrrLrAHcwKvi2w1TEwr
	 kqrvhF5pe/sP1Lsdg70OJXklmkVfalV0oVs6j9mgRGVe3OJk6QoSK+A1LS0Bkjfm8K
	 BgChXENo/jaOFafXnNUPDkIZqw1Tj3fBT3OLob3Sog8Aw4d8trX6IafnHXnvsNA0eN
	 BN00DTJ3KaZGhyJdnxGLmfeVn69npy/LhtyvblkbBhS1CEwF8hb9ixnRjb2Bucfg/M
	 r5ZEJWkp9VMTqaYsE2CyMrEnpijhmNjUe31aJlu+dqWGyxtzYhQocoAKyF3X/8Yq5d
	 PhR9vYu+ezTdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1B0BC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 09:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171792704278.22198.13171077091946612909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e992a3af94391b78f2574e13e2eea869c959365d2de7d772ba155d2c80f48617
Date: Sun, 09 Jun 2024 09:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717927042
