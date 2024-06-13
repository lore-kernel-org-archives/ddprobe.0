Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E2F13776A
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 07:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718262503; cv=none; b=dPKeYy7f6R2pysFfy9DvfSp4/+vN6h7M2R0evHPv3QGtHJZL6kioVzxliMBnDMLDy1AORziYCZfym3XBdu/l0KHft3M0EVFYmB+M21i+3IDzkvq89fvk2DrRDsemEzyeMjqn627fK+TgaQK3s8SGIa1Hgl+7+YJioO5YAWpiLV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718262503; c=relaxed/simple;
	bh=BLqgotseKrxCvF1EXlnrYa4WnEwLrKGk5WEOXsvL02w=;
	h=To:Subject:From:Message-Id:Date; b=oa0hGoZqagTDvRGxXfOAKVTngXB7QXzwPPL5aV2qe3U9bu6w/3lecOaLqWnNFpdw2knhQUr1e2TtqehA1AOHXk3+FBg0NirMVdBfm5yqxhipbautAONSdfCx2JIsnX8x3L5VNNMbD1RXybLrqFZbiZVKQUFfjVYogSr5Wm0Y6dA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A1ZpTyxE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A1ZpTyxE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2A68C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 07:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718262502;
	bh=BLqgotseKrxCvF1EXlnrYa4WnEwLrKGk5WEOXsvL02w=;
	h=To:Subject:From:Date:From;
	b=A1ZpTyxEqJbm0n+KDE/WO8CFf+rmhswcIiAWTz8thcGBLmmNRKr83ANuGzZTCR1nS
	 VUXGYMPre9aGq9MiMq4vccE1cKjwjoPPiqnUmQDT4c+oZ7E56D54IlbOs7GKXNsxyz
	 1Sg5Jvy3Tn7iY7gF2eP9Kl3qkdnUJXNmatmZ45ox/7OQqhU5WZtft1UzPCm3UIGp04
	 bVXD/fvXqvQ3PuG4rqNUoA+ylu/oXg7zRwdsoroSi1Kh6neSOm2Tc0bGkmbjAROafe
	 z22JwbTV552gKAEV56kTG56twQ++mykD7U8IlESYPtJrrsfIClMNUFhdTyTBtyivRn
	 BbXfX2gtYhoDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFDD8C27C75
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 07:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171826250283.11584.13405165937084394879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b83cf77727d9db8131c84e691c1e8fa1b42d9f3fde02c2ccb0072822b66ad07e
Date: Thu, 13 Jun 2024 07:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718262502
