Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A37A50
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736986554; cv=none; b=WxwK00SEn6UOrl1Miv0SAmDoCjWvp5ThMoVdY3u21EZW9cg3+nrd+FAlW2qLEGoiZD1TwsRFFKkm0feFtx+ta88xW+RsV/nrIoistHE9NNI93qySdJ9TRekW3a+bS1cT7hPcjpfR7T4V0JAWNJgT7e7X4y1H6zt/BBolyTiBULo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736986554; c=relaxed/simple;
	bh=r3wDTeMBHOVtmGh7KDDtV5JZC7E6Iq9VSnLPXmRGeZw=;
	h=To:Subject:From:Message-Id:Date; b=W8aK7CiITImRIv4DinfGQQ9PXSQujsJgqnDbG3FjOvpmf3qcyVFNRilBBH0lKSZuTVLAfU6xczbv2qwesc5UxBFuuA1iUf8GZRYA8aPh88QKbjKYXK9xQ3m87gZUi9RHGFzQof9NvTZt35gJMDlmfwBF6Pbd7wNyFwKjuFIKMmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X29k5gEf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X29k5gEf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADB9C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736986553;
	bh=r3wDTeMBHOVtmGh7KDDtV5JZC7E6Iq9VSnLPXmRGeZw=;
	h=To:Subject:From:Date:From;
	b=X29k5gEfqNg7u19XLj25R0VYdoQ7mD1Pvgp462Sl6eJDDxg6+ix+Zoh/yEU6FfMWa
	 nI43BFjjaMYA5hWk9xgetmmWGbQnSlff0AgZJgteSOfl/5lemkGtnDW5pRipZrmduR
	 utzoumi1oG/x90buKR2jx5Pc+Hs7Qz2IXTx0Quo6q/BlMsG426LUVO1uTnEyvdJgdL
	 5uYSxzJJgMEPD2Or8FRQh5FO7pjsp/6fgHEqbsKAhWxP+kMzE8i7PMl8Q814bXsUHK
	 c7YYe5R3IIZRyLwP65m9cDpYLu/icuQM16SseC9Iux3rb1/YNbipXB0GvwsooQTn+7
	 Ik2bwwxO51j2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97237C02180
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173698655358.2062.5155542223243701754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68d1028224d1af9ed43c9d1c1c241e12d7eb760ad6f9e009ddd54af6d1883fe6
Date: Thu, 16 Jan 2025 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736986553
