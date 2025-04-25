Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD061F1520
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745586595; cv=none; b=ovujMn5UxIrj0n3qYKGu9vPhJhIL4VEAEfqn80F1w56AJiQcUcYwCCiGsNS515pw5UrO4RijJAMgmrhitB3aEJ/DNqUpAWGmiPRt5jSi97Jr+5aPeGZOdW4DlOdBXMxkQv4tdoLMsXq93bZ0AOWMeI+5yBH2X6LS1hypnCrzqag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745586595; c=relaxed/simple;
	bh=daxdW/LdPZ0PR9Nk3vqlcri2sV4WB6zOZ6sZd2jqqmc=;
	h=To:Subject:From:Message-Id:Date; b=EhdPXYCGYo0B09rFr6yRUoiHmdB2jZCY7Bomo9YPoGzwB4CNrqD3pQkQ/Ja7F1jNfNNB1q7CDXpp/UBFes3fUlnIlYbAnpN/NcDw3ZqXN6qjbw97JRBOOjW9dwNFyzNMDvekkbEJs5S+7UQZiwpDjN3y+BGjrnUcpK6A7zFclBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YVoorhYF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YVoorhYF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C70C4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745586593;
	bh=daxdW/LdPZ0PR9Nk3vqlcri2sV4WB6zOZ6sZd2jqqmc=;
	h=To:Subject:From:Date:From;
	b=YVoorhYFylauA/dIXLXoXA/Dp9QBfXno9tSjaLCN+BS52qH+17uNCS6BXXLcFqTvm
	 LmbYbYB4E0TKoIMbKATATSsltS47XTmbP+Tl/C7yFMU2KTER/SRsbX4ZcdqYLpB1K9
	 hjqHDYMRcF++RKv4UIVh3OZvFhczKrAgck+M4XqDEVo869017+/ny67nz0S6n6pUX2
	 QsTf1WeBPGyfxi+qpDY7RGxfJzRjGvkHJlHkZYcUUiRP589MXLlRs6QJI27rgDh9yw
	 nxwJSrAd0NI9pyocJhmAhs/GFADIFDB0l3ip4lMB2hnfBT/ehDIMGBIJYNt5FLqfAV
	 Wuzk/0zOpJrBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBCCC369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174558659357.15428.13413444233047853571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 182e30a90c994162c9956d4d00e330e8942c6e6627db82bc852f6601efa8736a
Date: Fri, 25 Apr 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745586593
