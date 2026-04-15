Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD611F92E
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 05:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776230854; cv=none; b=dECYNtzaMJV3CklSqzZRfBh6B2gB2pE+RqCqnU3ov0GdUkUrHx3W/mTzEH2aVkZpiNfYDzjbcyOC0AlD6gM/xINTNsICruUGTXlxcH9CPMOBLKkSE+JfCRrdIugUDstmc87FeKSScSGj0Ec+D8TYK+HtMPmMfcaz1KtLcmgbgd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776230854; c=relaxed/simple;
	bh=c+cr/JccF2qeDWayIxw8QDi0Z4JYtAW+dkpe9oFpKoE=;
	h=To:Subject:From:Message-Id:Date; b=ogYQSw99RrWyiHN+9/QvdXQVfRl+IkEV0JmIbDvcWxTlR/yLDdm3JpjcGvRLdMJB86EH2mpnjhzBAGWCn7joN7ufxY2I/+uvOZjbnhH0V+iIjpv9tbGwwYD21xhN+zQRfYDhg8F4RMYrx3akkXHMvITMfAP1Zjw0eBkyZt1eeL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ahmxUjAZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ahmxUjAZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC6DCC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 05:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776230853;
	bh=c+cr/JccF2qeDWayIxw8QDi0Z4JYtAW+dkpe9oFpKoE=;
	h=To:Subject:From:Date:From;
	b=ahmxUjAZI/9qEEUsRErw54R8beBhPYa0aYvpP3EIpGPwr/oxweNGGgsxAG0fnq6Ut
	 Yd0ISRXQi2FHP8ZrGeS5+PGK7AqHukGkeBUh/eRMeBOtvHZXjPafAxB5/AL5oBCEf/
	 rltXJaeTmYEMs+8VN9ZLagGY6w8JKAIa+zu/Nf3XfnRvXu7IAwTKns9KjBiU9D1keE
	 k9LAh0yqlnONnuCyz+O0sYjRhD+M/sLNUdcl+Pdzqv9ukrRQdu3beBold+RTS0qPJC
	 qcJKVfSdXM2odD4D2rurjAlsvezto9SWLkjRgTpfHf0ny2PqV6roHL6id3G052p+xX
	 skMlRgkUT+oxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEABBFA0C26
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 05:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177623085368.16203.11926444466479197678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb16accfdfd741a963614918151480d965180506df68877ada8a29c79fd556e9
Date: Wed, 15 Apr 2026 05:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776230853
