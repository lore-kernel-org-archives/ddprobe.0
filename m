Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306C81EE7B7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 04:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764388974; cv=none; b=QNuKbg/D/D6TkevagIO1irytMTw02FY11XASteW1PeyLE1KZ0tBwibZ6p3cWz/QCH9yBBn2Z9Pa3jeD+r5UL+/j3h/XXxvFeghjY22Z6cQXEFsjui2QrR4EbJnku+dPyQug201H/QU3JnJ3sU6ByAJ8d9bSYEGNYpKXI+jTjYYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764388974; c=relaxed/simple;
	bh=vjWvSpo2d2Ps3uHI/3CEzzxtXoYx9kgOxg8SIhk9MTs=;
	h=To:Subject:From:Message-Id:Date; b=S4rhMdhdB+Bij7bnzx+bIl6bifffV+rFF7M0CK4yna3Egk2h/HvJUT5A2cVgv5CAJn3gYbjPg3ZGnSn4Y4A+kyziQVN/iIl/ULcvDYWF1U3Z7nGIZUQbZSrJBMHZpoUSGZPR99yFQmHf+A4iFu6tccf64fyUYQhRZl80iCKZswc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GbvF+S2W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GbvF+S2W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3D01C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 04:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764388973;
	bh=vjWvSpo2d2Ps3uHI/3CEzzxtXoYx9kgOxg8SIhk9MTs=;
	h=To:Subject:From:Date:From;
	b=GbvF+S2WQTfRwkC08Umy9LB4tM8lIU0UPZembsE1o15c9gFLRcO0iwa0xKdDMkop2
	 /2SfX76tkjQ70E++2RZh2vdKIoKYIILfLFrV6RRLvINSjE8yE3Th/kLAM4MuTRgEsC
	 JT2eyUYYtN9uaUypDOnT5e2Aw/qKI+Gfp51HXESQIRDSyjo4M+/rzD0elkAaQEhVjm
	 bwKWReB9eBiIw/yRVRzEbWxMbxNyq8+U/3j2wRt/ThiiDRiNPFSyjXnGIKRcXn3Pu0
	 WaJC3eAB9xycK715XQ+p8tbszXjl7mFJhnBIke3h7kCE7DfLwKfzhGE6dIo9QAJ/Qi
	 q5YAhSuvQj1ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DAB8D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 04:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176438897360.4053.8586033101213530548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4689a5b0c6ef8f77bbc2c7d1e782bfe7a9e2036df1d1c0f7da959f65b27c9639
Date: Sat, 29 Nov 2025 04:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764388973
