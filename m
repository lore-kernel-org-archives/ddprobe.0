Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555092FF144
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 06:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781505394; cv=none; b=gaGWxhIDMAEy5K8G51M610sjdhfseIIRDPS4mu7yLPhrml3+gRApRFsvSq8X0EPtoEz8IeoT2JP19rmPjMSvc4/Nec41vBvlj+U1kCFeviPCAW4YtgAzaA32Y98cx0H83jKdcbFSvN6Af35jC1IlrS25jiwUQqvnPy2t2zi1B/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781505394; c=relaxed/simple;
	bh=9rnEccEqkvh7C1c0LCRrVl1UslRM/iMg0ug+KYDUsNY=;
	h=To:Subject:From:Message-Id:Date; b=DMaLAorb9fswTzAVNzRDe34fQOdoDF0fYqAyyaVMmcVDPtJDqTlsMT2W78d4ND9cy1+FLyDUbS/PN93LIuzBUWCUqM8+mjaE5RnokpZE+11oiX0ItE+JXlrkJs0WNBZDOwiQTGTW43/XscwZuQSnTeWoeHoQPEh2aiHNmOwWFks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cy3qduOQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cy3qduOQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D135DC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 06:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781505393;
	bh=9rnEccEqkvh7C1c0LCRrVl1UslRM/iMg0ug+KYDUsNY=;
	h=To:Subject:From:Date:From;
	b=cy3qduOQSV7tENiBIWtH8MI5ZurQ/OVa5EoH09pNwn8OJ8XahqR9iFagyO7yAspvE
	 0m/oN0zOH8jJejGmH8rq0mwQFdgI48wRKP7NXiAGPUQe9NNVE6886SLxWOO3vwXVny
	 jOvvtFQzQ+HlU8qQBNBgCG6OMRVu/4YRZFRebIfi+3ztt5CkWinWR20gBXy3I40FfG
	 mFTvi0NCzECbSaN7it1b44zdXHK1AON8fXXyn2Da0oKNWBzkr/V+M3xn/STel03Kbr
	 06EfPMgk5VUQMi5k5CNT4ChSvwAM3zM2KTtKpBbwLYllEX1Bwl0Wg8m/9iZRdUYUiy
	 +zZlHxhazyokA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2EDACD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 06:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178150539372.16832.2874719075349530796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37308cede33cd785a7f4beae9b21c720cd6cc71ce72ae849f2368db9a0545cb2
Date: Mon, 15 Jun 2026 06:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781505393
