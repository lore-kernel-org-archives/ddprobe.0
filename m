Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9822620FC
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767599634; cv=none; b=J00s6+QxZoLz7p96DDXd61opP9vU9naML213svHpFTcSMqiI1pnJaDUr0akwFSw6KAgGCC8mQ278aGL4gdtvdJF1UgOw/Mkl6WJR9cnE5Ly1u+A0OqhDXpsmsrfI5VRPRFP7B9orjSfiZyDjkiS5C6+M93oLc2Tfv8JfeyMXnOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767599634; c=relaxed/simple;
	bh=6aBq6IncuRglqphAiYhZhrHsAGjMxqyoU4YPwGG2pSU=;
	h=To:Subject:From:Message-Id:Date; b=OtlOdOLUsn1QzgJelkKamyx50lwp0I3/otRKhlgObSo+ij4aQsWXfZe58E6Ukq0vj+SWfmOYsHXokS3jOJsxu8Tcrnez7LWgHb3DyTt/UOncvF9Zdapv2z708dUdUe5WEGjnyL+hvWRI3QQm86ODSHLO/MqovlTEuAoiyFdPEBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vBY3bwP2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBY3bwP2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA103C19421
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767599633;
	bh=6aBq6IncuRglqphAiYhZhrHsAGjMxqyoU4YPwGG2pSU=;
	h=To:Subject:From:Date:From;
	b=vBY3bwP2rVCk1cJ6F6yLLDwqQI4bnG4FVeQb/SDvxoQaVxeppUgrZhlLO4quHeNpv
	 4c0kpM6d0s1zzXFrxSVLfHQ7MJsfMUxrYqi0MwRS74PJF+ynl42vI3BVGJcSn5ziQE
	 +lZUn0/us0CMIkJBHmNzEacsSpW+vyQvboq4wOdy1Qe63OEMCWLBwpmRwfy57PDvkW
	 qaLY6ZZGPB3wDEhgKTcpOjcTJGlXKuMKwefWG9liv/VtteB2W+2IYT/7UsqRco6fZG
	 /8gERa1RA1CzMkvR+Ftl12ibJ2PgKL29cxeBFLoJer6AoD5PNzs5fBTpzSOujCMGhL
	 bRHqzzDU10+vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C5E7C2A072
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176759963362.28657.6680231505715851720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4292d09e2a70794a1af3f30f41e124c648269844b46cba7d6078d774f7f33f7a
Date: Mon, 05 Jan 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767599633
