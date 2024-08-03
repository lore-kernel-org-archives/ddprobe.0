Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401B0B653
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722648954; cv=none; b=YcNElmPuU4m9Nh74JeDDslZN7soSR9f84q263TtEtN0momPQ7mZEfCAeVIgFp/8PHmLowZZaOwEIZPsJHPDnJ3bfcv7YEXHqBkoBQ6kwyducFTlwkO8SVV5CB3BactunyzeFTtrcQQ1oFcccJZ9Ch4Xut3mJn8D7oV2LrVHQfKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722648954; c=relaxed/simple;
	bh=Z++tZq3gjd27rgEai5mMZRCZx6tJeM8iOVHuTY4Hx/0=;
	h=To:Subject:From:Message-Id:Date; b=Rf1e44mfuFAEKxs7dqCg5s5g4RARY2rEeav//L5axUnt/rYyaaudfYUTN+5QAWj+UvYEXtnI1IYmIR+oxKYBwVSBU1uU9Svt/Qc/K37AHoI5USLS/TUl4kCAtwMEI9a0mUOQ3V8dqQ1EbiGjJoJI3adx7yzNHXRejCri1oW3l/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MmqwqXgp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MmqwqXgp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE9CC32782
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722648953;
	bh=Z++tZq3gjd27rgEai5mMZRCZx6tJeM8iOVHuTY4Hx/0=;
	h=To:Subject:From:Date:From;
	b=MmqwqXgpRI0NweqJGXVN6hQZtk22yZwQJdv2WmrYuWvG4Em+voVKhzIJtB9/DhEwY
	 b072gVD0MLgdBZEQtBPB523M31AmGHkh277cAC1RjT0/hbmYPLne4pL80segSeFfpU
	 rSjpfH03jp38USDRSs3nnHHGB5Nu6CnKSHl+K9uICO+vyeB8V0naqI/rmGgaXLjtAo
	 Jv3Y5Y/fJa8LudNQVFH+PJaL8vpodPD6E1ZO2J/ek2uvXHkIizt69yWHpm2koPRCFX
	 kYdOsnQcadeKhWVc49D67yE8ows3RPc/47mW5Q4//+tSd1neeHPwntjy6CZBsZpc75
	 nHa6F6kncf3Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3E1EC3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172264895359.29078.5504452371948200930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09b703a218ea83a3de1bf83c3481d7752efcb96692e68915eb7a8a35003936aa
Date: Sat, 03 Aug 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722648953
