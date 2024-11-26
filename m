Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7F328FF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732580754; cv=none; b=OFUZGmIyegKNBM2bWw/krV0RXNrsBye33LXCJ6wg8mgIkhHriw9Rs6NhsJOZxe21XjCZikEI01DsKcVrTaccbY+ons8TGmRjmBAvHyfn3yH/bjg6xS2ZLXK20Llk1KHMAgHK/zyplgW7KAAuoFjgPckNTkeqTeqwKmDbARyaMN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732580754; c=relaxed/simple;
	bh=U94HlxHgmJ44viO8qyK9cbKQya+uMchccDL5w17RpRc=;
	h=To:Subject:From:Message-Id:Date; b=jmTKZFwRhRIJ2Keyopq3/bYOVMweMKAeoiwRnnxPmsnggeBOnGUDUsTnYrpPzB8pfzQo7sjms/+Zi2ODWQ7GqquHhZMAMhSo65oC/WBG+IQz7va4zkYK2QYC8PdrihBRHHRC7jJnr2TArftZlImK4Kz5ooOf+UR1+oqiGorbp08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LwhBKYIw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LwhBKYIw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4F86C4CECE
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732580753;
	bh=U94HlxHgmJ44viO8qyK9cbKQya+uMchccDL5w17RpRc=;
	h=To:Subject:From:Date:From;
	b=LwhBKYIwEIER6IeoibZNwzYrJtZ65Bs2CoigP5sT/gXu8Jn0yl/4yK71q6g3QiZur
	 MS0M0YB1oDfxDp4LOLvYjWs/4K0oqdleHC5tWnjTiBv9w254+uekJtmLX52HNUeIwj
	 bNbQ/Ox5xdwWdX6wu4vNOx6VP9K84xeRJ+V4KmjGmJS9C+scUG3Kf64DbFdJpX2LTV
	 pTAthqvmsCxDTMSL8V9HkVj4WdhCdUDfVpElMoYDBUaqxpRuwOMy0RmrCVDV3faxRb
	 lkVwUN5rOSbvvVlXEXXc19qtgunxeLmcOYxEZvQmsB1PVbvrubkd5mzDLmf5UbaG1W
	 NDzGasD/Q0Eiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C03ED59D85
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173258075361.29481.9608687775619101339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b261ce375ace88208642ab0a3ccb3085150a8d80068e5c814b2ce0df8162388
Date: Tue, 26 Nov 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732580753
