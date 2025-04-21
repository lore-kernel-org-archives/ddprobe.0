Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318CF1DDC0B
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745238594; cv=none; b=J5HCEjIPYDnLI6LNs32o8FzfyGFHrmwKpdbem3bgfz6ssM2hZBTMJbHw/qCsxJs2tfOfPSJUrgaP+V4eUZ6jX8rDHBih6udSrUhNBwnEuMFBfiCofJSH8d8G41AMue2bRwz8oMtMPZei2rx+2cZn9UPbZ5qn/2gRFujGWsYJJYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745238594; c=relaxed/simple;
	bh=lB2l3sWFnXyspcDJLzWpRss9psHkISh3zSB3M/CTOtc=;
	h=To:Subject:From:Message-Id:Date; b=eMkNrhOhGGJJC5ekcCHgR8DEgFd0ZvagCkeVheiOyAirAEZEb2Hog+T0YjitzntXQxRTxTIvKU/i+AKwC0363EA93QJfmVCINqAAS9VqVgjncKgliP9JDrrvdNwmCFaplpiStxF5ON+zCNWZ1ZYkyJxhMLT6oo990xzDIXnTizM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iskxpdPs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iskxpdPs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE017C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745238593;
	bh=lB2l3sWFnXyspcDJLzWpRss9psHkISh3zSB3M/CTOtc=;
	h=To:Subject:From:Date:From;
	b=iskxpdPsG85c0bbmsBEkOj/lzJfcuj1q94b4zFVV6zGTw8xtk5FVq1qTolkH+Po9l
	 1A5TyUUNDVDJc5I2bfQvAkxxc+6t/R0HCu6GFCn7JoL8a7D9BHu1oUXjoGeOFtSHo6
	 i77oFVnQmxzE0vovdDPD4JMT/YEJKmTQG0c//mTHmCn8U6lZGSOQF869WD/YVBTTi/
	 xYzSrKepuUxO00kKEFv2oqi84FNBe/Th/F14eKtO+y4zFcS94X+Mn/O47NbQGzFyZp
	 PRqjSr1Ntlmh4HZT2918M6GmuXNNS1QwMvEfupowsKaz1rEMhe4uChiKqrDFFBe34/
	 D3F0g1sdS3XZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949BAC369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174523859359.13973.12597409720932147777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c11dc05ac52d26c465599a8202bca73472e69374aea32140f53e3553b7128d9
Date: Mon, 21 Apr 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745238593
