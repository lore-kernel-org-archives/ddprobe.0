Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2015F2C0276
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762324194; cv=none; b=f1qLwca+DZM2BRpZNKionUaEcqsFelS9PofjVZA3qLyrZGISyHrrt3fg+Kf8K3E8yOFpT2BIhCtw/KYQSItMg5eJQHjWE5A6+XsYp2WRNzkZTsJ7xjbLxToaDe/EFRE5oVyabC8Cx8AP4Ro4Ty26JjYKN3slbmSZ5cpK9V2U6ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762324194; c=relaxed/simple;
	bh=l5Dc4XT3JixVyDNTy0Ee9sywhUrFbrXh3uCWRKLLfHA=;
	h=To:Subject:From:Message-Id:Date; b=e32DBgOZsTO8IrFhfHmtov+YZsXvzWIamuw3swW8i0RuwNfgKPVi8zsxiqNcprxxLCDjgvMzQChZIcf3vpKLLXEGls+fOlNL+fRUuKbs4HyqFERYDC6orOg6NCcFaCOK32g9N8/UVesvvumGd2VrOM/4I3sITikqrnLIt3mnX1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QCnfcLuD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QCnfcLuD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DD1C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762324193;
	bh=l5Dc4XT3JixVyDNTy0Ee9sywhUrFbrXh3uCWRKLLfHA=;
	h=To:Subject:From:Date:From;
	b=QCnfcLuDJeLhZ/pF2yRC89ec+g5y/HUelvO4lMlY1fDTuD67vLWne5EcjZRVDjhoI
	 rezD/q7xKAXOa/7VJ8OP1eWxuZ9XsheW5ewWRoshvJYwK/gYJImruBvVI0Tt9aAW+W
	 iiQUOmwg8GYUdYVc5Uj1f2iASy4T+OLZAB5sfluhdDFAVUUTscK7jpyoEWXb4MNine
	 He76D6AWZzh8jLm+2cT/dvLuX4OnSoI7x6fmrZiU3Pi+ECAIPZk+9nZNIGezOAWEye
	 yN4dzRG0bdckucFtifRT9CCTCnwpCmM0psnRthlhp3S3OfkWQ59Vb2wA7Hk4o1Bj7/
	 mgdUHgXCBJGzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EC0CCFA04
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176232419360.10556.10887196270881050679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b707166ebcff85e915b52d97e446130392c6f46b549cea51de68e8a5fc04da1e
Date: Wed, 05 Nov 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762324193
