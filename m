Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABAF37EFE6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 19:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780341274; cv=none; b=IqLKC+ChPF/YYA4vAWMxSZwXrLOK0bDL3ViF8a1mFyURRu2hWQdjFJVZUahCtIvsnk2zJS13P3/EKDt2Ad/fyuLgMxX4n/g8W+gTfS+j7pWk3MePLG7h62En3gTUVEj5cp3UTclYpTEdkuJE0+udDiGI/33bomSRbkYjM8QHXg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780341274; c=relaxed/simple;
	bh=lSTuRzF7gomnB0s46ppIt8BMlXdOANT0jAFfWB5DpGc=;
	h=To:Subject:From:Message-Id:Date; b=UUGVv6tFxhD5XR1cqRqVBi/2fd1xIOUmODyaGXjJIMGMw+vZ2WW5HeaFj18DSeKZNgn5WukwwTJhG8YsChvTGjCxG9s9kk8chfUVOL5V3nvsIIWJ6/28jBofcdbul+yG+4rT8usbLtT1sH4cfgpHRM89u+Ox0cxUnbBiR0PLlIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ty4GRpZp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ty4GRpZp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC43CC2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 19:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780341273;
	bh=lSTuRzF7gomnB0s46ppIt8BMlXdOANT0jAFfWB5DpGc=;
	h=To:Subject:From:Date:From;
	b=ty4GRpZpUjgYM1lb7/fsvM6AKLzCnt23C8N2+QGYCb/A0TKVBDY50RxqkYUni8qG5
	 knWCcv+liLf3OT7q1qarFwMcvPf4ldn2OLadWy7Lc1dC8vZMHeTA+JzieDiZeWvPF4
	 sP5gsJAgWlzhh7n6uQ1w1kUwf2X/ziiQm0xKbJZzvfs/6PgHIobiZr4UdAs6SfU19H
	 1QVOlEe9msW7T8NhtzGBM9rW+H+trF/Z2RoGKIfUy6848fjtl49trutcbrZp1vY5Uh
	 yJCZ/is79vpqcLwpQAMKCsLQ3zFkIBPMUEUwS/bvU2HE6SuHugM9KY1Och/O4l0lsZ
	 RP6siNv8EVTDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2375CD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 19:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178034127371.14411.2402965245295162260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd881f566e908577b5733b0f13f89bd03f1b20a2066a1ea847e3adb51f3c736e
Date: Mon, 01 Jun 2026 19:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780341273
