Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB737FD
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723939554; cv=none; b=tWOCYBPmvAQQXnevKmotBpbApEsNHiCE1pz55m2EdEbfqWXDM7iuJl2K/H0iBx+DMkaW0hFmzP2HaQkn7xIsyCk/9Nc6YzYDNGXIx6IHWmwb01+N7koLFtgGRkKdFGx/bfQLrQJjxK2pyWw377vlSLnRNQeVPUZ1Sqyzm7x33Nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723939554; c=relaxed/simple;
	bh=NnaesnL5ZIYW3dNTiK2as+TgLj/i+TUZQC+5YNDjR9Q=;
	h=To:Subject:From:Message-Id:Date; b=Kmcp9yU8BleRepScpvc3PW26jXq8ab/oed0XDr5GRG0AqKtzkSv5DuG56KxFXzJgYpxt+nWDc8BxXy8vbJQCSWZVQBJPuOA9AhcVUVbIXqCR2eKu+IZ0CuiT0J6zzohe63RznXGMjXTz319MgLwjRXKOh59Uao4k/HYH6myVisM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbYHLnkQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbYHLnkQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F07C116B1
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723939553;
	bh=NnaesnL5ZIYW3dNTiK2as+TgLj/i+TUZQC+5YNDjR9Q=;
	h=To:Subject:From:Date:From;
	b=rbYHLnkQH59P2oop7HjD8RFb4h/MNeuCSLGvCwoM+yEM6IYobgHFysksUl93XYkCY
	 Td4JpwQC2aYXjy+xhvVj+DSMoa5i/T5aD3VBWbcyWnLItCSS9FkEDgILr2q8qe04WL
	 +lBT+lXlRV+BBScqSgRTUYBg3jvRlFlDMxkJncIE1e6Y1gjHOma9iJabIDASBv25sT
	 B+4aJgw8lt3wR/1EZ/Zm+UDT4GSUGOG82NXZRN2Sp6jGuSvxioTEs4hPGd/sDCQReB
	 QdPr/P0c+fmfbJLC7/aFhSs/On3eiOIUcnJgjZgyplNgsferLXgaRo4emO6WzC0k+T
	 50us1ze6VD93Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8E0C531DF
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172393955360.22281.3734728818028150248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eb6e6740df17feb44a8022502b69e7c8897a90c41d26f3b67e596042ce79e8a
Date: Sun, 18 Aug 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723939553
