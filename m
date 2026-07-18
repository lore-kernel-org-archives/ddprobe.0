Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6013C72618
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 22:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784413114; cv=none; b=Oz7Je8NsUrCjTT0nQno+M2cTXjqkP9ZjaZGLwMbqPuE0Ti93lYTb7eNL4iXgRH1eK5tyETuIZZ9iJIhXcWktw6k7ZXH8yJv/OIklgQe6MRaWpZd6UQGp6740NEe9N9+zSpYEcs3e54dHsV1bPQuxtJ6YVW2xV3lV8n9OTTlM2qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784413114; c=relaxed/simple;
	bh=+FNr3qmvCzbKHNJ55qOlaoEr9RYGShL79PdRRKKNQsg=;
	h=To:Subject:From:Message-Id:Date; b=KE+xSmaoY/W9bMlJe2a5+NcLAOK36em+KRxAGLi0JVfOqC2g3eHKAyFxP3SnwJpNiOyfY1NkHw+WtkcDlW0gExOrdjKIz8Ns+VsLw4yYnDrib/Y1rh4fB/580wvoCP06xxEYmDo/0Gavt3RSF7I9+w5NRf3W2td5DeBemZIVtTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iWs/87dc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iWs/87dc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0235C2BCC9
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 22:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784413113;
	bh=+FNr3qmvCzbKHNJ55qOlaoEr9RYGShL79PdRRKKNQsg=;
	h=To:Subject:From:Date:From;
	b=iWs/87dcR3500KhARQx5I6lPARQ3vmuahDjwLrcTfFxnKz0JE15a91yjxZHka90ta
	 TdUT7szD6TPucIQ3JxfcNUIZjQERzkJJL19Kkczc2lO7kSvIuSvDddksLbAPRpRl/N
	 mWkHukMKX+oTfBMVAdHPPo/+D6pEgkfg1stv93VOQWSONCmFz6CX1JL9qAylskZFKR
	 Zvh5MhCZ2XIbQbF2n2V61lSVgM9f/w/Ld4/dv56PNIJhylP2rsPuLZDXuraVE0jWf2
	 xT+e7euv9ae6R5+vIEt+9wnx2FBBRhLOD18uXr4TT2Mwy/9pDqXSqEEGcyaaEy7J1t
	 T+9W2h3q4YwWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9E49C4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 22:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178441311373.7557.15981488825474623344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b989147f211543fc94cc6f5409e31c9ff7f89e38b7b54bb61995bc8ebd8da36
Date: Sat, 18 Jul 2026 22:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784413113
