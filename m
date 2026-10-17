Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9430A40FD9B
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792216834; cv=none; b=lkVK5Ey0mnAe8uslfqeJaEejARDHsdeyXOQNK7aEemvtdcESeEdyKkWdvXhOQ0tPp0dmS9tJpsHcNnEs7swlQ5cI2NmYA85T1wp1vsByl1oKbBwnFpHJuIV2VOwtU9PiCoY7KLlH0OXX44gvls8NEMfdmRucou9teWWeM6wAheg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792216834; c=relaxed/simple;
	bh=Vs+Xu0+JxZnp2FHpuSDIgCZJYSm9ZHRgmlfHEh7UQIA=;
	h=To:Subject:From:Message-Id:Date; b=iiNFrg/bL0ns5xrnQiEivzS+52QnJn6EZDOc5LzIULlWr+7rE44WYxeD3b7OUcL7SZ+7C85Eb8QAJzlwk7mYvovPU1NN5Dw84s5lncihN5XCNUPfOkWJxs7O0qGQ6Yntfc2VJ1YX6IqVoynL9i3q+Fofnlw09bClLkUs+YGmDFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XKwXEAOT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XKwXEAOT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13EBC2BCFA
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792216833;
	bh=Vs+Xu0+JxZnp2FHpuSDIgCZJYSm9ZHRgmlfHEh7UQIA=;
	h=To:Subject:From:Date:From;
	b=XKwXEAOTkQWFPlJCG4IsP2GjkCXRdG3bCQN1SQNqZacq1hZBP4sTb9y/cWCs36hl5
	 yDwICdlKUI3eFI0DVVlORFzxasZzah+HlUHuYrlCCDWRu2hjDj3/kAoVUz5hD0QC0p
	 RqCrgBdYCORERxYcQmW1HWZpTArTyQ8rfm1+6kSnQr1o0y60UCp8e6YN5o2u3swCrN
	 6DKARMRQDc7WT4Dd58XS3vb/2HXC1AQaNyIcwXlLNNguT00dS7llJVPDlDSXq9HSY1
	 6Jd4z0YlYpXemVdgVfpEw0XQdWueUaKU5v5LjfMT9O8jGcPj8MPJnhDv6A9jYDY1Ue
	 FCpsA6KfjnXMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDC1CC6B2A
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179221683370.24401.10820139576158291324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 956f02895155bcdb589ecefd208ac309d6cfc9318ce334e401cd8a7a9a78c0e6
Date: Sat, 17 Oct 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792216833
