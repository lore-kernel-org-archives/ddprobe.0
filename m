Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B77033EC
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744433395; cv=none; b=Ygf66PxCBgvZcVcSwVWIgWmVjQANkA8B9x0v61HdqxSl1LK0vOaB4QzabHDfNTMDWcvqUOzoGdEBHIBS3yRN6ZNgKpXwbtutrEjkwZCt0NnEw16/VMXZL8mEURO1Q+4nBM+hXJPyB3b57YEyWK8le00N1xUNiWSdtekoBDEbozo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744433395; c=relaxed/simple;
	bh=5y+8eJU0wE0+04x3ZMRd4HTi/4ZOI41B8uNP8W4e5vw=;
	h=To:Subject:From:Message-Id:Date; b=nQa8YEdc42nWlKJYUja5qnvpEfIAM40FJtVKLZkSYF/U6Yixzl/tJfbtckbf0Q3a0pxp7T+qa16cqKCHIRNSNIhlqRddwO7HKucU5c3psCfLaBuY7wEMfzI7hzRrYlQ80vCg1QlzyqX4xeEAOltRncGfRSofAdCrlZaUnYkHae4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATY4QALB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATY4QALB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD9E3C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744433393;
	bh=5y+8eJU0wE0+04x3ZMRd4HTi/4ZOI41B8uNP8W4e5vw=;
	h=To:Subject:From:Date:From;
	b=ATY4QALBIKEKoIZTJC5grW/oaegfeCP5iiTnIFeXK0GvHMIdlrI4ywCpJkqPIxD03
	 7OJ2BZ8ayZLpwaONB1x0Ezyq3l7m+3WtCntJjP/f5hc8P9OjxPf+5Ltlg61rpZSoge
	 aEJGD7NZPH84t4+aYOmXMVvnfl3uaoTd+GWsohKlF4BhfeRPk9fddW2VdCSkQQOUje
	 lThOuLQd9igEumW6duKzTjPwpQcVOmLgb/RySDjbvmOQgjZab+G+oxtOmx/qlL5u2t
	 pCLz6J1IYkrqODGQd+6mmLZcn0ZPlqz2cfhpfgymrPwJBktYaDlakiT6Px/O/AtjEE
	 GAYj/Hq4EU/iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A69DEC369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174443339362.32501.8269308443662271015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92f6102d657386980d35b7748b3555d6b4be680e67171c5d7b8560057edb35c6
Date: Sat, 12 Apr 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744433393
