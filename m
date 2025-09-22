Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28AD63208
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758500995; cv=none; b=X5htLR+no+TRhKMKwFNh6d+FCUKg5YJQeHmxwYDWJuG/Kxq7/rM3WryMxg0rBVtvYiDjq7Zx38siwMLcgz4z/gP6Te36rB9KENKyTekeS3i9MOwsr6vFHP36xjF4BNwzvm8LuhD7JiUetfjCoEjckxryOlzuX1t/txBWVWQ1sXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758500995; c=relaxed/simple;
	bh=kZlAMmocMuiWq1oH40HKj2y507d506wxl85N/gV4bpY=;
	h=To:Subject:From:Message-Id:Date; b=KslyTpjd2YvZCrIdLOEyfwl+qLJlzpWsA8x9hBEKUdkAEwBwaaMKJhFWZoWrlZsBztOouvR1gybkLnNI0v+5oD+pGevnAZfm0Ey/z+nC/vzapBgY4/h8hYRyOOGp3eFOf3dG/QtpUOUdRf3971lVr+F53QRxn9WnLaXjxpkr+5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F3bRB8ab; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F3bRB8ab"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D19C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758500993;
	bh=kZlAMmocMuiWq1oH40HKj2y507d506wxl85N/gV4bpY=;
	h=To:Subject:From:Date:From;
	b=F3bRB8ab0TwwZIHFVZSXMBpn34bv1A1O2SO/mj3Es/Wzc5QJvwlJuJp+R3vyQTiKc
	 4IcNHh7vMhUyfoQiUcbtkNLwQCy8b9NxBcpP3X8Gs8nMDurkb1wX2mM2gQ+wZwOJpt
	 WhccsFiT40LaLXtfMMFcxuVP/TXgxwWCiI/6TwfpxCdc+Twujxvzg5XX+dbz/ngNGY
	 QlAWEUWb9y7CQkm5g5SrRZDeOp5sTMYbZTJp2S/7juJRjdP3XntQtg9qqe4qBQM8Zt
	 jgyMK+KInVSwyYwWfYSBB2JtVXPPUcYEaYtvxYEklpxut+1SJ64xtgDmWbfE12SotL
	 h4reaQL/fGqKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9098ECAC59A
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175850099358.29473.7034204960265135801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd1f3b404d7630eeb1cc62eba1a33258185f4928c032dea4a9a8db154bae84aa
Date: Mon, 22 Sep 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758500993
