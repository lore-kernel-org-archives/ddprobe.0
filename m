Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C51A284B3B
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785701434; cv=none; b=PnzecmW7Yseed7nPD/0HSE2Lu5f4sNoMs2ZA1ZA/pizQ75vj+dUkGToI7owCWVy+/uNq8J0WQLnT9djzn03ahxcUL1ldhXQEowOurZNuEPNBOsHY9MiMm3k/n/FKFaMRag1dtjLu70OU6FICxbMrcwV/EaQNfP3qm/P6761BW1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785701434; c=relaxed/simple;
	bh=LJQQMuej3CdcYnu2EFUUA0Wo3spYGsNj3IWg7pmLgsQ=;
	h=To:Subject:From:Message-Id:Date; b=bjkLOifUCf86FnPOJB+WNVZcUSSDda/2CRSjgl1OybMIcFcOKw79lK0jEIir+iv6aRvFYP32SxUAVQDfOtngAr8kNYpJUqCn7QkmGbWE3wlXm2mU036gED+/yKxyrM4W7KGtnzhKVV/b99MDQXrY73kAPe1tAlFY7ZoXK1h5N7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jxS1CBaX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jxS1CBaX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6283C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785701433;
	bh=LJQQMuej3CdcYnu2EFUUA0Wo3spYGsNj3IWg7pmLgsQ=;
	h=To:Subject:From:Date:From;
	b=jxS1CBaXr3X37f0daO12Pv5Tz4RpMaGDkXdVfvvrpNUuNlrZksSFFvfSBIEwrWKZB
	 HJJoZpTCsxgoTE/B13FdHufV+fB7sWcg18Bsb8BQ9Y16HZJm9alPB7B8eXbGeYFSGd
	 8H5ZTA4WTaI9Yq7oh99eBWiReE3D0EUCyiT3vvQCjlaqKJLLEaiPXudtF5eoLNXzIo
	 8WugXeaC/ob5mdVi9CuX2dwempJx+1UaqNxnybd3uxFfdOBMHYerDltkOH2xFkStiU
	 QEIAskTorsWkoX/olS1tF1tQvL7qakdx6MpS6gzDFjM4wSRMcUJirKcOMifgYA0VD0
	 L4QmPALwY0vyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBD9C55174
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178570143368.16469.3160398820134653408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60343ffd48dfa13e50c4c752eb42ecbf16016a3f6f08db0f1e0cffa2be22d9b3
Date: Sun, 02 Aug 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785701433
