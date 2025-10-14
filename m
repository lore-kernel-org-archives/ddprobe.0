Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD402D46D8
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760479794; cv=none; b=TqFzTyTTPuPVTnCSe1TjMZ6Kcz8Y1T4wNQJ/EBIBvV6aBHhrmaX1o8foBPa2nppq9+gUAoSOC/4fEVy1U31jeCcpwq4NmOlB+WxATvzBhvCpn0fz6rnfKgz15M99KF1IuQ4gcn7iEvcGmMZW61SAxGVGtrls/T6OLRs9drERiCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760479794; c=relaxed/simple;
	bh=q/Cq0AtjDVSDMBrFdn/MdehwMgY9L5DjYwWjqTrRbFY=;
	h=To:Subject:From:Message-Id:Date; b=ff2l1Y1hexajE0xttVFIU5pnzXobEBvWvOqXW6vBQBa5gFCETqcn9aKemknubkEgclzY6qg7DP1qfPbg8xda+LxtepsMOd6g8izFiBk7PnXQ54+GG1i5flln9PLT1dEHYgEw6dubx5J7tToSKTagr6c9L1gI0HFyOCmlIfOZ6rQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uznjB0uv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uznjB0uv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C28AC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760479793;
	bh=q/Cq0AtjDVSDMBrFdn/MdehwMgY9L5DjYwWjqTrRbFY=;
	h=To:Subject:From:Date:From;
	b=uznjB0uvuvpGE11ZV6ZjY+uF0g9un9J2+igN/Vmyh6MWCXbiCkmBkLufrq/k+XhHu
	 Hz0D+pEWedQD5QloQHzTzh3Yn1u9eFqKdTqFZIerMj1f1ORTBWHJ/anugPiHqjaDAV
	 RfbjjHEdefx/9hBQ9I6RYc44AAYFWvixcLR2GfX23U+vQRfwzpf8nNltaL7U6nJVGC
	 kTIclNRSo4JXqN8l0Ov7u0LN2QqDOp3PT6jZUX8556SW9GeCnBOV2BsX/UYhzwyvvF
	 4kVmdjRFa3ERYDzkKO6DW76A6EDhu5yMn/RVRyJdxLx6p3RO9r2YRGPTuoOpb8NWU+
	 FQw3wRCwYIFIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F71BCCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176047979357.17473.1750200639081290912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 920621b264ffbaf7dbd74d5cfb47d3f200f8673c4a8dec834e298aedf7dc2361
Date: Tue, 14 Oct 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760479793
