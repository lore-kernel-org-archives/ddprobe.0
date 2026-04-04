Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252F1289E13
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 20:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775336134; cv=none; b=lb4fsxOTfjwJs+3SNgJIAdBFmfrfco0WqPPhShQaGe0Bc4cTNCScehadGpwjFjMxQ4cP7agEW3zUQRznzPefXp8/S0GPyEmGhy4sN70RYfNWT/RkjZYHecEB++MubZ1wqvf0K64Q9+hF2j9XSw6TXoPMxnZ6CB5ZK+Q0P3ZqMIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775336134; c=relaxed/simple;
	bh=hkKmo0fPfIaOBlZmrTkBhjgUkHXkeal4g68jjicP0AY=;
	h=To:Subject:From:Message-Id:Date; b=JRoRxb1HSA5UgdeCjoYl9ggfCMwVd2SfVO41fgTWDyYgH64Zi9KGvsbD4ZW7pL6uMSP+PYToh5DYsjLf7ZAqEfQR89ubSD0J+D9pCmeet7jPEGUfWwjdNMmnCv3sBJsWt4/mgu6OX/xq6QGwJ+zi9ef9Fzftl5fOFm61gfp3tls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e8zwFXam; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e8zwFXam"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C02BEC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 20:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775336133;
	bh=hkKmo0fPfIaOBlZmrTkBhjgUkHXkeal4g68jjicP0AY=;
	h=To:Subject:From:Date:From;
	b=e8zwFXamt3LUI5VON3ojmIt/hKzZpZgSHOixTWqM++r7JY8aszeSxcdg4cNiqKytH
	 PTHv6mm1YpR49L/tjKGz7R67MIrLlv4bVCt6L2J6bHzRjmRarnprK+ih00yLtRzNwc
	 ATIYjkWU6VqlpYLpIR6UXHPruPjfnojSgmHmvH1zPWStbU+zyEQ49SXc7CsVKWuAT5
	 kTPho5GcngaAT096Q3X9VL32RhZRz+hx//y7oi7GdwHtMUalwaG8rRVYpJIhwJHiGs
	 1XWwDOnIdwKi4hzFdRN2UTnfpHALajXMci/Y4POcE3ZxR8kYi/LYnb52sz+GsqvUsa
	 ciyXLHcz7kT/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1088E63FEA
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 20:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177533613369.19312.9904595731188188985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88b31b0d0b7fada905b63707308ea67690ec2505323372ab6a5490ea9cd14177
Date: Sat, 04 Apr 2026 20:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775336133
