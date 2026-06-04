Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6B114883F
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 19:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780600474; cv=none; b=Zrl8QCot7migHf7pvSVtA8cogSBjt5ZLCJKqN0kplpZVZal64D5bbfsiBsdPQme0bkNsfCnzX6jj19hRRQDc//11zfUMpoqZyXNjFJ3WoiEfFNuu8isec7K+RwsBrDMwkT1LoDJVF7ynT93qWPtsEckPoUPKE+k9Wbxzduf5Uqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780600474; c=relaxed/simple;
	bh=AHzhgCMkuXQ7C+3Ly2stelQcZpSrkFtBTq6P1D1oU+s=;
	h=To:Subject:From:Message-Id:Date; b=K6Zkh9j4JjPpavVwtfayIOBLyTSx+ZZecCkXdsXBLLlK1tUuZl2NPLXajnHHxHIDNzsSFQyJnCmnejgvlhW/zaWA1g/1Wo26rnLVE/WNSeN0vtONkq9DcKEI2GzEO5it7dYZquYgepTMyzH3w4l8vBnzy7Mg3jVx9oLe0SBdUtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttku0O5J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttku0O5J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF4AC2BCC4
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 19:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780600473;
	bh=AHzhgCMkuXQ7C+3Ly2stelQcZpSrkFtBTq6P1D1oU+s=;
	h=To:Subject:From:Date:From;
	b=ttku0O5Jv9RULiwCvVh9gycHrxiu3i3CLlp3wBTbDWGqGGN98elbTbqzADpj2aEy2
	 ypcYXayTVPMiIRltkaekSPVQkldIZicM0I+ji6NwoHTWlDKgcqVHr6iATJMCEcNjJT
	 GFXXgLEvruiepzFOg2xDrV4pOpQdAzm7BCfFTjFL194uM0aRkG9iZXWCt4BysyKwvb
	 0hlOSoqPpLW2GNTC32gs23BPIkQWpgnnByNGUiBJ+dNoKURWcccjxLzCA2PKz8zD0s
	 mAXoKi7J/G0FPVPaRPOx23/scP0ggHVOLtHvj8tJFt7S6jbd+lA4BQRCzRnOqHDb63
	 oMPXTxAdww9XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF077CD6E6E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 19:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178060047369.305.14390250723327410786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e32fcdc4c9bfe12a4cf2ed1580c2f7ea04dc6ec018a522609f7f6ae70f745f9
Date: Thu, 04 Jun 2026 19:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780600473
