Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC26193062
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746600594; cv=none; b=pKW+npVoPRegIA4hlsICcxLMu5dbIHVQb8UhlIHzJxP3IhhLMS51QdRPVJLy1f5EBC+eXBHmmaP77T8FstMqurdGI74cDVXS7iN8itG3d+nAzAe7Y/tXo9Rs9RbV/UX5o0jO0jEB05QBcVjKSaau9/RlSE8jzrrlknZgEykYEWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746600594; c=relaxed/simple;
	bh=OR3pLsKdqEhzrmD5tEYzKs2tnkiGfDigV8qIGavhqoE=;
	h=To:Subject:From:Message-Id:Date; b=HMOcn+JxfBkOWbH0rqn1XlFW528zl4g2H+k4+Mi+tXLU5NwwTKyBMdP9qhoKdabgFnh4DlxRK30Jc7fMZhcBFq/cGWeIUbZNVynz6qtVVEo/sGPac4IqLQZmKtBzyZdKWhfs00ca9SIqtFtr+4LU5OcY2foPWkeNSvWwEXFasfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVcOQH53; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVcOQH53"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A314EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746600593;
	bh=OR3pLsKdqEhzrmD5tEYzKs2tnkiGfDigV8qIGavhqoE=;
	h=To:Subject:From:Date:From;
	b=gVcOQH53apWErt2yaEWhMnXMUlt5fN9Bj8sNGIVUZlyNZ7ZL2WRGWcFXJ/fW77ZiX
	 2tSm2FJUDIXnEOuLrYeBVBFXkC6cFbJzNYANDPFgbdwF/jpzM399g6ckUjgpsvSmpQ
	 IcnwV5/3ll/aEZMHfFTIK9X7o1h2uGQvboSylVqdzAC5wVOG0RYJ9jatiHPjeH9VdO
	 bEcEmxvjDn011sB8otYsEgvt/M2AhMKgETGvDUokpQuzMD7bzfrrNnbHEM8JliomOj
	 w0SdcGOAhUqe2dsquUW49tWbPuKhI4NYTKPCEodKtjT19bmz0dhb5k9F6ad9XYdFo8
	 kVFcGp0eTbvPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960C1C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174660059357.17699.16827075610732382030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3196983c4ca99bcbdebb3a3702a2d16bd8968efe9e0cfa0bd2953f347e44933
Date: Wed, 07 May 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746600593
