Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59CBB3546C3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785121234; cv=none; b=X1RlbqDK/1HLyY/dEuCRHDvT5Gy6iiIrgWRcbRUKHpyI2jhhO3WED/pReRw8VS/yJboJL0HoDlse0IrySf2SCYuXf5eG5ySq/MMPP2gSOPLefEBxkzEnw8SlOTdfcEE9bZu5ovnnXMxwtIGLVHpe1UUzn7oRTJVQANBcuc4Y9ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785121234; c=relaxed/simple;
	bh=39sI0WQmPKzfx5ameK3RvWgmLmYl/6ok54CxmvkZfPs=;
	h=To:Subject:From:Message-Id:Date; b=Vpf796w9JOcMqbVwxBg64p1HLz36Tt8dUtHHg21amCHLGGAiew2D94HsIBCKM8I/SPjozxCAAnrqX0Z3WkCfB4gCThcgitBJb5p5HsFq0mXImm7Y5b/0KzjYv1EKsUeSpwhiJVDJnoC4OTtOk+eeWsB6d2fsq82ANalmqhz1WXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHYcgKRL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHYcgKRL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5B5C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785121233;
	bh=39sI0WQmPKzfx5ameK3RvWgmLmYl/6ok54CxmvkZfPs=;
	h=To:Subject:From:Date:From;
	b=BHYcgKRL3hrs31mD9NPXRiRWOD3AO11Uh4eeQKU7QgILCTEsz9zumzOnT/f3B4WCy
	 +BrNODCUD4fD852jdS6MmsiBqFDVxiiBDMzL6wZ94zg2OzlZScO8Mp7tWUTEIuZiS+
	 pYApbZwKgk+UDKwN4i282Fa+Mt82Qk82Gq5ux2q77cN3nms6u3hVSCFbmRBdDgE33t
	 AW6zk8sLSRhPTxENVtSI9rIkMxMqJqEHL1XPZV8Kr4RtvneVoHWBKeE9EJryCbtyO4
	 WrqNgVgX+h4SPqw2XQbyiXTDXZI9CDrVv3O4Bd3XrIVVyecltbLYxWXTjLHVB08EzT
	 XgZm0qKs6kC/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DDAC53200
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178512123368.14719.3179175086280082955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad0282b82785d9eed6c5580ba7ca7b3bf2aead11449161851c6e8c6cce33d6ff
Date: Mon, 27 Jul 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785121233
