Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BAE640DFB4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 00:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777853854; cv=none; b=IW5iGh2CkMVz1d8yuf1JrnXg36xOpqRKFiXNNXBhCOcnSWSBoctZfBWiuPIpZ7qjp1sw9pSLE9TF/Xf6PdSNg4NpSewL67DZNxDKAVAYnpLF/geGRPVoENh9I/u4cNwBHtARVFxqmbAyUh5wsETEOUzTm8H/6fxusCZ9cWK4Nt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777853854; c=relaxed/simple;
	bh=1w8398+BIwbVlnVLNc1iROzfFY+ATzVh0O6CQDSFKWo=;
	h=To:Subject:From:Message-Id:Date; b=q73/VUteMa0fgy9AFFeTX9ZaP8rMJnK81Gt2AoMl5kigmm2St+WZLiy4tdA88vLARQuHx32o3zaexZclUQwOcbDCEJXoQOCuVXKmWZmQNIxSoOh3uUm8KT2AETmq/JzekQy1KGtcc4TRsE+0dHvNv8GPmYEFcd32lEkA6hX9WaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AWj5EV/G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AWj5EV/G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C12E0C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777853853;
	bh=1w8398+BIwbVlnVLNc1iROzfFY+ATzVh0O6CQDSFKWo=;
	h=To:Subject:From:Date:From;
	b=AWj5EV/GBckBYcDKv6DAinEhfCmSWCEVdk+EkxNAgq5Q56x747MIb2KDq29raao4P
	 ZGt4Fm6buCaw1Ycaj+Nr0rCWfPPOVYudHpGPs92VKigxrhuxFiSKQeKZ7eXVuC/7A/
	 GZWelF6S8pColHLdRUBeFRx2WQaUkySqcBRx1oTkrb4OVdZe29bNy8J65fFv+g/YuK
	 8FtuUyi7L08QZgYSjSUYPx9cwCVn0T8rEX3zVZaq+4Ne7Oycq+ltf6MVeX4eomrcOs
	 i1KoTGtn8GkovD0M7p29wibDwMM52yYLtxiXlSKQpBGyIP7eVyYWOQxVKV0NiKENL4
	 t6MI3Vz+EDc9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4FECD3424
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 00:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177785385368.11881.2534767929791396353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35ba31344cac5f7bd015f1b577bfccf2dc10079626f81620a933f1daef7faeae
Date: Mon, 04 May 2026 00:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777853853
