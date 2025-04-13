Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42CE433F9
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744543794; cv=none; b=LVPJoUCvLDMahgzHFwuNudYv1ZB/7mDO9FM9qKoCjggK/+Q1RIuarqGmIxarAcOUsYZm235dfteec9Yivecx3Sbq76mgDL9SEeXpu/cV5XsdXKbYrxq3Gm3TE8+Pa9mDoUwS/XZuV2pd6WczFQy3t4jXCLcZekvrvWnDpLmBghM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744543794; c=relaxed/simple;
	bh=utqpNft6cPZ2GC2rSkn4nEewotZBHaY4T42ILLyOmIc=;
	h=To:Subject:From:Message-Id:Date; b=OBONWQU1vpoTnEbhYAgxc+WOZ/RspkWlxkc1/lgiwFv4R446tsWXnDsQOIf/T5vjOgYhvT7lIqVZooWfRed5jQEiu6G86If+ZsXixZwHiIQfC9injJH3BgKPlQraKeEga4yApqQMpXH9XxZybcZbXuGmm02ZbYX7HQMY4rMKPug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/9Up6Un; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/9Up6Un"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A32C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744543793;
	bh=utqpNft6cPZ2GC2rSkn4nEewotZBHaY4T42ILLyOmIc=;
	h=To:Subject:From:Date:From;
	b=T/9Up6Unkx5cB8yUkSYEJ7B4wV8/D94ZJFpkzPL0zOQcE5nbDrUTrbHHF/9sIYINE
	 fzOQ+5+UfXWICvcTNb0U7lLDxdxe8vPCv1Z/xyvAU1BLB3IYAKmwaMoku/zU/2Oevq
	 Ms3lpzTfnYujzGBDaPpRkTOB0baaCdIWa1a3HwKCeNdyCkYhXnodXztkB5QBb2wKuY
	 HCWFAt5cbzcY4laxwhhrK6ESY6mVo4iTlJobnlUDNDYtYU32U6RB9ZDC1ow+Crczti
	 QAvI9JP6/fGit2Wea80KQRylAl7zS8zi5SpZx7y1emsx6I6DQDAiURRAzOJDcjIB8V
	 1W+z5VprT27oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9586AC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174454379360.24696.8044354002801183155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a64632f4a6a4bbdf2a35bc7bf197bb1b6afc020658a08a517534fa27e0fe37ba
Date: Sun, 13 Apr 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744543793
