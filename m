Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8F412B93
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754882394; cv=none; b=PFQLN19Zd/Xv0PadmIJo6FvkgFYvfwd4iJObXFZBl+eT7qYnD/qCBVEy+ov1kDWsXlw8gDC10wKHk+NZFpIvlq7/DxKACLOB/KucJ5WZF3VjYu8RiV+Ya9VaiUiUarF9ILH6biGpvdJAaHrbFUNyEedyVx1j4SJSkisyOOOkCYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754882394; c=relaxed/simple;
	bh=RLN+2AOH+PjX0NhnfS3SK2/c6piv5K3ghIjhRFkjLlg=;
	h=To:Subject:From:Message-Id:Date; b=UBM38nFsyulIQl5J8idcza4fAElawjt14EjIP9b0gjgDdzTILEsCC2tJL3lDLWocD9sezgfQtx5ZUl3MCGgdNuVbRcim1RnEiKnL9BZJm6eLCVCbiETFe8aClWDVWJhE3DCWzNZYsm651AQkINFae7wsDeRvLlhWRJc1Abxt8pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cssY3Ib6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cssY3Ib6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD15C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754882393;
	bh=RLN+2AOH+PjX0NhnfS3SK2/c6piv5K3ghIjhRFkjLlg=;
	h=To:Subject:From:Date:From;
	b=cssY3Ib6KAGmzp+qOj4eDz+aIIMmANQ15foxv47X/wqnikzXcK7OKx68i9WMSyVPx
	 /ji1w7ALYoDrJYBuL+LXKmE3Si/mPXzkqHIg0flCoFSG4oBOlVW5Zy5+j7xNFcQWzR
	 NPh9V1dh03IZ8+ZJTeB2u0E5y+fl9mrcAwB9gL/SbwazFT4cv0XCYP/KRWd5b8G6b5
	 wZfCMe7hUa/wZZHczXOCStT5G04fvE0c8FcH7waHRo88ddAKW7r2LiEXTyTtJQRqzA
	 sMYF2YGxLC5BoB+/9qcM38FmiCPlQl93sl7NuI0V3+jzUlSO1zfFm/QGFmiswnlgQ/
	 Vsddr8PZtKhfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DD77C87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175488239357.22686.13876146433237092152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ae9e95db39c5f2351d09179053815a90a0b0b95314d56867d1597c544be031c
Date: Mon, 11 Aug 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754882393
