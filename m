Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CACF42D46D6
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760886593; cv=none; b=GhzB1sNprlEaEe8f5Dc0HL02U3HyUCBJBMD8NJPiN6CcT2BUMsaFxdd4eGSv7D1367PXo62OKPem0iec8H70CWV0Z+NnxWvCFrU0FaBOu+D0n6G/LJoyJ0+dL+4jlAF90FtAgE2szY+A27OJTjefQJdUybTH0RADX8A41TFVwBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760886593; c=relaxed/simple;
	bh=hNaDmKGwNctnfy11noVYOc8FSrmqaL89sXz8ywKmYh0=;
	h=To:Subject:From:Message-Id:Date; b=Rv2GSuuhurzXCSfxG3ADFBjmChURIu8HMKeE39mXkbHvkBPh/z3SHIBvxO2ii4GfoKId8JEVjbTsw5UVZIn2Cqc/JnznFos5D3qAtAh1ld1qA4PpzGbKj8Ok4SQnJAbHmWLiGAkNWHDhrZ1xmOhYHxTLFLLk6stFk+BRPYzeJQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3pDuzbH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3pDuzbH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84B5C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760886593;
	bh=hNaDmKGwNctnfy11noVYOc8FSrmqaL89sXz8ywKmYh0=;
	h=To:Subject:From:Date:From;
	b=A3pDuzbHIfctgBMfJ9+xvdpNUPYDVKbky4fGLwTYcUr+joFeu4u7RUqT3FhLA1xqt
	 hX7A50qTZ5ogfsRzOQmWym4RjY0SZG/DsNrcuNxImUyuUnUd+SIalZ82yikeX/IcU5
	 Uxur9u8HL0iilXtAY+ZOiuQnqK6oAPyVOGrwMLDB8ft1e4kLoYh/ZtCFxJ0HEGK9DV
	 dVeg3hbXqmC8JTZb6vHWyirC8HX9hX5UGIPgPEFWDOvBHuGJgF6eCHSvd2/iS6NdEY
	 JIFpYy/lEfavDl/vkIgTb93wDyIlP4HKgPaCR6Vddh2uh0C2RKOKAxWF/ebopv1gX1
	 J6VCSWMnMfA/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98797CCD183
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176088659359.29999.8110084183611434623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0c7c3da4340c9e4c0a1702bcc916fa011fbfea9a3f36fc418a1d7c85e31deda
Date: Sun, 19 Oct 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760886593
