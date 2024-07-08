Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 971ECA29
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 04:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720412183; cv=none; b=QHAvr2CWpbvUshA8kPUqnAeAlR8ZlNQwvd9ZGAHBPboRokSR/MFsvLBPXmVLgU6Camqa+gG+jVIfmrmgXdECf9WhqllNgtpOilA5ZUYOfsogKUnOFXLPv9InB3HJTf3Ei2hSZ/pbZQ7t+lOlphrcnPyBRNiumRYCiK7YwY39fmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720412183; c=relaxed/simple;
	bh=gQMI0b0+ff2WsbGQlrDIHvEUWjLqTPufeIIz//jH4Mc=;
	h=To:Subject:From:Message-Id:Date; b=fg1mcGFhzlJJLdT0FLhFWB92Djzc51mydpXnwQczLLNsw8JpPyPD8P6vVx8oMhHNgPWz28yOW8QJmRfLqCZ06vrrEbdLerHiMnw2736pVIp9udrUKeP9Lp9o3NAVcgv3Ep8dDJyHOFmJm96cb//o2bI4ypE/hVF/ok9wlZZsZms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXYxgiva; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXYxgiva"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7F40C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 04:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720412182;
	bh=gQMI0b0+ff2WsbGQlrDIHvEUWjLqTPufeIIz//jH4Mc=;
	h=To:Subject:From:Date:From;
	b=BXYxgivaWJI6OL9ZUMlRi5AKpJ6CcleYXt+cc1H2Cl/lSY+KsxkahU0lU9eovT4Ak
	 7QxjC2OJvoSz9IWdCtvP0rilr6IZ25cyxweHwnvEZNv3yBwgyejrJQCVZ2Lhdi6vqF
	 Wjv9gzAkIxlNforSEBRmhkLzuH9VzdW30jW0iTJwcUHhHvDXKQWeBCa4G5f8S4d8A5
	 4kJf29UwX1BvvVm1ALuH9hV5gFhGfdmPtxk8bbS377BSmOB3eBoLTM74mQdFDkQAXj
	 9FLbI4nBib1TOr1TZGwAyIuewOCoNH5cyQq7XCuNmSaH0/nqU3XV2pSwIoXaX/XEwg
	 m9lvffl5Kfv2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D32F3C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 04:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172041218281.10766.10064149698149697710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfb5b9a2e456ef2019f8c394e77d468f631b4981f45ad42b2e97dd79071d8db2
Date: Mon, 08 Jul 2024 04:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720412182
