Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8FE2DC321
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787474434; cv=none; b=jMgU9ZYxNMBlsVKHvLDb59oN/Ni8WKQpzG78HC29koiZRKrXOjFYSpr71ohNXQylxX6gChY5J6vQGcwyaryO4A3Bm67l5MuHUxOoLaIfcRcqNJ7bD/LOrj97QBV/PB2wdoAwgWwj4xC7jwlnyYXgLJIj0285e9yRzdJzYjPxgBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787474434; c=relaxed/simple;
	bh=D2Igj1yMDNe0kurZszIwgdfKGEL7aivlj0sad4UAAAI=;
	h=To:Subject:From:Message-Id:Date; b=RnZ83fYCAsafunYvCzLWHO1jZYKY6c0n5/yO+CwPCrJYKbLE/zTZtnzHMNAlhXi54twfmlRvIRduRrs0u8rrFEpxVtpfvnBPeusrGjh3DoIJx4pcI1J0btT5WQ52hj+6/hQnAuHRQIRcFteqAe5nzjLfreFF46LOF35T38wvQ5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gp05SIZ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gp05SIZ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0859C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787474433;
	bh=D2Igj1yMDNe0kurZszIwgdfKGEL7aivlj0sad4UAAAI=;
	h=To:Subject:From:Date:From;
	b=Gp05SIZ9jLMNHh5oYeG4LJJP8yqlPpTduZ1n4faJx2bhS33/ox4WMfnDrC9hni/6S
	 CJRcrRU3/AcUgpsWJ28N9fAAaJyXn2UT30DebTUz6iSlAHMFQCBaTK08w6YFNVbgzL
	 radh27r9DHkFulFfQd8StVUTXd8naLE2cHdy1XPCHTuMQoPU/cR7nqBkq5sj0abKHU
	 x4j5Ae3wrCyfEvzdUXXt0yGcbLoZ0REZCiwEHj53mD1fecXKFQ2D4UKtDl6eeVkEKj
	 Lgy00+ggUW5fQTe5nImFUieQCnOBEFSB2KHBBByRJdJ+oupNKCkXfrOgl7cysoElms
	 pjctWty7tp6Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC228C5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178747443369.7250.2893189570221970057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec55da550969ecef205bc96a220983300c51755a5cddbca0788ce181e2e6b8e0
Date: Sun, 23 Aug 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787474433
