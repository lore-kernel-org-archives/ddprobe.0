Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289EBD531
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756863594; cv=none; b=WSbpv1PBwq5idEscBQQReowce8CYd/vbwnrUlijFyOKaJmaIPpsGe/29RyOC+9WQqTE3FpSYhYFJM8l3GpR1B5dUo8lH5Ye8ydc1xFOBl3Ska1c9rO/BgyGh878tWIpyzfxnvyOy+APT+epHeFhDANB2ihiOLj8C2vilaa7Em5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756863594; c=relaxed/simple;
	bh=yMPrbSnoO7sREXibQW+/qAVoQM/TGiUe+r09oXTvQCM=;
	h=To:Subject:From:Message-Id:Date; b=NPad+0t723lHG9VPFEHdFu9A4++hDve5FQtJCWWT8o6Mm4fbXf1fwHPrE6HChA0khRp9XDr/1CbP7/+Wd593eUdGSnNsVUAMv7l4NqgWx9H8bUemVHTAvUA65lLCayLry+tZw1WeWR2JwTCQ5x0gYhNEBytMLbfjM9Hwyz4S2Xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfGG06wx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfGG06wx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F813C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756863593;
	bh=yMPrbSnoO7sREXibQW+/qAVoQM/TGiUe+r09oXTvQCM=;
	h=To:Subject:From:Date:From;
	b=bfGG06wxmsqLdfhKiJwP3qc3cyFF+g9vs/tV8VQcwAKl356uRR0WY2w97OacgjpBB
	 ZFLj81gnTG6Lm3tHUJnvJOMB4rRdrRc5Ad3TweA3kGF9RSopjQaSwouy1Z2KkpnBhx
	 LqI6va5MtIow/frzKgQuCvIlgQuPYVQZPaUkQi+2S8roZJHhJBKE4irP7YBrYzctr6
	 OYN3WU97+/wmfS2hMcvkO0RKYsX/MXg5PtQoJXh84F2S7iKJGwLQf9o4g9X+YK7hdN
	 sUg0f7oPTdPBRdaTHGBvSrjnKQnZS7Ti5KMocCpL8kp5aLq+e4LIcUOi1BTcxbCBQ4
	 YN92B/sG4XrRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8FFCA1005
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175686359357.4332.3159674419086413386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 164082f0fa6b0b331926aedc1c7cac80877b95f95b73cf8d544af7c9a7ce53d5
Date: Wed, 03 Sep 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756863593
