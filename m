Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EAE8368957
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790041834; cv=none; b=jVTRwPJw9dRXHMMU4/1rNXm+LxZNy3ZGxkXnFYJiDf26tEQmh8gdF3X4gUiDYN9eKYLhU0+CY9DqzZeWe92k7B3HpDWEn3bKvO5BL1Q9+rouby+H+pAyuQUQI/wZlhZMhJzDBoV2Eq4GBy2rHoLT2r73tFXgjQyXlV6sCGfCU3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790041834; c=relaxed/simple;
	bh=bRJfAgNqdBcRHCpuAzVV2F1GA/vgzRVMDFeqyVh23+0=;
	h=To:Subject:From:Message-Id:Date; b=a/qX6LuqZteORNTZ7WI9vmntCHZ2Tzs6V+yvo6XS6e1b/u13lRjH4cGth0SaU6yms2n4JrksJhtAXSsTMq4n7OW/qDZoanb5t5xMMdDMXXzsvh2midDY+jBSS09dUHnwEtWIr8uZKB0oi8lQfZPHJCMBkweqFErr5HSWvHmBpfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NtzMPG0a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NtzMPG0a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4A9C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790041833;
	bh=bRJfAgNqdBcRHCpuAzVV2F1GA/vgzRVMDFeqyVh23+0=;
	h=To:Subject:From:Date:From;
	b=NtzMPG0a0nZyO7GDSHKzKwV0ooa9/0gUvEwe8aBmKJJGDVkW1oozGigTwPVgwWJDB
	 Ma/Npo5SNYdjABCmpoPHbiBjtJKwsS/+GLC/uCFdStJl0iW6pxv9pOwgOncGMOsebd
	 EEZwC/pAZutIzm4LwQ/bAdbxXxo/6x9kNvQVk5SKruOhC4pZEfCkTmp2ucfNQyDgxP
	 4nKWdLJkOsJionCIxNR9nQFSR5yGvTpqHFaeBuo50s9qeKWDlLuB6RlM8speTMg6WG
	 aKrelCdUASNSTpRczHYRitzYEIh0FFXBU9tXqrzQ4nJb4nFRcgdw4t6WGo05uqAjmq
	 ocMi8q9k/hU+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92BEC982FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179004183368.11036.12059960977666291717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5d60c592c800265c813fa103a696fe59b9ea202173f32d29f0521bcc07ac480
Date: Tue, 22 Sep 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790041833
