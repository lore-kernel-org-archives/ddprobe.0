Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD448479
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 15:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720712843; cv=none; b=qYH6/kdsqDbSfFtvrAMsrxBEHxIH2dvNdMmEwTyUV8+NdD06KMd3faL7KrK/jOEwfcObnrgwySPvLm6l56iBWEfoj0ilbOJLQ6UXxaiYlsh230hdjDgbMNFbF/S+YPtcVUJ7FEr/pObee7AIh4xmHHLT6D9dKQpdVXw71fABGrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720712843; c=relaxed/simple;
	bh=byZsLeJPa/ynBaHzHobMFBHPfyASE96viLHuO3O0IQk=;
	h=To:Subject:From:Message-Id:Date; b=Bfd73jSmyBPKQIGxgpA53QhCeRVvGE+UmBVgfQFSfBE2j0TcZ6gZn9GNnbvIIa86Sg+THmdjnElIIZwZGThCrKtnzhYRxa0HK3S9TnEs5Amq4v89R2T1odU7v8JGn2a+V8gvC2xpZgHnXWzr8mU5vRJFlAAWZX4jqfsj/OIfzXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qXsIsYkO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qXsIsYkO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAB12C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 15:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720712843;
	bh=byZsLeJPa/ynBaHzHobMFBHPfyASE96viLHuO3O0IQk=;
	h=To:Subject:From:Date:From;
	b=qXsIsYkOB7FQCkCB2BFVcXS/jGdnC1tMQ0EQ+jbdkwytq4Njk0A3lrl+yXOj0LyXs
	 eq44DCGrBlNgiIskHSXDT2ZvSELRo0Ntlnf19NjA/ysvW6OuLYGO/K2b7XE8tlpGeB
	 p2rInPRtvA/ZCTecqK/se+Eyq+yA1dBRfONUfK+G8YSKXcX2ZDe392I+3/zunOVSyC
	 JydVya76KuM1ZLvwxMHkr+brfAbidlFMyf1snV9EjVYB6NWo1x1fvBWNZaBzIJlRiL
	 DQB8T66wylOam4BGgVFH7myqENMtSY4Y4pthtrTtG2jtcJxvllLBrJw6PCXOYxqyQh
	 UWJ52bgy6pVgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C96BDC3DA45
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 15:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172071284281.5977.6074417654097970096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8811f08cc8b45c5870ed034bc1c0b680745f97c5a9bdd287c53c2d177f56390a
Date: Thu, 11 Jul 2024 15:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720712842
