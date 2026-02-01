Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EADB8219E8
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769923434; cv=none; b=WQ8DePr5y+B+ZgsaNoSdOWQNQbebkxCvYr1J5JFXWZ0a8Bqql8/2GnsK55NNVnrC6d/l7nI6ooWj9SitQqXW6e8TD/OMg02Xf8H2I7HJnw0YBGBiytSeSSiylq9Yo+Msnj+H5Oe110740cBBT8BzIQxt/OfRH7M4b+E+SlNAvTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769923434; c=relaxed/simple;
	bh=kuJyztdVsX0J94UR6Lf3/pQsqW9FMIa5HstJ2AcQQtk=;
	h=To:Subject:From:Message-Id:Date; b=kB36JdlrIvMd2xV5lk1QZUV88I7Ii7UwZLZeg1eqzRL/2f9sWAXzbf51r9cj6YrQONwZ1Qb2YgmMAgmMDN4C6K9W/bXdHQmlJqHbZ4MDQr8VeGl+lmtDmHuuK9nN9sGiLWLuaYO9ZxtRyhbqBoshw3pGz7c8HZefmt25+Y3XzX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SgZW2bqo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SgZW2bqo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F55C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769923433;
	bh=kuJyztdVsX0J94UR6Lf3/pQsqW9FMIa5HstJ2AcQQtk=;
	h=To:Subject:From:Date:From;
	b=SgZW2bqo7HZVt9C27xvhsvfPwCKIFblnsi0UvHO79BKjWL5393n7mcYqHxD6caUYi
	 0vLFSPtcTlFgPAf+qq4dS3Fve8ZP9dKaNiG6pN5wZaRoSE4v5qUaDCjsRwPFCCmxCG
	 1LPYAHCdNnEgk6twyTwwSYCG9zRVTF5P8F0KpHPyHT7X2qjlAvyDcau/pmu85vk4sn
	 lTdsE8E7EW+SWqJvx+3xo0OgAY9f6mPjMjiAF+bX85XyYNnEJ1ITqi1/Mb5makt5X8
	 6dpqgL0LL573q6ugvzmYjvVof1eldaPtqZTxPX7yIpzwH86FINs87uZmCddHQtTKUM
	 nR1ZSGygzzPnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FD8E7C711
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176992343358.31906.12694909838566655970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60f924c8d49bb7578a77e0e16eae31054ea467b61d97fed0548cc9dc6b31e0ca
Date: Sun, 01 Feb 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769923433
