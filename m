Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2591F15A8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 00:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736208355; cv=none; b=XkCXzk3zQHa5bQRd34WNRyfaaKronZEiWtA85GkmlCYOYwaNpbXxzSpKi/zBbgf0wK6jqgz62JCrIB0YnKVPcvvDsqe9Cz38M7xJJL+dWglDcVblEvoUKZqBi1Pe3DqO22130ORxx3gSS+t3XFTpBAA6ON2Y+VLtXm6251g1l60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736208355; c=relaxed/simple;
	bh=8K3LZsdcu/hEWamma0d8raIvo314Bp10aTGyVYR59nM=;
	h=To:Subject:From:Message-Id:Date; b=SCBX/q1760OyeAUCP1qCeTIWj2//G6k3BLYTF2M7ZtRoFyE9kgx7i+GESfyHFK/OIsmqCqMInneWLpx4rNQAOpUTr1y89ATxTQtVKPgDPWzRcnDRRNa+qPgHCf9aykN3iIvzZTZLOcrAa5hsu3/ZjCK8GxecImbC7qjTDOqDipM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBxNrNZw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBxNrNZw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF198C4CED2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736208354;
	bh=8K3LZsdcu/hEWamma0d8raIvo314Bp10aTGyVYR59nM=;
	h=To:Subject:From:Date:From;
	b=eBxNrNZwQ9+PBmSmvtjMEKDzNg2noMMbOIb3LVWVCUcKn3j6R+iAzIyuxvdQtTnBg
	 0t0FeWhw1U0+TmWjgMucCB1cjpNTzGUB5ZYRNmvokPf4b7O6EXhS4BpnmI2z/jrpF7
	 YhHJS2EfpAGKr4ljGLRFp/mAJHawBT8LYzzX0sshbnYBezAbAG8W+BsXQnH4ce8Skl
	 0h6VncQVUaqPk4bvwcrcO5D/lG5AQIw7iysgyOjRLC1SgfclvqxKRiPMl0SR/lWSTS
	 j/X02XPPhRgEhp3H5vAHJrdCVCC//bz6fkNv6M8OtTa2e1JnxobRmq8fGWIk5w1Ntx
	 YX6qhH90+eG2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C14AE77188
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173620835361.4136.10981162042038645167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46a2bc205bf27a66f7997f2caa55a7caf29c249e1c19231062f53b95195924ef
Date: Tue, 07 Jan 2025 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736208353
