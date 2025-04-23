Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5132701CE
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745449794; cv=none; b=oWmUmE0dJfhPznCUCpsz3wLL7qowQQ/OBBH7P91zgaKEl8xEHkcXRq1BsFeuSLpOy7AcNbQgv6WVg5k606/vfU6SkcaS0ZUmchMytXiEBinluKkA/+2PXHrVSK3Wkva3UoZPPzwy8CsKVOYb1TTS6UrHJEcx6fsxv10d8+CJHZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745449794; c=relaxed/simple;
	bh=8sZYrPUs0nR9Q/MViqVjpBxDj50w02WmkYB9jaE/gp4=;
	h=To:Subject:From:Message-Id:Date; b=noDL5X45ePfpbngVEmW30dabo1SBi5dHbKk/v8G60cHaczo/B16gtUxP9uGY9Ad4WbrOPy5gGFbwRs9rjfQBzOuX7yjcXBdLFfsm/KK4teNWOAhYM0mdKbOkviLRSbWarTr8WlwypW/zV19GGCxASXqDz9vt6/EzY3xmRxcemNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNI2+KOy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNI2+KOy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF61C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745449793;
	bh=8sZYrPUs0nR9Q/MViqVjpBxDj50w02WmkYB9jaE/gp4=;
	h=To:Subject:From:Date:From;
	b=GNI2+KOyRWYFO1DpRjsXYtShvS9zlTRQ8m2pfKaFfp9z3murhuTiC4npMor/Awck6
	 +22qPjIN0HuVOgyMBmFf91EkwTcPOxebYkQXdUg0J2D83r2XsNajOJGcRLv6IaCvFP
	 s7rN80yg+A579DzD0poMvvBdP+MR+3ItUoR9bF3A62rsd8K29Y9BJEyV15KOnkTXQK
	 auJbo1tUx+PwxnTzJToqjXEOuFtzDIUWMtSlGaEk2/M8YGsVeKAEosIcWXIOhz8gC0
	 NSfWch2KFpSO0s8VSuUqGZ/YsCtCewUZHsmKwkgFws7yO8qqqiYJFIXOaZ6cDcIMyE
	 TqAmXpBoAg1NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3A7C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174544979357.13457.10686736296767252794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b29038f5864d7c9555454175e5abb87c529b664116e0b082b964673cd9a961a6
Date: Wed, 23 Apr 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745449793
