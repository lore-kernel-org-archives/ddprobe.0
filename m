Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470A6471406
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791135034; cv=none; b=AK/K26uEpKwHifLAt7HpwuTn6LVZQbl83voN9TOTjJT2/NfDxDTi/8N5XVMufOwSO0JO4AJfaLNnf2yeLcJGJkNmH06jhMiEEtY9wToBOIUQ1ytyT0pLQcVRpbO3thng+89TdUOZenkr+qD/LiwAF2Vzes1cDBODKAo45/3kc/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791135034; c=relaxed/simple;
	bh=1lYh3bNTwq3Y5GxVTqnLkJVbsJErkERJkz+ZzXChPpU=;
	h=To:Subject:From:Message-Id:Date; b=mTuZ+8dnQQyivS5tI6MkVsmRIrky9eZK1jOc66yopRsdRLzm7eOBU7f9Hp6GY/JfJRa6zMT6RMPJacUClcm+mjADvXrABlFnGX4bt03AnSPThSAnwUWjpxrh+1juc18zxWVfz0IHnAJxidd1nZf85/UvBeaHQdQ+9iDiE6tZo6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBDx6/IV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBDx6/IV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBE7C4AF63
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791135033;
	bh=1lYh3bNTwq3Y5GxVTqnLkJVbsJErkERJkz+ZzXChPpU=;
	h=To:Subject:From:Date:From;
	b=aBDx6/IVZK8nc7Nv6Wvs3Kdvr/tBbw0l01y6+TlBWEamnj7DjbPc1zGwZ2aDIVvEY
	 kP+5XgTXNiAx7e3clJiF6YkZqDmiRkleMbBuvZXyEPVBveFA5okIwkub6tmrnqcsuo
	 WqKWaH8mUmSlSWWnL178xnlJszBNYS3g2hTxCCgqOpgbabMgq3LTq4wPSgRlFApDgH
	 j1lvg6w7qWOBezWpCeMEb/vK109s+8meRs4xE1OW1f/LCvASenxHrXrPUse+yWdhvj
	 ib5qtilArsWT/KoJ7QVL0i4B5G25TNNUY+T9ruopTQpmCjFf5kJnatqqE6tkeh4yeB
	 TgbjGXT7Hm/iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5B5CA5FF0
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179113503369.19121.4359758691933212861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ade584511125dfec950df30b2cde909028c9c672781e66fad0873e094f967e6
Date: Sun, 04 Oct 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791135033
