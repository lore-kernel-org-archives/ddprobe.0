Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEFD1F0991
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 21:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764104574; cv=none; b=NMYpazBhmprW5LP8k6PNGrvDxPq6HBcmY9mYd7TklWoGwqNEr206zJaT4dSYYhsbH/cDCi+/ezctcRRppMgPsVAztpSShk8Xicnrt6GmLeruRWzBEcwfFyEK29X30Gl6fdaxvvM7rKCGCUhZ8H2D/5VNUFxl/09raQuEJSK/qcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764104574; c=relaxed/simple;
	bh=brvWnHFAHYOS4f3JamyDW8J4qXWN8xaTJgIla1OWAow=;
	h=To:Subject:From:Message-Id:Date; b=aPyRagAguJNv4nfExKOvmDRhzFFInVGESjv42hPo9G4BrY11mAQIOR/1e/bTDOeXI+hfRZFYsijt56lrh3lPqBURaNWV4cWuP/H4qbrDqyAsHrdRXUQ+QDj7eGXCxdkC/xDrKLJHz+R7oWLRfPIm/dEtzs59zhsXhT4d8pqRXrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JCTl1XBe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JCTl1XBe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C477AC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 21:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764104573;
	bh=brvWnHFAHYOS4f3JamyDW8J4qXWN8xaTJgIla1OWAow=;
	h=To:Subject:From:Date:From;
	b=JCTl1XBep9eYgvBccaOevPA9D/GEvTEM7QpMT/n+fUg9az/x4deZk4wSQpeTDOwup
	 ngt6BKZ+z1WY+xJAYUzUB/khUrye3R+cgq7HgSOIKpdNuLCJQYRxYiurewNtQICFEd
	 w20p3Y0Z7Jw1TZ9URn/nBn4POdnJAVAQCP3oB49U2jjNMX+nPrZDp6gHRrhooOj5iS
	 yl6+T5naLvzsOsohT0QmMBSrSrefldHm2zlR4148FvK9q1eZAJqZMK5v5Zre83ruq2
	 OocrBug0z8zflu/9uroSUZPcbJDRdvVD09fEEbOJWTb8TXySyzAKYmY0PLunxD5Vqp
	 xeeSuhdIDN2VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8F7D0EE1C
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 21:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176410457364.27169.6486369645279113543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e52e57272cba89447a02da3c882148dfd5751ee9866776ad1f70862f7c5681a4
Date: Tue, 25 Nov 2025 21:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764104573
