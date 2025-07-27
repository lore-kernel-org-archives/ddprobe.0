Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B2A7DA9C
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753617594; cv=none; b=oeKk9k580TxPdaCf09WXdRqwugIXu3CAdH5PYgNBCtnHZB3iEBo1yKc0rTImA5Vk8xXOsQoFUCqc5HFicudK63ar6atKDvKlNIy3KTBKQDuNUpHLJp8/BJtiPT8rrf032qAb4WNm0TrYsnCieeKxa5PdlzV0/t0khyITHn7isAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753617594; c=relaxed/simple;
	bh=BGnOeSklDWcgNDjZhX916Mk2FuB8Z932vG/bJ+vdLoA=;
	h=To:Subject:From:Message-Id:Date; b=IwlssP7x7gwH2HeOlK7fFyYl4eBHwZyc477zE+TjnPhm7+QjqH2NduBqmzw3htvz8uGMQFdK9+4sGD0lcKjSVzgEqBi48CgJLNVR48qysmrF+kdR7J5sGXNZxErVtmqX7qHxNOHOrwnkP1QZCYHQX22oNMH6BfIVhCfHbtjkSwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tUutHhDq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUutHhDq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7007C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753617593;
	bh=BGnOeSklDWcgNDjZhX916Mk2FuB8Z932vG/bJ+vdLoA=;
	h=To:Subject:From:Date:From;
	b=tUutHhDqlSxfBcBduK56PR3zUv/h3fhK4nRNGfX8uRNkS/dFxYd/FbU1zjrh1EH1q
	 ptZH6YCDAE9t4j1JRXGo5n/EBedEIlt6w8iFXxF8ZSfAcRHQWwjaq3hwApC/9sODrV
	 icw0dI4TABchB4Asz9QlPdhgqIVw32Oxc2lRCtEG27byMNSjCqPkrz0fURqqvRLYc6
	 10QKfgITLU5EtNzhbIOVVbX9jedqyFbAHUOu7lf893hFcbKcpl3vRm+Owb2eF7zrb3
	 XQ/k7DAdNV0tXf2L/gLh5guGOzmFUOm2NFPbd78dCUcTyVRynANJieYvwJrRP6iCVM
	 r/Z8HJAdT9ByA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E76BC87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175361759357.14643.15341944449449711070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67abd7d1fa4be200db020768b2aba563d1a02889eb4e4aea197b171570e1cc56
Date: Sun, 27 Jul 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753617593
