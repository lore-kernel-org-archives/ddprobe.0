Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2017134DB56
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761249594; cv=none; b=fFzGYV4YPdnif+JccFwEZ0wIM+X+s2+np2+NrCIXf6U3SusEYwLZZL96HgSmjYypJbslJQyNd0qr9nU14y5XsG8VtkkeMs5yGFz4vBAMHdkOjaWtAUK9Z9O748RHNFJeNycvx6M3bWoPYMohGpZFD/xYj1HUqEPq8bWS1Q8vwCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761249594; c=relaxed/simple;
	bh=bs/kQJSkKqvhC91kvSedxGmlnSs+0C/7cD72EPlp9MQ=;
	h=To:Subject:From:Message-Id:Date; b=Jj32h+s1WfKr9EHtVUHWG1+a33IaARq7oMOXtt8ADAN9sgSKXuVC1f8sidA1VctnVUfrssOS4T1Bljd1Hp53eclSypvubGp2OVAoNvn0pVYXg3e04yPHVeUX3c8+LtDSzZON36FmGqS8z0no+TqASOQNNHuMiYdMWAKy/dzAv7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JisGSZYf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JisGSZYf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1852C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761249593;
	bh=bs/kQJSkKqvhC91kvSedxGmlnSs+0C/7cD72EPlp9MQ=;
	h=To:Subject:From:Date:From;
	b=JisGSZYfS/FSZNKV6qv5Fwb0ZO5FVXSIn3q8V16eAryyoiH96kys0IDlyrfmTMCkI
	 sNcmMGjp2IYVeH2FIKusM3dfSX1riP9kDWA48021UkMODOs44GEpCvsFFX16+Agqdy
	 Cz4L+AwgIYHph5t+EVGXzCdD7jIDyaOpMus59zj6y5XgvlM+tN63imdkQYVmDd1Zht
	 X0oDgieHXAoHqQq58Do8E4wOkvbhEHN6ZYyxgQU4w5oDhaXPjouXQlRq2qZJ2XFVDy
	 16e9kSuPClE5fNZD8DxiUVKK77TdXb8iNtHUU6ZWhrWXO6zXI3ADwSt4wPBtpl0mVg
	 6IacmTcVs9e4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9EBCCD1BF
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176124959358.30386.2328478250883809205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93b23b6f8ada258c82c1dc438d62aed612ad916ae5e4bdd9da527ac739574760
Date: Thu, 23 Oct 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761249593
