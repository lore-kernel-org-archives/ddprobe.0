Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7D63F9F9
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 12:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721218523; cv=none; b=SrUV6eQgUwlU33RDHJVHMU5nnLfPjlkjUz4So2s3JJzd3tLfaGsiFhLWniO+iBxt4gz261yBmcFAPE+aXEIc+fmt7iPpCSCvf52HGmzpOmIWaJq9vL3zbjTtmWWtWuDB+sU2Kj3M+tsRU9yDmV2FvicCIdC58HZHG6bogg7Weqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721218523; c=relaxed/simple;
	bh=i8AYPu+8aHQG1XDbNRMHHJsSYBG6SuFJXX6pmSH3w1Y=;
	h=To:Subject:From:Message-Id:Date; b=PJRLStc/gYyM1QaBr28/Mbn3hEoENKYtlckciMiL0bnFwlJ/ds58PDpEIhAzu9o/D1mqMFjzHcYspEeZZqOJzs/cqIU3r59+mjHf6qUmH5SRmiZlt1fVgpa4Lz2FfZXgYTXPQo+Ksqq1JVt3suCee6Rv1BRwNxqhYdUZJI7wRPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lXAylMSm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lXAylMSm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFEBC32782
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 12:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721218522;
	bh=i8AYPu+8aHQG1XDbNRMHHJsSYBG6SuFJXX6pmSH3w1Y=;
	h=To:Subject:From:Date:From;
	b=lXAylMSmtte5iOMzDVP8VYc8zoaKfMwq6OZ1XsicoDZCnoLLqWKRPyABOVuGJX+vw
	 YXhBMrvLX0EG0hjjwEd7YMHDTBaOythYtmBIUf1MxtBG0Tt1mSCf1sjuGcgMhXhjKk
	 PHhoJCXRX/eKxjMlrRkiTveDpdUQm42iLGOMyLjAEthI7bolK6f0pjkThYc3KTaGsu
	 LRPrfuLPI1Ug7xxGVk7iojL7YctEa9qtRLNxphbv/M8Z4jaYvWdR1ixNmyKtSq4ot7
	 WAgVmjiTJ936N2j8GJEZXscuvvdq/romZj8wswq04V6BGVzvBFM4Efx5lFboYID9Gh
	 x+kAS3TP8G7jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD1A4C3DA4B
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 12:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172121852276.19285.2656852347756578967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba5fa16599230087f082d4d8b717cf81bc6a293b1ecbb8be5e4ff9d991c8de25
Date: Wed, 17 Jul 2024 12:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721218522
