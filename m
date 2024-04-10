Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2787524C
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712723297; cv=none; b=ZI1N0/ms6I8OOIWzIKEeazJMT1IktpYLULvorE3bjfTVE2Moa2R/kU3XmMjLULR8Z1BzxlJhWMhlrTKBMw6svBufKcCGobDkltGKG7/TN8w9H3DzDP3F9VM2I/8uMtpf0fhN7kNRLJjn2K2VwHco3RsadgmCK8rfptj0fjzRunc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712723297; c=relaxed/simple;
	bh=VjE0mWGM9L4FJ3xAQCM2YBh9CZ/iRvAGoSskAJikVMY=;
	h=To:Subject:From:Message-Id:Date; b=ewxYHwdmPfAjbMl3RQmg9odHrkemv5Z0rOndPGuUfbT9LJZMqUU/nX5ZV8vtmu22UrQfhF8QXhghtpUsadRplqpFgCRd4nJZQl1abMjoSfZpIMePmWgCZx9VyrJV/EEhjk/79h3UMRGY7EDFrrnagl7CKtfb4F8JwuL2uv3Chkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjjuUwtQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjjuUwtQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84A55C433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712723296;
	bh=VjE0mWGM9L4FJ3xAQCM2YBh9CZ/iRvAGoSskAJikVMY=;
	h=To:Subject:From:Date:From;
	b=VjjuUwtQAFlu5q6LwEeHh/vfuJwdSRDuY9sUAhX3EjzEQqhAN88dlxtqY1kec94SH
	 ZMfyNQp8p+8soMNNFuzwuxWyXxEWLbyPl9WPeCv7x5wD4ciBkPKQDsThzYC3g3WuZq
	 qhXC8GG4v6mXcf8vKlad+gTFHPNfPnK76CUlhA4mo298ypgdBWkBW2ekKhKYAKAhHv
	 +NWtlJTTBMG/1pgmBsQGMVezXOMx/p9LqauhMkZ2mYSj+rqUN0qtJ/UF4jX5/14TKB
	 Sj6cDWSo9Ta8wCywdVs1zvL7acp88VR1gYJNxQyZx8cJOP09tnSldw2ClJkYnU/Q1W
	 XN+8luXKiLLgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A793CD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171272329640.28628.11171256054652713443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7d1460763646913daedf19b58cabc6b951f4c5541461a582fd72ebffc0f8d60
Date: Wed, 10 Apr 2024 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712723296
