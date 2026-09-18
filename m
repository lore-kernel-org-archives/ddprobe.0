Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A02D519DF4
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789751434; cv=none; b=m5OF/VDXoa4+vtfUMORa/cowUZL4pbOkQeAHCjObh0YGQMC9gxQAALvYrsaeexYRSljcAzUhVY1vBIh8HBkCjGH7ydAsKuCgnSf7zcnEkaPtLdzgEAfrZ18GiFwB+4zfUhj+XLYvfek8ytt18qtJjy/FZbulclxjzVMdV9CfItA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789751434; c=relaxed/simple;
	bh=z5pSLo7Nrl4en2OBTsW/gk95CEbQ5JRQZe3jh7jVRZU=;
	h=To:Subject:From:Message-Id:Date; b=TdGPDHrtLvPe2tZswZeIsnQ2u2pXxBhxa7QoXWZidNOQAjMv9BZgAJ0ZCB5ZwbGCYUV9eb9eNfBQDjVBNFQgWryD9FCl4Cb5xd+0R1QOzeTO2Ov9/6RX0EtSwKNz6LF7tPMKjqcRbdBSP9qE4scs50lHhWbLwA0Kt8Pm1/zxGEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FREGbfBj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FREGbfBj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2191C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789751433;
	bh=z5pSLo7Nrl4en2OBTsW/gk95CEbQ5JRQZe3jh7jVRZU=;
	h=To:Subject:From:Date:From;
	b=FREGbfBjMluFGcVfuQ2vHUUZ2nfartKE1zdAJicfSxDPGBP42B6mQol4Gl0YMtu3v
	 fabWxbOO4Oi4LJDYQxUERxdI5GwrGej8glWmuN2lXF6P0I41X4hk/3tADmrValJXi3
	 aQ5Eq8rNr9VrsEficcub1hZ1yKOtnX4QOmPD6cFArigsODh3KGW7/bVy4q8qz5dK0I
	 cg9l/mNBs2kX+aVB8UjfZMle4cnta2nfiar5Bv+ixfeAQWLbbmwJn+uGzrdCRrdniu
	 f/0xLuMF8MonFrQS46L1tMxQY/inoTN3cRS/k/P7SViP+dYCF7nVHx4aIAEBBkGKc+
	 3sBMymIPAh7pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD808C982D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178975143370.28720.12105498432791594278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cac6963ad6f3f2346ab119d7070ab1b172d53a31f9c36580bef078e2f9e0c72
Date: Fri, 18 Sep 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789751433
