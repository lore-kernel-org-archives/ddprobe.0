Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C80F4B1E4E
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746572394; cv=none; b=G0nB0MufLoQs8gzrKzvuM4NCHN8mmV8erJ/gpiDHL6NMZ8s3O975jcdBDZYdtuHWdEcs1nsc4upmyZnOI0sva69Te2JqS5PwPhp3G7gV8R52e9/qWvW08zn5xZ7hhzXsUT/1gJxYQhvkMjErVxKKcmcMSLB4285BVogJRtJi6DA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746572394; c=relaxed/simple;
	bh=yU9GAbe5xtXenYNUapJR2t+roulVhdZu7dukzEtK51E=;
	h=To:Subject:From:Message-Id:Date; b=HSqscb+OqZOTzdk6aHuP/fQoFQsk9CDvD0PZCM7q1JVGaXoQgVPTA7XLc98c9gwH9APbYOtEt+CaUVP7NJxgjAON+ikQgYMe7zAcMY/vtmFTIY4QzmLdPks+kYUoIiFusI1Zzk6Ip4iAZRUq2884Gol44APIQErVw8l0G+Z3tio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c9q1+7eo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9q1+7eo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0B0C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746572393;
	bh=yU9GAbe5xtXenYNUapJR2t+roulVhdZu7dukzEtK51E=;
	h=To:Subject:From:Date:From;
	b=c9q1+7eoVE/kY/71TLIIdBJLZof6iA3yMHQoHg5Aay7V+LKAOSR2Cqd1yfzSaU3va
	 KHXXg53S431GOrT5uG6h+IQD6trFOYgiZ5K/0HdzKgvpZqk0wRUMgYgOd/QuLiztFP
	 rObbHGcWQwWIJ0u77WoInA58SnnV8yc+jz8kroKZbw7gikVOhs4xDlohp0mqa7vGKs
	 LM1Tgw4nLBSzgqvPAX0cmXlkh1iUHOCSLGgPVcBXLMF6ORbCy87KoKQJINcYXH2C6B
	 Wcx38gSpBXrhA9V1bKaK/3ksPw+rgcmgSyOnyIDBCPNffMyHHjzSwC35S+ahGsncwT
	 trcSFWXF0kQDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E776C3ABBE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174657239357.18061.10571390971904753157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd5776f0ca284d6734863e6ab385181039948e9fc6ada6b6588e06a458faf03e
Date: Tue, 06 May 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746572393
