Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470091BC5C
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727409954; cv=none; b=pIB9Bjga0nXeiuuLBr0PLH2MzptNn6w9qfrM4zuFFnxefx2UwIQAt3KDVic/3Fhh26/aauYxS6AitueTQDZD1DC3A+4qrHQ6Jse0axT7GudMCysgnRMUS3h+VVKtIKDW1hT0JUKb10GTwCrJzUEuB49B0736nohGsb+YtaDyGsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727409954; c=relaxed/simple;
	bh=bb54uaAYOlX8UtkWnlq0dXmmIu08uaM3ZpLDArgOiBk=;
	h=To:Subject:From:Message-Id:Date; b=n3cspNCCF81n2763yxxY0nKPEDHfPe+nWTqrWPRyKlIVsXtTCrR8FaZHxS3Ab/s/VH6J1RLOXu0Q8disg/jL1J4GLBgJmjZBGtjzueP2JTregPZ/DNWVNRZAtcOy4At0tP6S1Mo2hL0nAH2Z7dfNBT2YLoYsSFPmvqJt6up3Fi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LKNG7xLZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LKNG7xLZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6462C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727409953;
	bh=bb54uaAYOlX8UtkWnlq0dXmmIu08uaM3ZpLDArgOiBk=;
	h=To:Subject:From:Date:From;
	b=LKNG7xLZTuyHlWWY8sq/X53xMdV1mumFKq2iid3pV22f1fxka4SZZSMmKs/NfzmaD
	 7eBp4S5gOu5EQH4tWuth/OocZTNWbe/Stjn+NvfQolNhXohM075gk8tmpQd96ukfFu
	 qMMYPpVOnSEslewB8UO53HQ2qYRMWhXuqhxh73cbCAbvnpDeAiGsuu8MJdR1UfL1dM
	 gV8yei6vj/AB8QvqzC3zmjBGbRSFETtPbh/yuQNGPf5jrOdvEd/jwl8cRbJruDO1cD
	 lnlHy7DGGa0vB74l9oCwxP4ooAhc2Nz6NyiEvzqmgI0e58+dqT10q13Xchx+jry7UY
	 UKJ4Ln8oM1Vwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C26CEBF76
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172740995365.5993.6443695324444641962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08de09f628137ec1e842cc01ad5304c209a02864ce407587969c1d6463616896
Date: Fri, 27 Sep 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727409953
