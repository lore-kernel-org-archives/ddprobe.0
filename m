Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF331FDA
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 01:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763686914; cv=none; b=u6hmzojiy2M6rLZoUbtf43aFnySz9OgWor0M9WAkSIZ7biXGbZUhSHIL7GYh1dwd7+tclWubZrS/QCIidQ1n1w3MrGf1M4zlcyL4NNl1Sd4MJ9LG2fD+DfRbPluhx1HHzhWbVTeBVpiAEneDTI25Ts81zwzEhJBajgmQo5jxo+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763686914; c=relaxed/simple;
	bh=KMlagOQarVscvK72CP7nl/JBlgH9IHUT9nMPNgjO33w=;
	h=To:Subject:From:Message-Id:Date; b=vDMom+uKkBWBzmSzTfPsgqBuIU5YJlnrg/JB/mlBhLB3P6/dZIKg+hjwuKecyvLF7E/VukHjuemsAWjJShpzZWKyLFVC7JGqx12wOPogGA42QR53z0C2rRqPQXGItsRjAZrgJNd2F1fsqlzIN7D+zeAlcKicyE5BGewi956zryU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uw6XOQkM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uw6XOQkM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD039C116B1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 01:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763686913;
	bh=KMlagOQarVscvK72CP7nl/JBlgH9IHUT9nMPNgjO33w=;
	h=To:Subject:From:Date:From;
	b=uw6XOQkMk/SJTewD7Ujwo8nzTURdWDM+kFf/dJ0bWPiA8rnfDDf4gU098+fxVFy3t
	 qcdFxFhz8vDKwGPA0kQygeORWHy+UqPmHAHiNDhI/IGF9Hx6GFOh0tm8uPrKv5+jRP
	 Qxyy3VlmRC749bCjurxJ16iT5iSbTtaZqBVmccAT7gwcVIoHSycDmnCH81lVABBx8a
	 GyJqWZPm/2Ooln3B28fd6tHFa8nkgwCVcznYq3rpCJeLcSod+P3rLIdisPlM9+TEA5
	 kb9kKYqgUdLYYosccJcpTriokKdLXGyeIlLLacoQM7xLu2kE6sqFZvzdWTsHFcSR3A
	 Ry7gRc5UkG/MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A554CFA459
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 01:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176368691359.8027.1244789817569149301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 275bba566279926694ce39633c92bc25e20680e1d9a9d33919a330865aadb6bb
Date: Fri, 21 Nov 2025 01:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763686913
