Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297B414A4F9
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722554754; cv=none; b=G+ZhRTGnZXxw6jWRytDsU1MMy5R1yVGfLALJpYsjw9Ci3Ei+esF1orOjHAAeI4QdLdGmcc3mp5Z4FvUlDRBvd41SsIyGCpsi75ZTIP5adsCQUGKOiqkSyGnq0rBm75V/WwUkPIWNrgQhpV/FNqfS0eUKhyI4+mQwV6c7NyhWcqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722554754; c=relaxed/simple;
	bh=9RWKHeVXcHm97BPA/l/BUUXopZ1Xj0xB15Eo48L0coo=;
	h=To:Subject:From:Message-Id:Date; b=C5Gj2zYloy2lJDKpRPpSvPzEU5ctJvfot6CxX1wwK0P0yYNixfMj/tFQPtk56U5h3O4wPYrbpRZkwsjYLsNQMuqxuz82rjR/85QUvOgBRGH+Qv3ZsqqfIlQ9dpNVUpVjrkmfoDTLiF+RZHLK+zSVmBStMmS4dHwK5iaPGoVdUD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nAeIQACy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nAeIQACy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA018C32786
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722554753;
	bh=9RWKHeVXcHm97BPA/l/BUUXopZ1Xj0xB15Eo48L0coo=;
	h=To:Subject:From:Date:From;
	b=nAeIQACyOO8lruq3uSn+4JfbhoXe0E9L70HPyTAPg1wfGbX6jdw4AYCOtTnboowFW
	 TTokn1yTf+CrKIkshk9ZnKXFp4hbSomCvAEidP+Q8W/XOCzl2oTIUcQ9mTU6uEs0T0
	 YoVYjHtgfct9PS6gUrcuewtY6+aXRgOZpr7NeorknYaUQ7xFd2/Wuxjd3c7yNKPHtU
	 Pb7nhAYnRVA129jmke+krAdJAZUcD7jmcFeCTxSOcdBOT9U66IGv/Me0PXpI8XdJiD
	 zzE5gdVmjxhtzfPRDLW/JT0u7nJT1E/+PHxOPXMKSG+fgI503UbYSnnwPWhPEfpkMy
	 UnP74voYvaDxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924E2C3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172255475359.9635.8093104701177052633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1e9ec6601e6a04e99e906d02045e6143b07af83d3f726519d60e7acd6dbf992
Date: Thu, 01 Aug 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722554753
