Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A55C2066CE
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753383594; cv=none; b=ciuAJGUiJ0EXMg+EypsgBY2RFQEBxeWJZRqtAJrVYeQI0lVXVCdPeBQ4qrYZ+5yxDfj7Vtrex+MArvjdFSANUf8uG718UDL0Xo2YDqDzmObHmyR0xjd8jYu3oq6crlVTnahzNqeBbEWf0AYj2S46oTW1djljR2EpzLIrDCINzZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753383594; c=relaxed/simple;
	bh=3y4lcpxC3NBOM/7SYdEgkVy46LKSqstxYzvTmlAjYfM=;
	h=To:Subject:From:Message-Id:Date; b=eALh+UuSiKTW8JjQCatJ+NKCOAKrDNVQ2ju8tR2oPEMR9xDanhxRMN5CUev6/XnpWE6DMc4q9ynNZ49BY0mTb9GgwyEsIZGSfuUMa/tsXxcNQvu2SFpCHXtWH7yYYDhkPnGfR4uLT5Pc4gPw5MvyNlR9QOhaxYlwrp499WVGKvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GDIA4zK6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GDIA4zK6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19D5C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753383593;
	bh=3y4lcpxC3NBOM/7SYdEgkVy46LKSqstxYzvTmlAjYfM=;
	h=To:Subject:From:Date:From;
	b=GDIA4zK6hlfrn7MRH+u4Pp5eYvDpEuNWYzOll41lFRaZ3KmnCwaBkGYuwL3zmUdZ8
	 Jpxw1BYUhif4zacCLGAag7XCzEwBo7ZAIBMoni6zv6bIIo1wWBLT/q1ROJOq2oF5HU
	 9ydwjzmTJuDXWfScehBw0W2XqpBd6VBF6RRflBkagY7c1wJpXOIzF0Er2l6dsRB8cF
	 VXMXQ/yykmcrSGRUnj2vX9LZ87rv/WbNRBOF98eUxM6VHabFwsdAGrWiHcBartFilr
	 n4kLntAOSdwrPca1sqS1clYwoA9ODZA3JX2212YKzdOCbpG2VkU5RMQISDpH5ilkiw
	 4UMLvEgWuQzwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92759C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175338359359.3880.7752763037603230071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fa5525eac3818e84396434761d1b7d713e71cdd2d1abd0096c26a814c0aaab2
Date: Thu, 24 Jul 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753383593
