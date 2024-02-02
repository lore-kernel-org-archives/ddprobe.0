Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 054B34C6A
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 13:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706879297; cv=none; b=AGBYIlvxy1hkn+Oa1/XdNcPO9ST9wdnTwe4tenLtqBJPym9FXp7314aM2S8iFQ9Z+qzYLB03rF3VK2fY394UdPCRjz1e8OUoraoMT2dPnG+VWOOmYs8TBnPrhA2RUZUK75eW0RNtayi+a8bqeOqjSlSxI4bG8DAq6tfOOUpRoQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706879297; c=relaxed/simple;
	bh=M3oTxilup8zEDT7MKgtOp87sq3DiCDdZ3wHOaD0N11E=;
	h=To:Subject:From:Message-Id:Date; b=t1ERLL3UNVU8mkvg0udJBzhtjZMnnTVWS2XxYVaO40qVP7s/L8oC/eFjBSlhQl/gktLOvMNcnxAQNt+TqEaduDD+9eCoX4gg7N3Jk/YFunWHALBmmRfjIw+TPBHIShVxFyBGNi4weeUv1vwNiqIlFM3URArhcZUAKifNgi3Uk78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hcWjJ2+d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hcWjJ2+d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FC3FC43390
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 13:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706879296;
	bh=M3oTxilup8zEDT7MKgtOp87sq3DiCDdZ3wHOaD0N11E=;
	h=To:Subject:From:Date:From;
	b=hcWjJ2+dtEX335sZmDwfdjBo//cenWNEvT3z13YpT1PdxOaphD9T4/hnTdhQwNt/B
	 eu+6clelUOLtfFg3SFxghwuCnUrYY/MBOazY5ncO+28gl7+6zG1cy7/V55zWOS/KMb
	 bPmOqregSGfKUZzzQcQRzS2s0jUtQ32x6gb6ghx2WYwDAYLl2ys2iAiBS3bQI4/BAj
	 n7eRbTWbSGCTh+bid2b7uskmdIusKFY7MKXYA6YznnbdiwIV4QNHjYo07eDZuzsB2v
	 qL7/ASiiXoNqYP9u3H7mbzqteIW7TmYxhQwriAwuBH0J+lqTHW0l2t0FEkhzBZlL7/
	 AYF30azm4AUbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6454EC48291
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 13:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170687929639.14511.429208817056338132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1edf66c6cff3293d42a05493258310152cedbf3c8e721d94712bf9ab1e2b9c0
Date: Fri, 02 Feb 2024 13:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706879296
