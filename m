Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2B5A73515
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709134097; cv=none; b=UitPQxvWyls4nzJYOjVfpPhRJMla3JmLajPuw1RgMUMA4Wj6SNQL6rFg4L0qYIwnEp+Iz53BAM3v6sqCJEZdLlzOVzX++o2XDqjhoMJ+rex0yTdJYEKVBEzyqsLt03hyEoeHZAZtYjnzHsGuHHePPDwsafu3lsix0DButFc1YkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709134097; c=relaxed/simple;
	bh=CyoZD/jRK8Ub3bZJ4RqXKQXNmnb+sTNOPBwtoTFdTCg=;
	h=To:Subject:From:Message-Id:Date; b=EZh0Z2qIc+8QfeJQqYEM9B/7OJVAlJkUVWjAepZ+VVuF2BNSM53SKK8bTmgcBJwFGKtim5ahr1uzhlmECWfDM5I3Az3vEyxD7M8n5Fsa/xUWJtkBP1tFTvzp6J7+sW8FJ0wtsiy0KXwa8dlsUmsa4jLfS+5d3uIKmoJ00V1ZEUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hq/j1cdd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hq/j1cdd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72928C433C7
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709134096;
	bh=CyoZD/jRK8Ub3bZJ4RqXKQXNmnb+sTNOPBwtoTFdTCg=;
	h=To:Subject:From:Date:From;
	b=Hq/j1cddb5NBTTaz6jTjQoTH1pGV2IDmjCobZwkENvfAcZRT0y/RXI92S5nmasGJt
	 h4S1LPzKx36mPKAMMH+Vat/q+2+tuHse3r5Hn324rBclYC4NARJuqcsmWSUTcdfdPb
	 3wIYWERoXQh6MBn7H5bj/XMjLLq3fSVsAi4pBLdfPvcDu5qCz6ckzliF76aSm+6gaW
	 7lE0siblIkJaUcC5bTr379ZF8Zg5quvmTGgD3HZEL0RqiY2klZ+wzI73tudm4PNamh
	 Wk1ALkoT2gRJ32iR7fqV+qqhIv/MKX6SkLDhYZbw1w9xEorVLsivxEUBjR/+T33Vlr
	 Wgz7bNqAt41jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B6C6C47DD9
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170913409636.11837.17993264463539708501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7d4895090ed07a1f7209a40f72e6f0379f9cbc6d5fcb476de67e9b7d8f2c457
Date: Wed, 28 Feb 2024 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709134096
