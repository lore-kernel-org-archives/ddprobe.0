Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F3625A640
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790250634; cv=none; b=gcelQvHdKaApo3GQUG8sxl8y/wkD+OoNOuseunMmLzEui4dqqW4SCOUftGAJKAzc41w11MFz4gCJ1k1QErf/kOFEqKzol9MlwmUGJv0XjZDrl09gNiXZdbD/72HtBSZ8N8mOE1eXNs/Km6dbjkLMe1x7hlXFKTsKvlf1pUhmcNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790250634; c=relaxed/simple;
	bh=wHFpXKakvrNyKTjGsUbVW2UJqmC5CybLKZ6WPKSkKJI=;
	h=To:Subject:From:Message-Id:Date; b=ODDahab+jJwSQTBUf616hILw3duSMRbUAvXWg2mMC4qiXFbyqwMaB4jfx6rlWFiLBYfAn9rdpMFG6nEkUa9QHotUTNL705kFfyA81WJMSFpJd4cIEkXS8zD6DgAB/7XPVufGQ206imtZi69g681vXb7mmvHe7/DF38WrLvnDapo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DqWq9m/m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DqWq9m/m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE94FC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790250633;
	bh=wHFpXKakvrNyKTjGsUbVW2UJqmC5CybLKZ6WPKSkKJI=;
	h=To:Subject:From:Date:From;
	b=DqWq9m/mJCGSNVbU4oS92kQ8qA+Rqlmn2aOke+MmHjWftgPhKxWQb8qIKmawYoGCP
	 h1/7umsJ1I9Vdi6AlP/9ruXTNS5zA3N/PhIPTG6hI8fykbJS60I6oP26ierinkn9sp
	 UXu3oi0dutt04D1ykutKajdohCAcUORUVY30agXfOyBy6A7paBd3WWB8+urmdKbaKw
	 31hxosH+CyvVMJ7DyOVaIlt+bMLJ4M7tx9he/pYOqQgqjVGMJf9AS3usdkEMOriRH7
	 8kLflh62fANFB5Dpja+ZwxCcmgOFZckWgTF2fJQ94qS0+eEQQS4SodapgmA1/hiFRO
	 rRZCh0BFNmEYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF1DC9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179025063370.12804.14589830060706551168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 947615f9d07a6b640ffda1f83e4b3e2169e4a5eec77271147e5f3e7bfe199361
Date: Thu, 24 Sep 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790250633
