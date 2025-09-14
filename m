Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1911B1FDD
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757808594; cv=none; b=MTL4HmL6OSAKm2OGY2MWJLRFxwHQktGtBtE1i6UM942PnXBZdkPwrQDDaR5glseab3VQr3N+bZVbiwReTaZqTsAeIFCou3aDlYUwgjyHi24jMSsjA4rX/fYMntU0cHJRlk1ydUUt/FQ05DvDHGCpcEX2lFDybMgqwPe8SZbtYnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757808594; c=relaxed/simple;
	bh=zjPfP0PdgEqQVwajrfAJbn1Fu2KVmspmw1HR4Dp1rgw=;
	h=To:Subject:From:Message-Id:Date; b=CIas1awsgyBaZxR7I9HBX4XgzclyjRYYUi3sFG9FRStjMbF1/uS/6mdsD/E2DG5CgjysI4/QqCSKoq83xEQerhRqLm0imz1gMWlQmehE3p4KKo/PirgTlJMgYodGxS8/1ilqEfU6wn8cfB5RvKTA+QFVDNy+wuerFPFoWPzZ0ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y1/S6ejm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y1/S6ejm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79DBC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757808593;
	bh=zjPfP0PdgEqQVwajrfAJbn1Fu2KVmspmw1HR4Dp1rgw=;
	h=To:Subject:From:Date:From;
	b=Y1/S6ejmR9doWR85jCQXeqezbwmjYp93/I7pZQ/VrqErYyn4t9KjXU33Ek4YawViD
	 lA0f2V+0e+1lIuZgMrVl1ycmHDfE2pfvYBaohymYw6AB8bmgzOcUmODjPcyJXAn/hz
	 X1TRoYCt97PFVPgImeTcImyyl08q3t8paHC/g3zYSfi4TsC9h+WxP07NZukYKEWdAg
	 mVMQo6ggaWA2nnWfnpmw/B3UzJJZgEt1irXa223hOIUOu9r0IFJCY6pucyK4eklBxQ
	 aHTSCzUdu04R2BOF2wGYauWBoIuPJHa6cY7PJZfYdKZQYrCy/vaJ+7hxz7V2KSyLtM
	 8QieYPI0/UXeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94997CAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175780859357.18823.2061979479572730377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 163289a591fc0b90774e2362a053a80149de386bc10c2e6456c059d9acf2fb26
Date: Sun, 14 Sep 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757808593
