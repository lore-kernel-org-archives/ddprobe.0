Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17118DF6C
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771736694; cv=none; b=rPWeO9TctXwxWxGX+Ko7kcu8m8vNmwmesbI0Zst1p3PJYTxhLKoYdGYLrWSr0kaHoTUDD/jOsgOmxQG0AkwaKC10aunSxhFASRKjB8uoUD+2cTMYb0m6v58J1wGZP4eGgpGFS1NSgEgQAZYOfRrgQ/+cgA7gsNma09V4LOCfvTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771736694; c=relaxed/simple;
	bh=vycxsu0hETlGIX5Ohja+SjkqicEzyfMmKIvRMNL6tQM=;
	h=To:Subject:From:Message-Id:Date; b=tb8jVMYiwS/IQuvQUyRbm6Z+CHebjKqUDlYQpk6xaHDsyo2yI4jKQSIOyMIOzVMQvzDqIhOg7oa7qOhzAqqa3tqFJDlVto6/u/NPQLyK+fH3IIZ3ZGNBcue59S+m+AX9SN6Ag8oRCxdMw+ZZzRgs6jy6WQVKsGoyQPSz20Q9dtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJWz6r8D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJWz6r8D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6886C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771736693;
	bh=vycxsu0hETlGIX5Ohja+SjkqicEzyfMmKIvRMNL6tQM=;
	h=To:Subject:From:Date:From;
	b=fJWz6r8DdKW6txv19DIztb9KftkJ26fHcPqeTjYyYhpwHLtIzVRPp4UHRsIerH7uq
	 v/dv6ZISvac6S/KR+ZCBrmXTB4wvhrGroYvjjtTYtY54Lk9bVaKGVMUK5sMyESJQlS
	 8DEGo13aMGPW4zZvEBoFLMPgiKm7+gYQSC507sBs+habFjATGA6KxCX04WhaBm33Yn
	 ydMizQyr3+yPxAl1/J2dqQ53513MCfZn793KrhkDGwmSaul4M++BpWtTxMHHjUxgMp
	 qlBkbIJZ1R3+UPFsRNneF5FPB1UVlW6RPXpsTVJ5G48HNq+x0RTCvo/ypQ8E3CDope
	 1GfU/tiF2fd2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D8FC5DF73
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177173669358.15762.2995126302104805343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5beb34ca9e95ce018cb337b603b54eb54b9866654944299dcce1de2215938a6a
Date: Sun, 22 Feb 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771736693
