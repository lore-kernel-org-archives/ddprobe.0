Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C97E41A56B
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784886034; cv=none; b=t7QtPJ+BiKDMn+M8bc9LqHqoGPkL2GOINnE0XzZS/P2J/LRhLtkul6xTwNdKEwtG8UB6EkuzBWXXqzlrxL36NmXid8Xl+/n38UtNPjq9uyug6FGsw5znnGLBD2RAkMfrga4W9ke2k4QHwdzomOqt7LUh1cRuzVTtbqFFXJnzXY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784886034; c=relaxed/simple;
	bh=zvHxt8jX6nrHNv0VqNIYcPi/d+PdgOM1+ihuaUewSBs=;
	h=To:Subject:From:Message-Id:Date; b=vESDwXc0dyKVASI048dcc5PAJ+7kCBP3+PwQ7y27ACHPRPlr859Oqb2g7Pg3m+fn5lriA9IpsbKI73RpFRUuRIw63MmN32z9S8xc2KhKhezvLL7Kwd4stqLVZSX/Z/pQ/DrrNuNyu5A0O2GfM+jv5AQA6tZIpJKfOV9pxv2OmYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lN9XnQzx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lN9XnQzx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8EEC2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784886033;
	bh=zvHxt8jX6nrHNv0VqNIYcPi/d+PdgOM1+ihuaUewSBs=;
	h=To:Subject:From:Date:From;
	b=lN9XnQzxkQRjGmmVzx3nG1knaoJCvvWSPxZB0N+XBQXu2WLXTvimRIEd+qzJwP7u1
	 kGg5MAxa/34QgD/yhHUSMbJeZ0/YYgYj6kc/9QRoiPsiLGrzjxwR3f3P6ilivLhQiC
	 bSODrA7ZeafOxz2wz6+oKB9fcK74D44YH4LSGyk3P426YlTmlEZpMus3hneZCMOGsh
	 5VlYdLb1+hrHeMo3jYpD/Isl5XbO4AAWRw9aB7zaJI7EMUiwzWJdZLLeUpNm3wkmRe
	 Kbvq2ExOzyUFFGG44KMG7ffUymL6sCvvJdx40SstlMDLtnaDHlN7+qHzMR0unaeUDF
	 ta3170fQmRwLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8F3C531F9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178488603369.8604.13264537182191162169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19be20632b2fd03ff85d0c7eb78fe74fea62e8a7d7b97edf1f2805236796f020
Date: Fri, 24 Jul 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784886033
