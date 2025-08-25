Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2540125A2BB
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756101595; cv=none; b=SW+xZB5+41xlHx40hBhRlWuRuJMV5IZeoTSgTtaEWDqaGAEd1zhHxjfZ6VZtF6RYxgbxD2DKmlaSf7di5jKYqneD2ERd20a9HJMAQG9A9zLhg60scdHNeFgRCjgkQhR3BN8xVKOL58KkfGGAMF1EUt2g+f+l1DPb6xZPQXeI5rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756101595; c=relaxed/simple;
	bh=5ghP/HbnffZ+ds8pNUoABq/PfTFUF2DU5vx/R6Sq9Oo=;
	h=To:Subject:From:Message-Id:Date; b=TsO49a+KbJxkxHYCZSc0yRYD1FQKWi/qZqUteN//DIY0OV8cotXHSYrDxuGhCeQHQ97lKtBHmM5Y7u5Y9dFMa8I1vdQeZIn73+pP8DwxoCFGhv8RX/7uOxaHZ0zzSJI97OknHrDs3eOpJcZD3aK57D212N8xgSu3xaUNPGGvgC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FLMe0MSe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLMe0MSe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF72C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756101593;
	bh=5ghP/HbnffZ+ds8pNUoABq/PfTFUF2DU5vx/R6Sq9Oo=;
	h=To:Subject:From:Date:From;
	b=FLMe0MSewHHSaTjjH5kY20o1X8o9j4piOovri97P8TFTlHZXTMUfa7mVBB2xwUX7i
	 kRqOzNRdwguCSPmj42utS91vNYmkOoL3Z0I7mvG1pmly8fMZ4Nh6Hz3rUQxqhUHUOu
	 ouJHEjhaeiRd3+L7p94yKrGzREVPZkp4rlxShjxlt3F6M3PY/9aayc7kdGsJX0ZiO1
	 kpRBq9T0IvZEIa7ovSLrPhqxEWUy2AyQxYV9tNddevtRl3LhZ6Sf7eC2ejAIY/jYI+
	 XVua2GysNEibBwi1ZE5slLXj2i+r4HN2UkTxen1XWewb1xT8//krbzm5RobEdKBG4F
	 guCUw2qY9hWdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2CACA0FE1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175610159357.23336.11927245142040559057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bcda991de7cc581234027def97e51926525fe7035c5b242d43ac290b6ee07c4
Date: Mon, 25 Aug 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756101593
