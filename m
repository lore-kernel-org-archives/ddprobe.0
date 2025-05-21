Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BB0BA27
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747808394; cv=none; b=plAG+ukkcJzoPz34bX6yxATC3MYdcPJJs5yhnfXOjh4qotVlOCRDvi+CWuArGPyBMRDt3HVhRYvhWcICdIoyrVhuf7UWyX/lsypy/dJrHXkseC/G7gjoWVidPnaqUuyK2bL8PA8ROpAz12ySdNIVm5NtrhZO7hvBxzEDrBqo6Pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747808394; c=relaxed/simple;
	bh=98BZdfBmkbQNQ8vuIWFctMwQLCUzH3Yh9c2LkiX3IeI=;
	h=To:Subject:From:Message-Id:Date; b=hUbsN647TQct4L4+VNBEOVCsUb2T+0KE0RLY/1DiAydZyJZyUZVEKysVC3MDiGHgzERr7nx9RIcq1+wA1gS4qN95Z6D4fIl19ZIGIcl+hsYMtn3GKC6ktdZPJVOG2+inYbmD5IdBVNJVezh07/fEZjEX9SNbREiMc42nPQ0Cz+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMterGVl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMterGVl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E2AC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747808393;
	bh=98BZdfBmkbQNQ8vuIWFctMwQLCUzH3Yh9c2LkiX3IeI=;
	h=To:Subject:From:Date:From;
	b=KMterGVlz/hgSIPBuYbZqfDjKBNzoDoMRMrije2mfH/xvjXpinHOF8k7AG3TBn+eJ
	 CwswvaJJsvQyYaCdeKq/YMfZCbDOUaCmjwqQz3o8JPSH7llKlzQDdFTbYt/K7QHU7/
	 AA6HP/3B6Ou1rZzE0UDQYXuG0uT7TzOPFZG2oVwnX7mIC8NzSG2ZqVFvbBmDT/RO99
	 1s7tNimOQV4ycayE8LG43N8IebN1mGJcZ1B3Bm5XVjsw3FUGSAzygLx7TcMhoQ7te2
	 6IF+dQuwQl9FnS4Qgik+4lka+nnicc9PZ+HfO7GlcfwfDfCoohH1iXxaGaOoh3QH2W
	 n94UQ0TA0II4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB35C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174780839357.5322.7138784887609464212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f9f9d079894e8031fe6421260f3b71b0539eceb1dd0da676d8b3ebcce4a02c5
Date: Wed, 21 May 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747808393
