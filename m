Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5454139937B
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 06:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783666717; cv=none; b=GMtdwsLGiBGTSFH5aav3cGX1C6ajuNJ4gvlHpFyH3TIY9dCJPdPpWb4q86sw2FW6dvEX/FTnvD0WFG1QQ9WOY6dNFuTY62rMVQ7RLTrnQUSHru/ZG56A8Wf7j238gJSiHLHs2O3+pZg5RGekFSXw6ndm2nhrGYQ/xUz2KNtTqEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783666717; c=relaxed/simple;
	bh=4py78KnvKSOIrkULTfAxHZqUgYVpiWm6kRotBqrH7EI=;
	h=To:Subject:From:Message-Id:Date; b=Yq4YWwRv7LafirK+8to9xpevYWBtHJ7vxgreFKWPBajEbegMDF1P3rzXaMcUbnp1oam9c4iPvNrIvQokHnQP+PYNkE9pfIkrK/qbo7DuR0IskjvlgpuTeau3/3dW+GgwFB6tkP6hn5q/8qAic7xHLXjcFOEisLTiqx/vpRdsddY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4+BuOQn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4+BuOQn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB757C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 06:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783666713;
	bh=4py78KnvKSOIrkULTfAxHZqUgYVpiWm6kRotBqrH7EI=;
	h=To:Subject:From:Date:From;
	b=L4+BuOQn0DuQfZ3X6TxV2bza87zrBmnBj4UfHaR7XkY7lMx6+TYtq2szJaJ1ilJID
	 o/2iiX8X5q+dF1ySRbjngalCYFzmlYYZN60yH70y9rKI21GqCFa+B1xH2gOK4cj3rL
	 t6kJU3V9ATEY6s0ynbasK0P3n5vg2zzKk3UvxZOy8aProBJKD4IqOJBKtns8Jdr5Hz
	 1GBDipKWLW0LdPs0RL/MS/l3AN6Jt0xIk9sB6HL/taH40/PcWGGSTPLx8GhSJQpiKe
	 XgEDtH9cA9SKlkQ1gJN2qsKxViKUXAPSe/3d7tA4iSemiyVKMLMdyuByN4U9CmzUey
	 +puAIM1aIq76g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98F6C44506
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 06:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178366671368.5606.7976031174798353531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aecbb594a3ed74cb9950d8e1f93b401b00075f646ded358c6c1f533a5d5aa48
Date: Fri, 10 Jul 2026 06:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783666713
