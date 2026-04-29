Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB003A8747
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 08:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777451854; cv=none; b=CCTvbsb2wGL7dWmmmAgMceWLSR2megrt15iseDPQ9WNEusNS2mZB+9HZ61H4oFp2S8a5jXxM4CTPgOVW8Q2sbO4ERQPsb9wGrqIDPdelxiJf8BRu2PPvPsnX0H9TNuHZIOoAghT6ICmBftaUXdohkWPfciyUIMcs3oa3kF4jobA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777451854; c=relaxed/simple;
	bh=H6FZMhWAnrkM+4jCGi+n7G9S76AiJgj9Bvw8QwlclwA=;
	h=To:Subject:From:Message-Id:Date; b=b6kGCrEqPzp4NU7NJWkNclV2ay6oR2xI+ci7aAl8n6bh2NFgyaC3R2hktBZfkROs9alkaZrfutnjmD95udGe900/OaRvZCyi3L04EjshvhjSrkiWIlDpL6MJMA5QZXK3pWny2uEsv47Va9a7FFiBVnFV9Sc4sH4WytuFJWF0bIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUgjvId0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUgjvId0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA3B2C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 08:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777451853;
	bh=H6FZMhWAnrkM+4jCGi+n7G9S76AiJgj9Bvw8QwlclwA=;
	h=To:Subject:From:Date:From;
	b=fUgjvId0k9vXtwJDoL3biHrunQFd79BWFgLdj2QsqExoI2Eg5BIXMW9VGXt7gnr8S
	 l93jUjRVHAM0O1Sb2fnrPGm3+Tjg7/crD3qvaGqYLPpTHHmXCmf9evYhHcMgWYNcch
	 Ywi4eC6eSf7fBTqyO3NBEhbA66ptYGhgoRBJFfJNl2tFQ+BMlJb7TDtNC828Wn1Xe7
	 bbmBwAIOe9XZH5lDMfgnzVlRdkL5hkhbQ5Vw1DSUWXVoXtP3AKdX0hTLQs9z1cxsQM
	 KfduZwFrF5O6PNGdW4LAF3uLEO7S3Ez5+wOqYQonBhfki1WO2zfLUHZC4dt/4pUpxX
	 PGVbeHgUyPSvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B840DFF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 08:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177745185371.4740.4358300919267756893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c464959858fe27c4c7eab99320a72e8215b31c5a6809f8fa7506e964a527a6bb
Date: Wed, 29 Apr 2026 08:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777451853
