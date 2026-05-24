Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1AE39A4BA
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 17:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779644554; cv=none; b=EbJSrplXFLbzZG86naTStG5jbB1lqUvd9RK7MTgcXmepwOzXb63ZSeQqyXWyv11yXusatp0UBFRkaa5y9ks+nO6D5qM5ETPRpJa44N1LD/vZDrt7MVoEvbLDmJGD/KbYlL///Y4JI5uVYGUW62nFmc5YQV3wcCCnE46x6El0CeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779644554; c=relaxed/simple;
	bh=QD3bU2rQyZNGGMs3QLDh3jhIkSPj82i+yWoLbYTSQgQ=;
	h=To:Subject:From:Message-Id:Date; b=HusS/Z+H3vwQlT+Qh74EFgD7v8YOtxncoapkYDwYOzW5lMFdIB++WKVVE6/KRZbTmaSf2QoqHRKeXrWYFDOUm3UXtvTs1KHnNvrtqL0QhXSE1NW4iXn8G8Of8RuxGHSmawd6Yl3jZPFD/lA+WnbFa9wLDoxWHaNMTdW3Jsb/62k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=apsU8xln; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="apsU8xln"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2945C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 17:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779644553;
	bh=QD3bU2rQyZNGGMs3QLDh3jhIkSPj82i+yWoLbYTSQgQ=;
	h=To:Subject:From:Date:From;
	b=apsU8xlnhKUMdNEMGSP/mSfDQTv7vQ9AQbgh80rC4BYK2kPn9OJx2g5st7cxzZo8A
	 JzrPuupWpgSxP1n5eZw4tXS3fGWHNuh26ir+UCkycP+2TYnuRHga1raR4nyjSGJMaZ
	 XKkwTqstR+9ZUGRUXe2xqKGfV3tpmc7vMvULzMfGycT0KvA6UJsYSxZAIA3wkgzdXS
	 QfwYcafeKdmOe+acqr/ncpHFGeECUMaUjqQiNgRLfIuuzrCwu8mhlG5lInZSqS7w/B
	 NMogzG/xJeSECrJORtITICFqPR+LEy77/Pnfw5V2v3MEjKOhAXWDf2blz9l3iLZr3s
	 Vf5AgIBD5TgXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB683CD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 17:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177964455368.28784.10352293227001973176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcd8b2b024ea2ee0647efa37b20808f090e55e94c36d38f5af5d10df1099d0e3
Date: Sun, 24 May 2026 17:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779644553
