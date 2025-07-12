Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F04B26B778
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752308994; cv=none; b=B8uIIUXH0GhDUtcsy4zlBKXz76xgZS9Q6lpph0//voXpV+WIjVvtEBevleFFuE4uLUXM/xkLlQ2sRJXhzcDNZ2yjZDi/zZnhtyysZSAdnysW08+I4oxD9FnyIBFuI+1cozZ+sUA6ACiRIYPCOxr7XH33KDPxhQKBAtH3lOg7IBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752308994; c=relaxed/simple;
	bh=R06bz6GNx9T2kVU12onq4wsH6eWtrRvzwi+c/Quv3k4=;
	h=To:Subject:From:Message-Id:Date; b=b8dj+mM1eSmxM/6muneZbtsHZ52uh0p9otMAvjXiXNRl3zYP5kV5X5GbzMJ2xEdSUWGRfiUZTeT6fIDUvrGFD10uTJ54K0bzYUheuU41M4zZS6CZGYL/w03G52DeYaZK8e8UrGOhsXYZ8/YpwR51J4Y44F3CZFyQ1+BbHEfnASE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZI2XBne; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZI2XBne"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5D6C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752308993;
	bh=R06bz6GNx9T2kVU12onq4wsH6eWtrRvzwi+c/Quv3k4=;
	h=To:Subject:From:Date:From;
	b=OZI2XBneTtBcVlB5Pvc67j4QPDJH886Jwq/s+4cC7c95GhQ5ZnS4a4yOHwgHkq7ea
	 06X4x8pZKHS6cHJhiQGM5W/gPSL52+NqIP5NQfWijTXnvmGsUIH/dSXEQmwwtIssby
	 Li6NdPsmsNS/wRkEBHW10EVqMihfGcGGeKYSvSN6wWEwrb7oTZh9Aj37sOnsHPVcKk
	 M9T4iLAasgq++okXa6fnSKkFTzJbNm4MTAx8J30Sv7mBm9L5Ln351GuhmGollrrB+y
	 HYbNscnDEL1od+sfRIOJtnfE4dtnEQ3m/3AGKkK08PsvPDl2kfDM0I2XHnmC6LIqG3
	 ghRyS3ajo+8jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C63C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175230899357.10174.8680943127757378470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1703704c133786dff6a2079797ea32a91e89bb7afd38e895ed5e943d7d6ca3c8
Date: Sat, 12 Jul 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752308993
