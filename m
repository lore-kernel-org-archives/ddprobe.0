Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B3C32E730
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 17:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765300974; cv=none; b=AxJRhNSph0aF8i0vQtdjevAzwEDSGm8QHwFz0jvaIruFYvadlk/3oAHAClZRa0XWrZnLxdw3dLWaJXf/e+6f7rqsAkuT+RV6dcB679/KS7+2p6OucqPqbM2Z1SRuU/Pz93NV0r0QmbbQkhWsNrgAI6wqbSI5Hrb8vlPhmPoih/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765300974; c=relaxed/simple;
	bh=zeY9WKUpwhIdfPgAfYgd07reH9M0wcKyNeRcpi4NeRQ=;
	h=To:Subject:From:Message-Id:Date; b=Ix5MPNmSlc9Ku7DhSWrql1rz0vb9AO8++oVcCYHM3c/NEZNEY3l3Yc/r1PoEtpAZR6Ds5lX4/I53UJDpXVLTZah4qG77kkRGh2H1n1iYOtG/e/nv0BYbmFxMd4RHR3IAkYKgCFSIhgRJSJuDjupOmtlrWzNGixCzqox57J0CGHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nwFt6odL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nwFt6odL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DFEC116B1
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 17:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765300973;
	bh=zeY9WKUpwhIdfPgAfYgd07reH9M0wcKyNeRcpi4NeRQ=;
	h=To:Subject:From:Date:From;
	b=nwFt6odLfCznGBh1Rgxwhyy3cJFTYgG6BR3TuxAmJr0969r0HJw+he1mwMUU10/Df
	 CBBkv1ruVIUK7ZOEgQ5RdLbpZJYVo70mGngNA/7NU0rQkQR7y2kT8OX4cjIIyNImBU
	 u2vkETu8Hdhk0lPw6Q7iMWU7lBDbjgBt7PcBqB+jN4/TI9NXZbW/EHpfLZfdea9jZC
	 otbIiwxlew0FTJvVJEY/CElMsN6DiNG+d9tR1V1xVgmqWENIbFkG16Q2kRoKVE3jDI
	 0hbWd/6SsPw5jNNkubUuhHPJ9yPI8VwGizMCwnpt3opb5BzfWYARutKBqrbJUDBifJ
	 +SRSAQCDOI2Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932DBD3B98A
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 17:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176530097359.20527.13813047227436582262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60bdcca41e7ed53f809f3c3669c868c99661e12dc3127e33d4f15615d0735779
Date: Tue, 09 Dec 2025 17:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765300973
