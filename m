Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0CD22DEA78
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763063393; cv=none; b=lcDOohGCPmaY5lTrupkxzYw6tZoxTSYC6KFZBFB9hTgFE1PjfiTXMoByOv50vtf+/7pVsOs7orCaRNrpMSVHQy1ZT64p09TRdUJw2C+DUgkMe4GiGcLdnh2pOWH0CWeK/7tup4hF+xXCL2rTy3c0kFZ9TdrSyeNSDV5gqncRYkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763063393; c=relaxed/simple;
	bh=tdYcXb+GCxULz2WIdPbhKIGNRfyVc7NedL5Etg3vm4Y=;
	h=To:Subject:From:Message-Id:Date; b=MXc4QbDuaSLIEAYGLvkGcndVDWwrekIzU4F8X1xvoOub50rm1HiCD/RzYsC5xNmqANFffNU+vfaco0thJhDFDsZDImegM2D6Y8/KaAZ0KbdPfuQr/xFr7N9PPA5gbYjbK52PtZu8H0POn9XAQ2UQ0kv5fnJDM+pIIdkNLxrR1dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z7SJkfNX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z7SJkfNX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F981C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763063393;
	bh=tdYcXb+GCxULz2WIdPbhKIGNRfyVc7NedL5Etg3vm4Y=;
	h=To:Subject:From:Date:From;
	b=Z7SJkfNXVd5yx6B7L8HNpCISdqXVTZWFaP6xUR2GSdBSl0oTdRm5xdITP2dCKtK90
	 SESiiYl+eGFemRugBKXnG9+FdpcAfGYeM0dF3ZQpI6VENTNOE9CRwQYbg4k66g3+6p
	 MvYCt51846NfzDhkwv/RJ/vFTx2sAH1lprWQl2sofYATeC0j8CUG9Z+AewsMBXf8wU
	 NoL7zMPtsN88+m3z5VbT1d1i9e1Kg3cKlbwUp2XmukgWSLi/VU0Kr4VE4dQqfJd38I
	 KNygFlLBjCSHZ1TT88rCafJLOqnLAX5EPgUD34bRDVVs4tECybMnnaMiZCdAAvTOLd
	 Aptt8jq7wcRqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C9ACD98D2
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176306339357.30673.14359607701150142370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26d3194390d50d0e5cc9ef56beb95bff5083a248f8938c072bec2105ec393e82
Date: Thu, 13 Nov 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763063393
