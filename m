Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60F2DF5B
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721796954; cv=none; b=Np0xo/QStn57V/xJU09rhYjw6zaT5KBPq5NXG/zH8B62vcHyCXVrLY+F7mVVYh0n+y+xH2htE+xULNWCIi2nFJ0iw1gZbNCG8LFoQ30vomqEmVUaufCeVEnaQUf36LvDKoySf8aBEM8cWz7exlxc5Mvm3d1rG9sOl2Gvjbjl6bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721796954; c=relaxed/simple;
	bh=2g0muNhmRy7JHLT6x6njba+w03s1tvSRx/mCC/aYp3I=;
	h=To:Subject:From:Message-Id:Date; b=pM7uPkpGF0PVcWYPFGS7+hvuAM0OSG483R9MUojpqM5LQVArciBSKGL8N36Nm9ZZF5WUWMlcEY22AVOQpCb3L+CRUZozYH+jl3yotf5P1wWktLISVc6alRGkX2U7klnNqz9zdu7Z9Akk1A1mtzzIJ39NzLcGddou6PPtXg2EOAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dpf8uH/M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dpf8uH/M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A861CC32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721796953;
	bh=2g0muNhmRy7JHLT6x6njba+w03s1tvSRx/mCC/aYp3I=;
	h=To:Subject:From:Date:From;
	b=dpf8uH/MJEoosxWQHzhjaMVP9wyXqU/gw8TDbb0n7LM7ttLzAK8cW2uty8AIVlpTi
	 iv5PnFqR/L2fGCUjdp5zSMckhIoJ7zdOduXfIG1AzkUVS2ReHB0RIN4VOLJPJlkEU/
	 5iXdCWyzqJ1xGTcNLYAFDE3eSByhZCYdnM9mp5Lwm/y7+vnFdFJmlNdA2y+h+bCrqk
	 o6CpZhPNRpbL9hddGz/oV7fOx9dCDcQnsuY5KNKI6Sqaj8lmW5TdJFpQOewfYL0nGq
	 d3v07o7fzPfDRdsROsdEuX0ywHxS2Km0CPoaYsA6lNXHGCyqudDJdLnDGGwDGEkKwX
	 L/I0PjL5RVnfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9425CC3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172179695359.8050.5242124021946905190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34483c5580544fbd5e2bba8cb5c06db6650c52362849254ca4063771ecc78a85
Date: Wed, 24 Jul 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721796953
