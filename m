Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AF8312D757
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 16:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718296103; cv=none; b=UaepQ6Vkg5RUFgA8K/9WLia15UKSolVvEc/9JNkakAewXLw2YlKpR8Tl8CusXRQdMFMr1fuBGuXghNc35NabSICMDjshz101RtcgARAhE9lxFevD1cP/IqmuQocDHiih4wlrTthZc8ZQdYjmSzBCmIwzFV2gJj8OPf7+uNa8zh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718296103; c=relaxed/simple;
	bh=Mo1POj2PJdFj8MK1dCPmhiyj5PBecAWzYvJoYy0xhqk=;
	h=To:Subject:From:Message-Id:Date; b=vAq+bYXn2eWn+1b7Xx/zAL2AGkyY5Xlj9WURszBN5f3XaiCpYrgKrNdBRGgxfNDx8rt6wiCKMkS4El/7SACAssVZV6m9YPA0Ka3RUDE2sKGHUZxSHkqiSGBe0JB3WqVFtfKhuw8C8yahsPhpNjxHRYaSpB02peroC/3CL8qOdDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VT1Dl2zb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VT1Dl2zb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3D40C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 16:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718296103;
	bh=Mo1POj2PJdFj8MK1dCPmhiyj5PBecAWzYvJoYy0xhqk=;
	h=To:Subject:From:Date:From;
	b=VT1Dl2zb4JUyvPI1jtmJIkBg0JbRhu/OxxTYohstvr0kUUnUFgHCnirCe2SMOOrM2
	 X1NIiM2GKZzunDst/5LX3ogeK0l7Co/L6VFIkJr84XO0LSXZ4bI1hy/3HpkdyOnRF+
	 kJJi3m+7YkcQoz1BpsBRq3mxzcz8/oY4Jg/iY60ajMCiL+6Va8SiJOuKgs8RtslPLh
	 Vl7JFcxPDDTPble79CAVRmJ0pUsXp6Fe7FrxHRrtBKNp8ZY0BtgNt2CMY4E2CLeGFl
	 CcVxOvKGo0d7gI0Fcd3pUEb03Y3geWe6DzjiTwQIoHVWcOEk8Lg6qmcR6IBiCzdXNa
	 5w1ObM10URgPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAF96C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 16:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171829610284.19478.5291037330902041603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd52ba6a3b857f1e54fda2d03711ad354468155ab585a58b74994aff6d9431d0
Date: Thu, 13 Jun 2024 16:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718296102
