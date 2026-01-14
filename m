Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E4E2D77F5
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768364034; cv=none; b=FC9Z/MMsdKPJmi1to4CZuYLw+vAVYgTN6QEMYjfCjc2loIerYXT4sqLMCOhzS8lQjj+D12kFtsKyoKJpxd8UOhhmvZvlKUmd5yW5abZy4YMPFAkPIjpIsGvyX9yuZzftO/6mVhftXM9NO3Q+M1R1w3uUGNESJY6HXQYjiPE6pho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768364034; c=relaxed/simple;
	bh=VU9csRUBIAJLDai4TQJK7OonIsg2owQiRz4BfkNQUe8=;
	h=To:Subject:From:Message-Id:Date; b=Ab+bfszujYGdfk8fzY+yJJ8ejbEt6goDwKLYuy0KfWpcNgiCMw3h/zOW0sCbTcfaHm19ljRyWCkuhnPZxMXmjMfCIBh6iKqDgDXThU3U8G6T4LI5mirqesDx81M5bPmHm7wwvC9640n92BZEIllEdqJiwSeGsnS8TkqJqkqrmhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=suVDNniw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="suVDNniw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6160C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768364033;
	bh=VU9csRUBIAJLDai4TQJK7OonIsg2owQiRz4BfkNQUe8=;
	h=To:Subject:From:Date:From;
	b=suVDNniwqQ1tioPYS8A/XX0DmNYXGKe1pcw8BGgdWZQlaBVDnL58TWRW2O/9ePG7E
	 KRJlhyPrViczwhqELNUq8DsHvYZHK+yPtgyWoZlzuCkTclbui80TE8oryr/dItl28W
	 OoL7yRPmbA3EWRbq8nx/S7gwFLpYSsmIEOoiDPPo5yyMBNrQ/RjE0FvkuL6F9Qt1PN
	 +yRGxQn2VxF+ulOrQXU9aQ4OBjYfZFpCm3JpqsvBXnl3hFH5nWCGC96Rxhck1JtbI0
	 of3BZQ76hJxBzHwy/QVTNYHWP76ftGs5GgWjaCe/TerRQJ7oo/DUsc9WLYQ+n77qqQ
	 VH3x6fMg8XyOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95295D31A02
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176836403357.19789.6660552998899043212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2696a2d4bcc7b01206eb057f0c4eb5df44657e568e82535f16eee6de79caed5
Date: Wed, 14 Jan 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768364033
