Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2185A3033FC
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 08:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778833234; cv=none; b=eJU/QEn7hocY7I3dqatJ64b1omPxSP6mFQpWHlSzwYHDpIDd/WrixGzvUIa/q8yRaF0bDz84d9uEJezs4n8vjxrzxpj7ra/m6dhPmRD7hDwDreQi9d5PKM+WPnB6Ex4UVE80ek4NhEU9lBHn/3FUqjFnNd+cBGKzOWhNkNzdvWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778833234; c=relaxed/simple;
	bh=be+pjLQ9akH1b7urvMPSKx/aIPfc7AILLPWdzwUSvq8=;
	h=To:Subject:From:Message-Id:Date; b=aK9NXSZW7czoZGmHKl4NDBu4/2rmSoQZ/uLTRj2z+DIKSV160+t3njiaRIorm56jCnpGfQiFpTICPjtboo2N8d8/UEQDU0dAvqFq1fEjiLgKi+8mwh5/d6H2mbl5rQytPIpROfKjSLyFzP7GNGSQS8V9So5x1OoT9wEKpuc3m8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NvdPrMEB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NvdPrMEB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C44B8C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778833233;
	bh=be+pjLQ9akH1b7urvMPSKx/aIPfc7AILLPWdzwUSvq8=;
	h=To:Subject:From:Date:From;
	b=NvdPrMEB7kP5mtmUf18cfr0LYkCDq6Pt1w3nMSLZkg7XWv/L2RqSTwP+L4gQ6oBku
	 ccR5YVCz5m6sHQPyYkXUlJMYotjifhhX5FqGA4v9aqf4Vlh1KnwU2U3YVeV98PA0UZ
	 nA9Ak8PyGCYKHvBdChMqUasGiEQOliostrk2FzjyhJEWA3VVh8+dagcTV5MvNtw+o/
	 AkuZSHZxW2mXC6Y6e4v9Fr8TNVqg8crkDbBtrGYlDbarxbF/CazlEUxzekiSArwriN
	 A6y6GdWYVUqRQIFuKR/7FWxqjDhgIys+x7zxRRTRVDfIPivPwH+h31XvfMcZRpun6h
	 bO7ExMKYFpsRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4769CD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177883323372.23724.9985142733011200015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83ff02071b4d0007aa065b84ff13b87d96dd741ac51d574b061393d02214328a
Date: Fri, 15 May 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778833233
