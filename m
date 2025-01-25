Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CABB206F06
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737782754; cv=none; b=H1tgtNNr4krZccqs+uH8s61u42aexs2kpbHrWFReE3sZZewiG/gN2L6G/CY7Fhtg9GPrMonkoQbK2CGIH7xZGhpfAdjKvmmbU+gtREorEjqCZBC+l4Iv8i+MW2c4NjvwcPb5QBQCLqq72n57NZLJcpU+oP24OQMxKNnrXppN/Zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737782754; c=relaxed/simple;
	bh=0cPUB9DMv8clzQEegodFtvsw6XEQS3nIVlHIRhfz0bM=;
	h=To:Subject:From:Message-Id:Date; b=l6U5ULDlW5TX0up2O2kTb3ToQnO00u5jQ1eszlciSAnXn7FzUZQGG/vW7WYXwikgSH5DP/zJI9ZtLlk57Y7ANvVMkbjG0vl0h5yhGUEdb2K5nkp/C5uashGFOwBvpoXRti2PV6FX3u7meORdQvnikfZF2tgcwWn9KEJLiJ0m8P8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJBdwrgb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJBdwrgb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB22AC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737782753;
	bh=0cPUB9DMv8clzQEegodFtvsw6XEQS3nIVlHIRhfz0bM=;
	h=To:Subject:From:Date:From;
	b=fJBdwrgbUrNzgwOup+GycfJXMT0LRgoFtyPIiMrbw7ofrHb14/6gv53Oox+fixZxM
	 OErfwpvzeX9oP6AD4j1tPuogbmKVaNB9V0WVGYx3hCablAjdMbfa0r9yQVE9494Dpa
	 YxioPMI7hbtJo+Q7ogYai9tC4znB2WCi7QBuFR8xde2J3Wx4MLoJGqTCSyZIVVh0/8
	 4ErSeTnkJbi5lsqJfTUX+cseQmK9zZXS3rEQWiQd2IwnTawmL9r2L6Rlw3ut36Ssms
	 awQ9YGeLfQEFVKNS/4ccSDuTzc8Uj3ZodgEYNUKM5gpoYNLbIdsQEWaIZMXXmTrz+r
	 z2gdXLXF6Thjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987C1C02182
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173778275361.6393.3098374947927142436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1410f96350e36072e63000a91f23c7f0a5404ffa56bc680dd7f063927aa938d
Date: Sat, 25 Jan 2025 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737782753
