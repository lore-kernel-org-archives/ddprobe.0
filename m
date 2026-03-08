Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1895427A477
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773009294; cv=none; b=Z9OFTRtQRtZjuJhj+hcguHUSwFwLBzc2xbvbpPRrAIObXOjWrpVkazWF4s8tZjOddQVtBh1VhF4CyoOB21OkPOZCIkyBxMtVknJXfzWssCXXijjm8Kc6KgfzyhCZ8MWGSyg1HTjXlJp1ID1uzkvyYOAeRuXDeDDQP2U5Mw4F9qY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773009294; c=relaxed/simple;
	bh=zl/Hhk3AyDXYJx5lgMD9Mw7XvJThaR/9TWbwfMCqgXM=;
	h=To:Subject:From:Message-Id:Date; b=Aqwtd/UpFeCSK94cwrn7Pg0W9cfsgIzz0CVuIrlcL3HMaEmGsFS2kA0HVKe9BuG+EnEYy5NBVpN5uQ9/ng96dHhb5pcvtbaeruJ3V5CyaK10BnAN0SwTr1BiCa4ShXmU4uVODgMj22ZK1x2gAcSM9+2vSWJjhQBA104aTFjN8AQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PVx+jGsF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PVx+jGsF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B7DC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773009293;
	bh=zl/Hhk3AyDXYJx5lgMD9Mw7XvJThaR/9TWbwfMCqgXM=;
	h=To:Subject:From:Date:From;
	b=PVx+jGsFL/p/BJLv2GVFMJnqFqWvHCgX+WvKASIjAxKwyLqRjGDc66brWtS3lWLa0
	 0uW+0SR6LrE+FN91zPww5mJqm7+iWWqxrmYIoQBAjF0zf3kbCwR5dHBaY8iagLniLT
	 uybrCPB9cmlVukzLiA3v7DGwfMupq5R+3ibjBaxaLc0BpTG/I2pFndTzWG64b1739R
	 31zu5ZOsU7fGGpFKJ5GiMwyae9htDEhYdsz5bx0nzkj2JHpesYCBthy9+JOFU+lOsT
	 96rUORiMSqE6CZMJXqCGWU/9juClXzUwoXjwnr3Z7rpxGixTf/iyqyjsYba3ZRxSdQ
	 AUymQrEOeVQzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941D6EA8546
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177300929358.13527.1471695167360432981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bae64f24d128753d36151b65ca154c1291608e6ea3ec64c114290aef1ef0edd3
Date: Sun, 08 Mar 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773009293
