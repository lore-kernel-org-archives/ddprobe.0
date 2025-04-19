Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5DB1AA1FF
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745083194; cv=none; b=aohTgpEhKVGtUKlBkncMMEg4EFIkAK1TP7+o3dZ5dti5FPwCjN9aWjVLXtyrK0ur6q13Mgx1XjGLkFvNcghvujkdDwy9G8JGirTPj0aYU4akfUxeb7NNVQE3CEn09tDVSULDFaZTmmsNzm9b17X8GOW89hhneVx84u+2Ue+D1kM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745083194; c=relaxed/simple;
	bh=9VmnqfiqpoITauWPNaBE3juYm3ZZXXPL/XCOdR1o40I=;
	h=To:Subject:From:Message-Id:Date; b=EPOycQQHll4W5MEQZjweXFXwSDBaqpX769sTsmNCbrc1o625uI5+OQ11A3tV6UZYme8NyFTVW1NanVf3btHO0T1v1XBzCldXNJT0nn3SM4JHKUQHAzqooPTSOX08A2ZhX+CTt9KeMQnh4AkNE9M/5WMUVQDzngYXbxEchgxj63Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcJxn/7K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcJxn/7K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA000C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745083193;
	bh=9VmnqfiqpoITauWPNaBE3juYm3ZZXXPL/XCOdR1o40I=;
	h=To:Subject:From:Date:From;
	b=HcJxn/7KDNLVX0BuSrS4RhmJDWbSXpAXTvzuauFlSsLOjMNfjF2hOIB5Qq87Bzp0X
	 9gT/d7f+3kkz8F1mCgVHeJ2YW4Fqt9VbfUDpQ14qvI6/odf5eJDRjKr1SJEPxu9Vdu
	 tpMwCVk8hBbSCbAYvVP8YCizVFkjyoUuhgbeOXzpUAT3yy1FygRB7RatObQTj2Y3EC
	 tLUqyzX0xhwg9ui4o0dq1gZXJhGMP0VxI8eVeqAVY0c/BGCRhfpHvnMInWhqe/ydWW
	 pjhsxuUqJ47uBLEJMbnd+VtCA34qeGqQZ7y54zbcr8LR7SN9Qy4Ridc+c+fa3N5U+4
	 wCTBb0JZnsV4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981ECC369CA
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174508319361.32169.17886702388276672199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20d1b6ec7576eeec2e15c836efd29fc4dbb1060080ca7044e840999ca87a27c4
Date: Sat, 19 Apr 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745083193
