Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FDD12DDBF
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 16:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718038103; cv=none; b=NR2m0H9KxH9K+9OvOekP64fcDE3EBxXMGi8BArdHy+QVcQWbbsMYXIFmjPO29MzjipRO5tcUIuJgIQ/swuk5qytk5QHO/yE4MqEoOc9d36RKy3+rxda37pnrK/f6Xro4WCdefZ44kcyR5bqYkG6afdy4JGSnJG9ONL8td6WxtfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718038103; c=relaxed/simple;
	bh=/L/VTdKQsxDrbJ2+vbmgsVth0hnykov2uTRkM7N/8hs=;
	h=To:Subject:From:Message-Id:Date; b=gso6WuX3ZSWjR2OhoRuHawFyxwsZvHBEPJbG4Qgb+3DfahByMKSvL8YoW73ltA6m7eAmYVA9QqTSaI6bQ4RG3pEgG04HRnEJqGNm9dJ23mKEMM5Eos9iXIxDRlCgeoyV32ESmyFGwnaik+cGwmB1CJ5me3crWRnjl92woCRvjpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KrMmu3ik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KrMmu3ik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0A75C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 16:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718038102;
	bh=/L/VTdKQsxDrbJ2+vbmgsVth0hnykov2uTRkM7N/8hs=;
	h=To:Subject:From:Date:From;
	b=KrMmu3ikVnzdrCY8uVGbk9lwY2UZEba9LXArIZSwYQH21FgHkMwB2bR7zdxKvMUQR
	 +ir4CdT9SABEJgSLkLEeT7BleJFIgkXFtlBXGqUTS2EwXyB7XClf+U/yeWoZb7oDIa
	 AKDAtnWUM+V0KxIFd6Or5TFZsoBdoeN6AAtuktA59qtoeO7PQ7qiZrihRCfqdYLOKz
	 OovjnpmKUKBQnXxCl57K66naDgCLqDFj378D4oMs03yZ2BxXppnIy9QW0KWQ4z/GmG
	 FaYlo1ZDOnSYWhbcAz8gy3f099bGWzxY2mTTPO3HFS4KJF92vgCFeuWSBt9Xk2Ero1
	 ntqcEyO6xRC8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC80BC27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 16:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171803810282.10235.11681965210186809976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 929d4476d8b25c16a953eb630f333a785c76a4149ae031f42916b8e9196b5f96
Date: Mon, 10 Jun 2024 16:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718038102
