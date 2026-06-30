Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B095380FCB
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 05:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782797914; cv=none; b=RHi75baJyFJYqEbO6y12DulQDQSCxSix7jPftGKdEiMw8Uv9TnwLxbzGPbSAU2arwKVTKWofFn4U0gOVyv48xEvYd3HfhhpRgZes528RZIUYZVAeCMBffIoUr2nk25NnC2DA9ChtF/PiqY64J61xix+uf0YS9Jw6r+PpYkeBPzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782797914; c=relaxed/simple;
	bh=pQtB9qbvk7nMoknysmNnL4t7K3xsL7CzMSuUA6PGWUQ=;
	h=To:Subject:From:Message-Id:Date; b=BAZK1pMSX8Ufop1+12d4kSKmPp1b1+kwMTQUzjXKpwLvEfBNhjn5GbVL6roWBWau6wWJH4ysQrmQynCv2hixrJwSKe8AZSQr+1lMyseKLefoomqsbxn8gG4AMrV0jfoWKVCY2vtEZp6+dsZT9Qzc6GHZ0/ptKyUGJuRVbc39SdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XwxCEmcy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XwxCEmcy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C10C2C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 05:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782797913;
	bh=pQtB9qbvk7nMoknysmNnL4t7K3xsL7CzMSuUA6PGWUQ=;
	h=To:Subject:From:Date:From;
	b=XwxCEmcyYgZUHpMS6YeV+kmqQnlZ+ajHUiUXbv3H9lF3J6FNGUAHRq9sEf27wiRZF
	 CaY16hQjpx8iSlZf8R+z+LfRB18CxmfCnbSZAqXMsq/YLEl6ezPvDL886ZN7nSES8L
	 TBbyNuMjI3nDu4jHKWE0bp0pmHJl3bZXiJixFNf84Inut92wi67Xm5S+hF2NX3DtNj
	 /rAOiZkpE16WWPkqr/xiKBgnY0aJ/kfGGvY8SSWDeETARL9ISq3x+WHM19qYL3I+ct
	 XRExhJPEVFCVs/x8+2HJ27yrGahp0PfUM6EMJmirNMNXj/szGVDdPXNatWWaczHpTk
	 Kc1B9wCshUw3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A83C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 05:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178279791368.15961.5510655130658781204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93e220c395d205651900e03ea49ec96722c4be2e6efc9d17d53e67ce99e99c48
Date: Tue, 30 Jun 2026 05:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782797913
