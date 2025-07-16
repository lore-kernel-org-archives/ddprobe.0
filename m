Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8D82ECD11
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752702594; cv=none; b=iqef+F1CHZprrHkOjp+XGew2nhSIhYtvwnMMhbU71PpKDpSfjBExeu4MoyDdez6JbcswLOaC37kuC81HNCnYEctdyhAimKP/8AJb7BBTydAbDOD2MxFjWpYLBTNboy5Vsxke/Bn5gOlKairfHT17mXgyOx19a78MTlZmGvUtjb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752702594; c=relaxed/simple;
	bh=j+LV5qaZUWvZhHdh+Q5zRxqX98ELlO3Hduoa1BFwrDA=;
	h=To:Subject:From:Message-Id:Date; b=mm0lrXWx5z7etxpihXSH0/cwrxeHqO1Me9GmjCwCyeUrpQQb3XCVg9B1b06w8c6pnyA+WPFp3kfVkV1b5YgofnxsttOAG1o3Oqj3+pbQHv7NneU4veFbqGce+a6pWyodZEqYIU+ScnwNsE2GjfVqwWQkJ17i4jfc5rpokQG49xY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CzN/J0AL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CzN/J0AL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EE4C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752702593;
	bh=j+LV5qaZUWvZhHdh+Q5zRxqX98ELlO3Hduoa1BFwrDA=;
	h=To:Subject:From:Date:From;
	b=CzN/J0AL2MTF97TGVEi6kkF6VMJv71uzVOdlWJYDt+xvSC9XyuE8THS5VwSucckti
	 KDVTbbJhRf3f29/2gtM8XU2UwoYcVCowYYy0/Xg1W2Q/nTAsDo46jhFuEOEXVI3uhF
	 rOj7vZuwK6+bIOH9HH1PPMDRTjqCD5CRET0K8KplK1qyufUflSIhAP8vnzVf8XYHgf
	 RQDwy/iFnepa6gFhcJjASgT0F3ZSpfHz+jwhWoNlYmclTvHIoJbjfYDuhA7tS7Gvnj
	 JJxdQJ3SyHiNS4imo/tbQcNlbJaND4X+eetvSlo+csrVzwuBXWNFA5Dchr5RrqIN6p
	 cmbkoPeWIUZsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ADCC83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175270259358.28199.267984871070897741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9d62570a403b572f73a41b97266b29f655fdfb61bd9f642df2acf0d74e438ee
Date: Wed, 16 Jul 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752702593
