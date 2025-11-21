Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2AB5248F47
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 02:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763691714; cv=none; b=BA6jIUezlam4m4+OD6+8mMfpnCQIqyN/2bLvegnvwWQGMUJsOpbWl0CQE2gZT0SG3bu49qIMYMuRPaKqv02fAZJmDFfHkyj3/lSQziydk3mUl7qLZbI8R7QC3+KiU56mzFTK0fvk3kaZ6iSFlOtaTuJsLrWgKv9f4T5EIgul72k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763691714; c=relaxed/simple;
	bh=GWMIUh6UZJnHRkOxkhK4M0yymooNY0L887nMuYaxDUs=;
	h=To:Subject:From:Message-Id:Date; b=qnFjqBj6bbZdHNjtxue8Q/Eg/LtpGYxsE+bNnUo4VDYpZIw8fa1ar+Ftz6q+oZkbCs/yeKdEV4XVp9BmKF64T77caoSIqINl25E7P1sdRpWvYDYWfzA2ceS7zqeMlGPxCqz+mM6S1a19mkTTCqWPAKvUgEmukvrKNiS11oMliGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TNrI0Gw3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TNrI0Gw3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A113EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 02:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763691713;
	bh=GWMIUh6UZJnHRkOxkhK4M0yymooNY0L887nMuYaxDUs=;
	h=To:Subject:From:Date:From;
	b=TNrI0Gw3uYOhHd5DY2Cd+62V4Ol27QGasBb+R9SAWocObV84Zb3swGIVCxblk+Sse
	 XTpIvk/rmTpMMMGS3US7yzqrZ+joAFU2uzpuAj/l+FVXwPM43CkrIMM/6Kizi+dawz
	 Mcl4K/+E8LtWa4MnQ0+Bj0Tg0nT36uePF8HQnGQMpyTEgTruwg+4ldxXrJIFQz6CnM
	 tHI1hC3QjCRhUxb7ZN9PdOBxiR05XnGw/JAeNPoCfoJ3+FaM/bzNdTz6AP0jG3meWy
	 iUfpP7GrONK2sTTwwfhTCRkqb4HHrywFcb2nEJ429ODZdjoyh5pfQf+W2iHHpUBlZF
	 vtGnqvqYOKGIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91789CFA466
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 02:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176369171358.547.13061064261340173996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3847e39bd977d502485e19d6f665e9b5c9c03dc66b048a0975658933b3e10a35
Date: Fri, 21 Nov 2025 02:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763691713
