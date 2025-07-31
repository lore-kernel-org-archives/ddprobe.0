Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2939D2D023
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753925994; cv=none; b=NsE8u13Coy6NffrNnhJ6Ho7Z6Sz6xBFESGNQ7yHTmOK7armQGsaC+fPG51SG4uHdGyhMEhkSdKfpAqMIjWjADxuk4PVnb9+cMW3hY8qGlwyUbONxYPcJspK9rxwManxD6c6x0qYb7NaGenupe79/MyUJmsF8jCmJLiQG1/WXvTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753925994; c=relaxed/simple;
	bh=4Ul0h7mGwwx/9BNHCPGmHVQom2oO6beL95ukOJf3rXs=;
	h=To:Subject:From:Message-Id:Date; b=HlhuzjYsoByV3G8RxDkoa8ztF50/kCCykMSr61XXov/yjQysjxvXtuirJUL9BlNclPLVgTEJ+b+5b6ZvzzikicKSRilYxv7wpSgOhZkOh/lMKpmGLwOsrwlS7r0bzwY4eKsPFOx4K037p9sz2f8kUmUs2z+0h0Y7sys0x7dcoAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dmNqPwPR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dmNqPwPR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28D1C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753925993;
	bh=4Ul0h7mGwwx/9BNHCPGmHVQom2oO6beL95ukOJf3rXs=;
	h=To:Subject:From:Date:From;
	b=dmNqPwPRin/MSCSpoFtwZhm7/Oijs8AdkNV5fGI+OTLlOotU893jyjojgumWwdodf
	 EN9M4D1+IAnfIqS3BjYPJozob0zd3aqDc2duH2zXw54HO5gKCdiv5WwvbCJ8lLdQ/z
	 s/8wRQ/Xh+iFLfKycsILsRkj2qPJD+l1Nm5i7Q1Mp222BjxPe2sXBnCtooKrrZi3OW
	 stB53NUnrCqpqWyjBQERJ7LKV9gCPs6hUu5GuDixN9VfpM/wRCfON0vfVs1ttP9sOx
	 r2CYdI2DssS1vTxzjV/ldmk35Xae/H9D87rJ3vwuzeHZIqFJNI61OAT6zDIbnKMh+Q
	 1elysXT07/h2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9042BC87FC9
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175392599358.4653.11334951596908032381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74fd1c5ab507db3aa2c0221f394a4d003afc3d2d589d42025ffc42cea4196eb0
Date: Thu, 31 Jul 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753925993
