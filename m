Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B7519C542
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 11:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763810514; cv=none; b=nbmDi33on9XmY1qujI0ThJL0FRgzwClo+Bov5vijcRyFAHXYRwMNJGceGFZk3Yy9J0P7qWgcvv9FUuWUHED/dJWvfmwA5zed/3RmnmaN9K/fvszKa/vCwPbJ1KfyegKC73jXQsQVIw8TXGBT4GWuYXPxRC3NAd7qIxi32KOfq/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763810514; c=relaxed/simple;
	bh=+X1++R73Tc3f9u2LBr2QCAZQtpOOl5R1rmGWe4flQNc=;
	h=To:Subject:From:Message-Id:Date; b=hddCKRQMGolNflJCtu10A32AcEJJ4P0vksX6Hn/WGZUYdTH8ZX+KKPewxyVCWSn5eIDRn2L2/LjsLvf1p6mGG/ACSj4ETBSlZmP3dwLF006G3JFSB4e6BkVanVnMjNq8ptb3tWLEOaZXceS8uNG1wSscMwhmuIB2pvj832eeduE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNTEOpKk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNTEOpKk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3F0C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 11:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763810513;
	bh=+X1++R73Tc3f9u2LBr2QCAZQtpOOl5R1rmGWe4flQNc=;
	h=To:Subject:From:Date:From;
	b=RNTEOpKkITKXZ0SpSx+KMGcp2F+uGS3CFoPn1FCUnTq611p1d6x5M4JucuKSJZAHt
	 QSo5E7VZwEQPpCgQl4kXBAUMsupMEXT4zXxI+jW5MuMWcgJHM4H8Q//WmqWqZ53ju2
	 AaJfrIsOFi3EAdl2pBvadXJ5CTwik+jacDOB+BXB1ZiN0PsjkqixEPFtkMmr/pvwlt
	 mUWiowYoP/bzsw5nuRq0+lAZA3+te1+OQSmh9lfejuvsoFa+pJHc+muBQ1qYB0HcQj
	 cYbO2B5Ijr1Yp8AvIivN4pbpF56hfbwCulJJe5NHCiIYh3gms/4jCjNrGCwAV7/do9
	 enBloowWcHgOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960CFCF64B1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 11:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176381051358.27367.13882974408468238552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5af9075a275c1b447f6e4b5ddb559c2c1a0ad060b2510026568eca8ab2a85796
Date: Sat, 22 Nov 2025 11:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763810513
