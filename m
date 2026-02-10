Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9221662E7
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770686034; cv=none; b=Ox2U7CxYP0GIXJTnSYM+lq/Gejz+j6JhJ1/mYHF/zr0lI6t3mVHCaKItYzyCUEhxBRS/mJQSLV6lKWpSPnXepJ8F+NS12rV4xwvF9i3no5xa9pIWhy7yCSN2w2RzMSe3VNmazQAPeT/4mAfPxJAaTgupqyye+UMc12Rd4VNsvZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770686034; c=relaxed/simple;
	bh=0PAZpZ+7q9lAUyS2jWgONWFJiRLaWeiHFIVY7LZxD6k=;
	h=To:Subject:From:Message-Id:Date; b=Nn8EqD5OT3Mi1VjJZpKYTHmtQenAE8ernF68r3CH+VjluTdXvfr13eSYhZ+18Q2sDzikR6qLrdKN1jti8VrkWTld98061jUo2L4SUJckWzTQM08xaRyVDG+yG8jpGFbZHdR3tRyFES+lmEyTitczEoXS95GmK0gnL2a/mRxV9IY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVzXi/OG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVzXi/OG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF034C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770686033;
	bh=0PAZpZ+7q9lAUyS2jWgONWFJiRLaWeiHFIVY7LZxD6k=;
	h=To:Subject:From:Date:From;
	b=IVzXi/OGPwouKfOmsMiTqrEeo4Ie8ld0WmZ9PmiTXaOs3xaHVUNlk73Z71V2kh80N
	 k9cck/12gqL1JGxSv3ZlsHEKW3IZ4ap38pCF0fgIFmHMRjwhbDf7pMmRii96G0Fnr1
	 Ha2vPXvx9PSPniDGnXdAXeJn/XuddwmRsNDnwLSNPbCv+68OHzscejyJXalmZMsfV3
	 L4hbARIOyJH76YX8ljIaMcXdVkK+UUrY0E3vJdU7FpRrLRETtAG4nrI2BFKpsaJbIM
	 1yT9rFuhnf4BHLTGZXsoydQYijI7FZJUj0zmbhIto13nHyTMaPnfP7Uw67tDvUcXAv
	 Em9tOhE67PXag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6E53E94627
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177068603366.2942.15990317743288395176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17c362219fc9213a70cd04182ea87b85555211aae38ea3ccc35b2a258a3076a6
Date: Tue, 10 Feb 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770686033
