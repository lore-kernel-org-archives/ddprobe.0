Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3910D2BEFFD
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750088994; cv=none; b=SqLUfmdrsCReIvs2yCHHjTALjV/nnq4tzDti/52mSlk4Z++UztCPr7oovCXMOc4i2zT5U/8xRpOYOJVSBII25Vx92L9xuOOZcwQUdw14/uktiMrINrpW390UnoY8APjpysXoESBXVcO1i3PcZt5PO+ZHPgRW88DTsDXHlUvkZHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750088994; c=relaxed/simple;
	bh=rm9O3YvjgjVgZRyyB9jDTlYbPZqcLJnqI/6VmFzPQwc=;
	h=To:Subject:From:Message-Id:Date; b=Sp385TE0Sq/xXW6JEQl2PMNFJXoSls3aMWuDvhOX7KlXCg7YhnvESi/Igca4OZV/bGnOuHX5hmCWOlyQGGPO6IgJ/9YGpT2zw2TBdERcOGU+yIdqq75ADCFX+fMrQ6nVVo/o3ivdBgTFMtEMNfFQiBMRp8W8i8Kx78ba8Widud0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/uCLn3E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/uCLn3E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C97C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750088993;
	bh=rm9O3YvjgjVgZRyyB9jDTlYbPZqcLJnqI/6VmFzPQwc=;
	h=To:Subject:From:Date:From;
	b=Q/uCLn3Ev91YgGTKY9Ky3J891SEa4Zdj3T2g1lcrJfUtTZJli4AF2MHACKDIbZcQS
	 9Mmuaq91tR9unEw7JT6FBiPT//SNzNnbWDDFL+mtVCqPpCZ3GLw0UjDp0yEHRbZTok
	 2AJM98oY8w140jPw6s2id0UaQjOmcxsaHXkPtmFmENqh5ZEpNMggsHuqpsoDvMM7Xo
	 biwqNjyyZ5/lQOrSj+HTookYsveW8aN+5nmNUPkdqMs7cXklbCb7XlT05lvXezH5T+
	 tf/BtArt4BcJz+LnbdML5CdUeHjqvKB1uYb1ytmt7dZ6EKxxmO7z3Fchr+ojBrcYQS
	 RiUkxS/2+jhPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913ECC71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175008899358.5724.2150455621421904876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b841f7d1fcb8aac147abef03fa18c991922933c3035a4bf30a13ede0e8bc703
Date: Mon, 16 Jun 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750088993
