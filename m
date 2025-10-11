Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C751DB375
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760222994; cv=none; b=IF9Ug5TWQWZnhdBOaz7kwxsXSOXojoY364IUDHfsfD3bxUrwjGFEMkceBHODFNRIx/QxwY1Xwe5e4gYRfolPc9+Gmu10TLNqjamJpQ/jvIF6gKzOvn7MX7hlQGOA1Ol2yOVmttS25Qlaf9cRV+t1iibXPm+Kj0b5hdOiQOCzv3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760222994; c=relaxed/simple;
	bh=vElUDhUWAdHlmMo5hi944FqdWE9HQZ1y8oEpCpaZF48=;
	h=To:Subject:From:Message-Id:Date; b=JZpHLprlYn9TGYxkp5IszLxsIU9fvyr2tQIhCOF9aRsewVDDaVNeFORUEm64X0CvI32R3ei37HlNmgDd9CJVQgCSzeV03s/UXHMUGes2890SM6ZFqMGKUT5iNqKsTfCFrXyazy2rV1kD7Tok1uXouDXMw20kDkFUjT54YXq4DYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFd+j1yz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFd+j1yz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FA9C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760222993;
	bh=vElUDhUWAdHlmMo5hi944FqdWE9HQZ1y8oEpCpaZF48=;
	h=To:Subject:From:Date:From;
	b=DFd+j1yzlasj2Z4IWT2EQ7Fl52F51qL6sTyI58xcisxclCe4Of2KT1WR6SVy1DrOV
	 jMO8a11tAm2beHiPRx9c+c5HyMlXwpPDvCsmlIyda/2x+hVTYwum0TelBdcrT6LsN+
	 Nq78ICys6+aBVHN+y3cmYigbIlTooMN02dJDBSnAz6AZcfb6cOWbSm0iPlmHDUD1ra
	 uuDWf33RcWvDj/mDZ87X1JP2nRqZAEG01NaHQVFQ+tPe2WN0eQS1pg0q04Jx1V/TCx
	 MhssWEGrSFJLbAPu2mWvdS/4bOuInK60d9ol4uOYni2pQiJ0M5CWAq3IhgHcbnCGFM
	 GbHTxgOkit/WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C2FCCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176022299357.4634.1541746315690373488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91aa23163970de4966cfe5d7add61a0c0e5cc0f4f2b61b58b474893b9bfe32f7
Date: Sat, 11 Oct 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760222993
