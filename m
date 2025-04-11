Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D70E27CB1D
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744343994; cv=none; b=HxT9wCgPhxkFvYj/sL3NK1AEm70Lry+N67ZzF1fKw23gBlzrGoZl3tQHffUxUdYIj/ZThO78zE0QafutCmZdaMw6M8433fCZN4ptPm+eKXaq82tUB5QBJZu61L4/htOB1vxbNyjYflvvDw9p5Ut69oHDcG983k/9smyFSDae7B0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744343994; c=relaxed/simple;
	bh=mahS4nAqNnamtwYOGsPSlWyCd2dMzjE4TVESorXLCQI=;
	h=To:Subject:From:Message-Id:Date; b=jNH/5n6F/+VRvApTXWoRLUdmu6qLyIlx+YaTnBYIyLSbYTC/10ua1f7r2q6HesHMJHUHkjmHJ4HTHY67vsVUEUQlKeKim7BFDPqWSdcO8pptJPIhHTdsA8W1u4yfXxskMj0rCN0Zilx9tRiB+aHNyPanBmpKk2Auh7b82g4mAbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F5ahKmQU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5ahKmQU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B218FC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744343993;
	bh=mahS4nAqNnamtwYOGsPSlWyCd2dMzjE4TVESorXLCQI=;
	h=To:Subject:From:Date:From;
	b=F5ahKmQUxwjh65oGrw6U3GYUJIIctj9IzpmK4Jho3BTfMEVmhSEn9zqpfc8ABXVRl
	 AhFZyJUC1iZ7UWD41yQoMLHBpKzQitZ1OaIGVWUhzptc7hBUZpfu9TaoruttdFSTrl
	 4+ZbtAi6VbDh2wSYFra5bUvCYEI8CdRwt2Ib4jJGLse/AG/STfoGjQOcGdLNLOAXRZ
	 Av7/nch4dcgMencImqiDIKn9cD08EQd/IZP27uMMQ1j/dJbCMDdcNcs5lxaobBBZOR
	 0757RFJBVeQwzUKnxjx6LT7bT1CcRXxeKhSRccFAg+MhFeEh2QEVodu40jacQlKNFE
	 ceso4GvdJdfHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A245BC36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174434399361.27167.7803645104232195945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c7229fe4c266ac394e9507c5ded197517a44cf6f662c5028fa84951c59fbabf
Date: Fri, 11 Apr 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744343993
