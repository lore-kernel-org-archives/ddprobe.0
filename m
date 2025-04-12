Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B8A18D626
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744484994; cv=none; b=IA4+UmsPvc+RAqT9CYVeE2zL3UJg5UDp+YZxSJRx7MQST43gfJ6wESba2jFlasVT/hcJkX0ivA9w6fcerEUhrJKLeCeWkcOElBmF7gEKWrwGgKm+tgiszcTOXWNayB6ITumx77V2qBGunSYGgcZ97unljBM4GxQxTSb8+2S0TsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744484994; c=relaxed/simple;
	bh=rZjg2eSfZ9FCwCQOTmUxfzp3wpdtxz4jVvF8smsyCgA=;
	h=To:Subject:From:Message-Id:Date; b=RZ1Ct8VYGLEMo806GAa4Hffohc0qtSOYOnn47pxcZNbn8t3fWi39FXxGigd7qLoF/1DGCOD0L7JazJNoLz2HntLkx8//yY5mj1s6BuD+FAelTKo+JCgMQdM0L7GWR0AWC2O5RQ4Pm76uVzqkwtEFbeQcLBMrGzq4xXhPTRVb0vM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PO8kzHXE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PO8kzHXE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1ADFC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744484993;
	bh=rZjg2eSfZ9FCwCQOTmUxfzp3wpdtxz4jVvF8smsyCgA=;
	h=To:Subject:From:Date:From;
	b=PO8kzHXEE9Fvi/j6Y0/mYQormPJsUH8EoUI0Xte+0HkyxsUwNFJtqIpe5sznB+zHQ
	 stgjchzZj4cQ0NBUokdlp/uCtKgREYKSvctzakHJNWKt4JpZatInZ4tX/uuvCEQA9Q
	 FzIdYpCFvw+g6ij8CgIKYubiITNwsf7O3cnMsqvGKQf/QIcPsw6Jo3FeMAdkvTPfwY
	 pSv6Ubgjsbw3N1aE894YvxOwF0ns+vNZ98wk4P5DK8cgyJpKk5QCkCX2VSflAohDrD
	 QOuNpYNp9RBXymI+mFeuz4LLCE4gNTisJJahUAgraYTd9YZ0eC613qSCiLA1Vs/Se7
	 Xt+lzRFg7y3UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF28C369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174448499361.7911.7660010158024560661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6459da089fb82dff04f1b50edf6d88d2b3958291ee36df01774679a716bcf53
Date: Sat, 12 Apr 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744484993
