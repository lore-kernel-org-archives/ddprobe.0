Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE177E1
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722296154; cv=none; b=e3ofmCZT2Qf04Bp0/DUf4hgwSrTuYNdeEUDbH/0JiwYHjoiH3kMyPDSWZUKWFREv+2U5V1CiDTSE2ahVUKhzz42zgLQcQegsoIJwlqVK8zUlMqkwMpMnRkREORzR2M9CJ/QgcyNohvN3V4WaPSLwqfiv02XI4rdRlvmDri+A0Go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722296154; c=relaxed/simple;
	bh=KZLJay9D65bF3SB+WWzIbMVMyg7viI2W+DttcLY4xKQ=;
	h=To:Subject:From:Message-Id:Date; b=upuvwHE8Ykdr+78CcwPxoOzKyA8ehi7I6Ech++z+OBT9OBJ64A55FR7oUquiC/T9EjXl3IFoUXS7ZclBviSKok1QwC1WeA4wyHM0xcSUSUdc6tg+9X4WWuiJohqbYcZUvY+UAgKA72tz/P3VLTHbQLHc0Yem0fsslWGXMpcRd3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjzMoPHl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjzMoPHl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B46E4C32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722296153;
	bh=KZLJay9D65bF3SB+WWzIbMVMyg7viI2W+DttcLY4xKQ=;
	h=To:Subject:From:Date:From;
	b=jjzMoPHl6R4e3PGti1qG0m5Vb7+S0+VRH6Z9uMd6NQdhjUlMs5CIJR4OOJ9inFcd3
	 EJfWoqXaBTefuME+1HCrIK0s8dakF9jAImtZZNIY5N1iCtX1uiN8T2rutaUtGpzZjz
	 pl3jQ5LTc8001UoWgRAq7oklzMnvEwILSA1+I8878flRsG4hFpxD3t/6TZtvoqjq6w
	 wHmRe9gs+eioPrVGnBgcEunCotZ32+ODQj1xRU+4KBc2pTW/WH5FuR+b0eGonD9EaL
	 gZhuoSkuhMOq94X4AeS18wpGKVeqJ0v7BhbOy1+H5p7MGY6QvdGocs0yGwL/pFZW8B
	 MKRJvgtzoZUXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0B5C3DA61
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172229615360.3013.2115326860701223533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbc301171698cb1e9f55ad27282fae90939990cfa841a4428f63f17f9e03f741
Date: Mon, 29 Jul 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722296153
