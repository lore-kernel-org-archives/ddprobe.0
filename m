Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3518D151991
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747098594; cv=none; b=C0zML2cFX62Vz7h9omdmQuRt7fU8qLi9qrAJ5jH1EGC1/JsTUPu0l7WqVjLXDJUicDecWlmu6HNF1ut2o3hKI1b3cK1AG63qH6UXeAfuyS49uUhuGBUx3Ro4gSldVyfysdyV3RnPqXOTOG/QmC2lNcIyXHsdP7otduJH5PImgZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747098594; c=relaxed/simple;
	bh=lhdN+YZm2b94HYW2j1HLKHJeaUD9bFUnAKOjhJzxFzM=;
	h=To:Subject:From:Message-Id:Date; b=IHjytTLBJKLGoVeKwrDUcq8ex13AwbiqFUR0rH80bWQQuUXPFraKcCEywCtNvO3wzpvwoacXXWLdl7uqtCqsGCSE25g6bH8rrYhsawV+ovmvvAjN015Scn9wp12bHjZQ2jpwCTjemuPigLznJOSHLIiTQTIjHz0uFYFkT/SIEIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GUfR9+LO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GUfR9+LO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CA8C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747098593;
	bh=lhdN+YZm2b94HYW2j1HLKHJeaUD9bFUnAKOjhJzxFzM=;
	h=To:Subject:From:Date:From;
	b=GUfR9+LOuzFE9e6JptzLxfikcnhggHVxSKKakA6LANM+J4cBWp8y45qoQ4piPTCUs
	 pXFtyit0Swiu7A4bXv6cwL08xHWf2bniyVgAvj56TgW6B2NTTdvi9h2ZfXKqsoIYDo
	 IauGXruE6B2XV3i2lJZo5s7wKwrVlI7FPbWYZ6qol1xeCymk1k8qfu84+I8IVVD0Yc
	 zyIvaLqiHBhL594en/UcqlPCHXZ/rjDRBJ4ydyPNoNS5fCie2rOfk/hsF3t0Euv3KQ
	 EvuhLUPlV+lXnLN++uOcKAmcccbjn26j9JG/s/u0J0W7KuR5HSmUQWhWM6Khb4n30e
	 rCNhat1kxb4cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F64C3ABCB
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174709859359.32713.12864656490865391086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feca50a51f55892602cd2ee7e62fab648800cdb7338957ed69b0c957c5907073
Date: Tue, 13 May 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747098593
