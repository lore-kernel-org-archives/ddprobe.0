Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3FD28A416
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751285994; cv=none; b=L1V2hyIp5MWogcL78dyRGe/f8Erj/tfPoY0y0qRriHJAxTWkOE9qZD3XPXkmfclTRJOzLkgWjI0Wfj9TQWQHe6oDhKTgWkIJ3xwKKzy4cnTHXTq+sH7rqAXlVgPsDWEZ2X/d+R6lw3NbyJllFY3RFQ67ywC8Syk3Fr+urm004J0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751285994; c=relaxed/simple;
	bh=Ac2WTZldb6B+jicHNbm/Mdub2V3pkotBk3WDKRBQJzw=;
	h=To:Subject:From:Message-Id:Date; b=IwYYSgWJsJ/+UxyAYvmoH1g/63i7OxRF5lkNzww7bkwqcJpBqMMCAwHAI9j8qnYfdKARELzUqHQWwYtmlY9mqayDRlGdRQnwiE8hRFMZDidO84EwAnd65O7/L00nCRqNbSdg81R8wanYX7fdOv0AwUqe044ABplxpszie5zg8f8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3diYI9W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3diYI9W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF68C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751285993;
	bh=Ac2WTZldb6B+jicHNbm/Mdub2V3pkotBk3WDKRBQJzw=;
	h=To:Subject:From:Date:From;
	b=E3diYI9W1PSFjy2lvO98nupALVFsc9U5fcoVSeDN2roiXL62Tx6rQUGIpGMk8wKSW
	 rohJyG4/HjXGDm5vIcxfZyLuBtsQXXkgfQPMJJ28n63L32l64zV5/1mfVZtJM/j2Po
	 FqXOzx71E56LSHiu9VqzAiXmfhwgLNuk9OyoDDYUuJ5IO1yzJONfvFQblkZWR4fz9F
	 avmuvEOYAUZshW6uujt4LdV0nqCKT/7h3RsIjLB06RPm0YSSe8kLpczp51o7WEJPge
	 AzB8vFicXO/ZJYDw5tlpR10lRKVPp43d6CncBJjhfANKarz05a8ggFTPneGmR/TFFM
	 6EvB9lyJ0p2NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E876C8302F
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175128599357.32185.17765456173303928142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e07c77b1305b6cf877b4048a876624732b1bbd0fed29e7cb6677f19637631bc7
Date: Mon, 30 Jun 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751285993
