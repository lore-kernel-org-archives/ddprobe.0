Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE7442A82
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 03:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741749534; cv=none; b=U1JsetvLViukj7G+XVN8HuN/8JIBSzfZu2N64cky35tH6OJlmaT1Lh0sD/j5/0yCa7Ff2UfC/+l6KD5NIJvkvUmAEDuC/aUaJOoq7jsTrdaKiCVNZEHwh8d4Bs8WzlItQspfB6n4wo5dj/zFTY4R7cQ6oCfMWeoSRBPJs5K62Ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741749534; c=relaxed/simple;
	bh=feJ+rqUNBY3aqV6IXracQ0CnBM/lpk+0PXZ9CkZQ3NE=;
	h=To:Subject:From:Message-Id:Date; b=Q18OBcTiGp0CrHqnntyvRu7cSlvGQ3ShZNqYpVLEFXHoUEcVjLillMsRSr75nNFrF0hT+Y0Kl1TKB2UoLMfhvV1ou+YfzeakdUfwbktagG9zZmJDBHnHbHKy1GmndICM7BcwjxV/nwrj634VunRNKajjVwyQvI7ptuMbuHSuKf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gm9YtCl4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gm9YtCl4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC55C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 03:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741749533;
	bh=feJ+rqUNBY3aqV6IXracQ0CnBM/lpk+0PXZ9CkZQ3NE=;
	h=To:Subject:From:Date:From;
	b=Gm9YtCl47DnsiHErYADc6Qkx8q0wxrgfRhrZ/TGvPlD4YHzydDXV9rWa7EKjip//H
	 ef4632+nGIOYgBAXXvtWiCV5eXCWyGje7PcYf/CcLI3m12ooPcd+T5QT7D2AHXGC0K
	 bkSCQv6KcrdgMTeWXer1hY/9SmuQ3GnUTaEkU7GPjlphJunFT3hLkO1lgbbPfqLahg
	 qTURVtov2VDpSOv/VRMz3M5dQzCZUawpOUJ+KB34AV7l0FXr6MyCb11SA2sohlzk43
	 KfLK37K0Vq4rax7idR5kEIpATr8s+299P2zEyzAU1rYeOATAo52bwzZeEQ3poQloWs
	 zSDy4+++0urqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E47C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 03:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174174953360.16929.10647805078329164297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e29f12b955602096c886e12d284940bb716bf3622f39da54d416235563ad23c
Date: Wed, 12 Mar 2025 03:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741749533
