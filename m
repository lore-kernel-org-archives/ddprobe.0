Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFF072868A5
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746725993; cv=none; b=pPjnwAkDROx0cHqvoRiEcrbPoQyPfJRsbAvkmgI62kQOQj6fx3UmsFBSE1jKUtvFl3D+/E+OQracAV4chqeEGZRrrd6VTZixzmmM0AxRaz9LtfR8bjX+nq2dBtn5P+gX22ks6hf7ol0lsAltBy8FD3Ba9WtusU4a8qO76iYqSu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746725993; c=relaxed/simple;
	bh=oIuD1wzuxsulxDjbBNf0bWfSMGDf0yprf61yf751cTA=;
	h=To:Subject:From:Message-Id:Date; b=ReodNbF8c1VFyDeJBaGSvVoISP7ocAKyqQ9D7NLZl+73W0EvOt1+FzqTVN2mztK5rI8RxBwC4skQOKyNTzE/iJcc+PySW76LpsLRTSQy9mMSJYH1Iu1KXYeUBdQnNMHIfwqghiRDWfKonhaVJZf7/KwtGv3n7yk9uFCThpUFpp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fdibXz2v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fdibXz2v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB6DC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746725993;
	bh=oIuD1wzuxsulxDjbBNf0bWfSMGDf0yprf61yf751cTA=;
	h=To:Subject:From:Date:From;
	b=fdibXz2v0YpF+J1b5Sk/Z71TIAwvkZlnxyr1sfu5k59dEfFrsqzrbu04wZCfa6NJG
	 3Io5yMdDjZxo9gGxQxJ/tDv7mceaPL3o6HAbDKAR4eLi8sdct6fMJUDhfVSv48omXJ
	 yDZU3fmKzINyo8qiDzxnyTiCQUaXk32VoVrjPYvvgTKI2kgLk8XuKhmgbguEn1S96q
	 pRlyndIhTAXuQxUsqkA+dZCzJ9gHkQ1eNOXsTqlYvxXH4Eg29RI2QZ9AzShChUjQf7
	 IRnoHQUtcKkAprXTYLaWVAZBgn/7bZhGyGtN9S25S7auQxAfkE6GPW1Xlbz9SqkkBF
	 wJHWHJotBTOXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F770C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174672599357.27601.9818928882434983936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fea0420956e4b05e6f68f679bb436a8879976c7044c6ab68cf043479b5b2552
Date: Thu, 08 May 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746725993
