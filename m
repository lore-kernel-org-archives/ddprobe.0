Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286491F9F7A
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754320794; cv=none; b=LgTawm5GjK0W3cubpAq7M97D3EG0cbuFZ8P7qEhtEN1oMR9cJ26ylAilFrORag23d4+coOyw1AiqH0ZXe7DlFCakodbiu8cfiGSnZIZjL0zoRyBNHsPtcmKUYvnVr40/OHmOjhD87UzjgiI4DBL01TvE6moLYhO0sR8vuy4TCCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754320794; c=relaxed/simple;
	bh=5oRBv7cdqDDn5qmUdSModZrL9Clk5mKbKAs2X8d+bPo=;
	h=To:Subject:From:Message-Id:Date; b=cU2t++FYNRTlCEFMideRSrl2eZrNKvovA1s4TM8C+nhwMls93ORX1WaSZO12QVNKWssIs7RB+B1lH6GscUer1j74x0uoXCUza9nQRJW6bqz68CC1W9zLK+noM2QoUOMsptonD1xWC2whK1MAJcManAhhBzDNssNVVo0Be5+sKHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJdh/A6Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJdh/A6Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE27C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754320793;
	bh=5oRBv7cdqDDn5qmUdSModZrL9Clk5mKbKAs2X8d+bPo=;
	h=To:Subject:From:Date:From;
	b=IJdh/A6ZObrsSU/hVKz2AOk2nJ5tT/Keq7spKD1lOfXZCDeT2KCHiC42S5UYiRkBR
	 9PxFNw+LkNATHbyqw3mgq5wvFFjxiJgaSTcD8MftOvJIZXofhI0chym+yPJt5u363v
	 mNkauurPOaxCapi3nxrAHjIfuAFjOzs+FRTdHFjLbhlD2en2Xp4+qlJTIBfw6GLGOA
	 xCKIwVdQRMFL0WK/4Zd7EPQp9cC1Nidnp3uMEtSZw7n0BQ5IiK7Cvq2XxhIfvliB0I
	 iD0ifqNWmAFWZfDL0f9PZ/hbv8K/Yqzb2ac2Vu1KB2Y6gV2EeE+XoZgEWdOtrgUqFA
	 +bpmhMJVTLXJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9028CC87FD1
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175432079358.20579.12414784801820302284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e768a89871abf192dd60b084c60612e2fbd58c7e1ce9fee8b6857db452f852b6
Date: Mon, 04 Aug 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754320793
