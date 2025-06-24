Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4091C221F34
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750744194; cv=none; b=uRHt9Ltg0w8B2ah3n+ZMTKtOhbS8yRlK5m3ts3T9SsJVbrsF011giDfrsxTRXFkM35BPaF7kB6ja0q//TkVb+OUp3A21lSbMeVGTBTSV1MC0h1OqBqKkrtASMZm0+pkciaY8JxFkwkEhB7wei8TVp/sPLw0/M6kgKQXMSyQvcLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750744194; c=relaxed/simple;
	bh=FW1oKWpgJc5O4Ul2sbRNa1+RpgA+ujLHFMHSUYBEW1U=;
	h=To:Subject:From:Message-Id:Date; b=NvTGacUp61u7UvRhY/Nxn3tVwb4nchqkxqytmF3+Ir2U9hEHwTmDFzpUC2GyraRU72OTPX5YTUGPgiCIDeBZXi1YSfd9NIuvItdrvnSUq1I2Dfn+98cZhlXRggebuw0Z4HXoxEbGTe4YtbZ5GCq0XSY+jRsOukhU/a26yl/CKHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tp5quAUp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tp5quAUp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BF1C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750744193;
	bh=FW1oKWpgJc5O4Ul2sbRNa1+RpgA+ujLHFMHSUYBEW1U=;
	h=To:Subject:From:Date:From;
	b=Tp5quAUpp99QX12ANsN/tGtxvDudYqRalihWsOHKe0BTn4V0WLu0t9r3+4uqiub4N
	 qE0Xl9ezvQABDWz5JT1au0k6uFP4YDZszIfJ0SctCXWLvVTP7xa/+R/Z3WLcuyxi0e
	 7QaUdpwgvkcKKHn4d42OoZdesEN0UO7GpYkUNFI/cvkCoA07AayLcy7bWasJYR6Sou
	 WTZlba7bUbQqBcv2dd7EXDh56YXF6IIN/J6blzxBBFSk4Gx75PXqzHSik7dUzYYyq8
	 X6XCJbNhb9I07oDrGM5k5xqNLVr7fI0xGjQwWUQ1QlNHQyEBWnJWFgWyPrdXl75Lmp
	 y5gRMuVPL0WEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91050C7EE2A
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175074419358.30217.2031783319330218247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36e9353cf4408ee8eeea53d3ece6597eed13441148727e917b3ab58749d7709c
Date: Tue, 24 Jun 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750744193
