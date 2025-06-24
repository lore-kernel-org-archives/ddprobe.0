Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E86B311CA9
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750738794; cv=none; b=OtR7cO9IHHdjN6nO6yGAmA7zFxDvNlpF+27BMQsAlGnvAD3t9hEQ1slIKJU35pRhomH/jmRLitTSaw2a5Gq0SRSk78+grhnljnVY4rgDhifggMg1dvjPt8TvsmFroYb0P2iyBLiyLsn5mSFd161m5GFJ8gnGIHynqBTj3E1V2tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750738794; c=relaxed/simple;
	bh=L2AwL63Uj7t3wekzM/Fh+fPEWQ5l0Yd5V2o42S8TYH4=;
	h=To:Subject:From:Message-Id:Date; b=dsh7jVnhIBQerPqJ0L/M2s3PWAuMgnDtjwfIg0S4H2uEhmMxH1d2/TrOFzDpEywzzfiRPUAjK8jTNXXL/LMAYsf02Fk4HUl6QzRdLiBQtwIuWd0RXZS+n3svmotydsh2Zv3ZStgz6Ndsu8LElMHFHD9uttt9/2KEgEwvkbU08xY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A9ZEnWKS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A9ZEnWKS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B659DC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750738793;
	bh=L2AwL63Uj7t3wekzM/Fh+fPEWQ5l0Yd5V2o42S8TYH4=;
	h=To:Subject:From:Date:From;
	b=A9ZEnWKS6dnFYWhAzOZa47VCrop3zdOWWczeqIYTU1vRnbOgZjs63No6BNfbVYLTt
	 kToWQthsAglndWrZ9RVXiWajTAPaLA6hrKxwZMgJ2F7cdVx2nmWiQv0UCA+0b45OyP
	 5YgYMtuL0I48v9tkWBgVrMHe7x3szljgQ9o/HiqCCRMHvNMmmygkun2w4Hy+zGIgCC
	 wkOvODm04h0YQBnM9aJ561M6xMsabz1w7z/5nsI3MKB36xIHbsnZpx3a6BXolfJThN
	 NsB19EXmZ+krDbhU0CN7dHOJnrXp1lsK3iKpmuLHs1VNvjb2eXGSwmUWe4MQrcLb+T
	 ZpYbdHoCR1gKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E465C71157
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175073879360.31627.14124492188855333619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e69ccdb126b833e4b032aac845631e85f03d4d376b3256b049f76ff70dc292e
Date: Tue, 24 Jun 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750738793
