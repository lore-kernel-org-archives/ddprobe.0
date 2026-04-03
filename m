Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441A5849C
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 00:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775175934; cv=none; b=BfWxr4UXRDNgT3QZ2Z1oDCGWM9sQlmVYtwL71WeU7t3E6AGqEc1fv/rnYqb2IICj1o7Y8w6rt8gvSdgNi9Pdz2Bk5ZijCZ2zPipjdcOB8sEx5BjWZhgG19Hx3VN0PIOtB3wS/CtkVk3O6VQ3LAztdAv9u8RGSdy7j+opo/Tk4XE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775175934; c=relaxed/simple;
	bh=/FmEAlymRNEVfkmrgcvZBftctDa5B/IgDwZwWKslnmA=;
	h=To:Subject:From:Message-Id:Date; b=U/ks6Wrm+MQ7ur1kqDMBX9F6GtA05vZQeF9RcJCqdi4JTAQUX29RA8J4s/wL6TVcLKuNgrM5aGEUb0RbslI1h5vR4Klk31LHMxWVmeOR3YYPvyJDn1saBCEss680NgoL1cGh5Iot124FQMi1s3wXlf17/hAxlZH83mZQNazH35M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6mG2Rcm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6mG2Rcm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C29FCC19423
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 00:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775175933;
	bh=/FmEAlymRNEVfkmrgcvZBftctDa5B/IgDwZwWKslnmA=;
	h=To:Subject:From:Date:From;
	b=l6mG2RcmQDv9EKYkR4WDEWmZ3Irlh1PTKCb3RfY4AZe0tNVcNHT1QAUQrUW8Juk8Q
	 7pRersKcJXxRKmFFjs8I4zC2Cbx1pbFJaOa5CD5Zhzo6rJHK85CjqaNESHptqtS2tl
	 9T/Z3jw0cmcGpm9VBR3hxOpvUgL1HXVFpwo3/tipQKvyLNmxI/bapMCI/1ITKh6b/V
	 Gh7u3FDP8um8vNDxvrM9B6Ocx8Pj2HgNm7Atlu99W0KA1/5S4CidZEgf8IlfHB5o5h
	 Lawa5j+4BNa7JPsnDQ9cCUdVodZnZZHnkwQ9p5tlcDnmCZ5vWWcQ5erWJqRiadg24Z
	 xg1Nq78A7iyvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6BCCC6B1D
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 00:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177517593369.27739.3914552949034676413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2d6a9a822cc75cc1976ca3d4e97ada929cefcdf62c1547a60b0348656e63993
Date: Fri, 03 Apr 2026 00:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775175933
