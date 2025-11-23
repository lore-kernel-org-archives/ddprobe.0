Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E8321ADA7
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 08:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763887914; cv=none; b=Q+CQktq3dIt4wZAEfnWdarv/rUm3RGj67srmCsL1/9ZvE+kVeDnx525SXPgk8vnEIduCRPJPjbeX39PGwC0k8OATBBoeArrLp/zo/Hk5ARaKYNLzZuVH46ExMVv+p4ivDJaVNXCeJKWLXRg4IQM0XgveFvEdifyUTRX6vxSZ+bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763887914; c=relaxed/simple;
	bh=zePlwhIK8kwFjtIFOX2iDL4zIBY7YhklrcWsbM04a1o=;
	h=To:Subject:From:Message-Id:Date; b=K1Ru39Bj90+qe8O9CCZoLlOUhf9GB4bVjtdh5IJyrj67QGS/J7dXEmPjCtwEw+0L9nHnCeWtM8qmdy1BJjYhni7PhrzFj4THx933P7D+ph29cSnsb3mj+kCaht5XP7VC+BlEW7rIYHXQce4duvoYDSJdOIqhzr56fPGudcUX2C4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gN5akswZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gN5akswZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0E5C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 08:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763887913;
	bh=zePlwhIK8kwFjtIFOX2iDL4zIBY7YhklrcWsbM04a1o=;
	h=To:Subject:From:Date:From;
	b=gN5akswZBhO4s1XLe1y95TvDVxQGdsPld9OMwQdNfQpLCD4kfQiZaaBPVCOngGByU
	 l2Go27Zykq/XVxEN/KbfalcTLV4tVC1/T7fpeLapHhmABp+TkxPA0JTLyhFMmLDT9Z
	 MMZqgep5HyterAqMpAVy4TLcesumhlO7Tdft7IJ84ovYJnYBaoJrHf6zc6JP2ZWHlx
	 CXOn2dnjdgsWcEKFQUGYSL1DjJ7DRURIl+2CLEtVAWfaJzYcOfvSN83y7cDgfNnVj/
	 wLqvOPwQ5b2lzLd70K4m8u3l8Q5Jq7WAndgkYhnbzNxHo2FB9LSZFvFzYPBaDZQmJm
	 vIMNEUO9CkGOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95490CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 08:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176388791358.21121.723423661538635930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4877cdc659f607cce4751a64f06fec3c4283c83cb7da8f185b3763f07f82b823
Date: Sun, 23 Nov 2025 08:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763887913
