Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADA32EEE78
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 13:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784122714; cv=none; b=oKQvC4poULIcxx3Bc62l4Xw8ipQ8TqBvruj/XUlweDzpwchekx4cNX4rMFm+wFZe0NUHx3/SrZQ+eQAt5+oGNDo/U6cZ52QxFOiTD5KE/ZQnBT7hvk0Trg6CsatJvPD2tkv+BmrFL0TzO4YutW1fNQlLWUZLJ4QtbTKwgEPsxh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784122714; c=relaxed/simple;
	bh=TUzYUmLHJUKpHp97p6tTAdAJ2mxeW1AanHk/Zp3/jfA=;
	h=To:Subject:From:Message-Id:Date; b=jn26dLgfrB8nNYstLPee1gd/08qzXMr1EdUol6OBwFoGqyddS3KeOK1OVCwLXb41U1XxQa4C0G5DQYYkt/3Zn2CfEoGX9TcKj3pgeEcKuodaWFkTBiJo/zeEeUv6NJJtR29NZ6BLuBWzYpmA1ybKwFwFrt/JDgD37hLoX4c9z28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOm5R5Ot; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOm5R5Ot"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C98DCC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 13:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784122713;
	bh=TUzYUmLHJUKpHp97p6tTAdAJ2mxeW1AanHk/Zp3/jfA=;
	h=To:Subject:From:Date:From;
	b=LOm5R5Oti2viPQZi1RQYvx8POfAyXEnQyc+uEHOtA/oAGh3gcLQ/1vY/uSeEQwsal
	 sBfQstxMc5vje5rrRTjAZa5EnsBdQ9Rv7dmhdlu6GdWogNjgC5c5cC3ycGZ8GZzPDY
	 WYscDkDLe52NprUE46F47mZQsIEGQ+FXeMakOTiwMspV7EuqX7Ca+MJuQnA3cROYIZ
	 E9wWknVSHb2b63F5/4dqnJL5kshxPzlFxhR9qYNNsKWfRCN5ahHeLKo5OTjxR7JZ10
	 SdhS3dNvgEDKhCU4yzGR8Aj/dhvKsOmHBtwWYISpTslbozDPwfuYa7Wryw0zCoJ6e3
	 Xg5e0dhV5tczQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A838BC44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 13:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178412271368.28113.3172934359669935227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cc0661f96c734b044833cea2b79b0bc4c6be0b38b45f071f712c2405ab9f372
Date: Wed, 15 Jul 2026 13:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784122713
