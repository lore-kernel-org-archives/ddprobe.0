Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14910679FB
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709477297; cv=none; b=dxxaXBkWepsEshmxngNgjmmFWmw0/W3DgWh2Y4fPCOba85SdxG6zyp2uGaw2vaN+0IN9kK3fs5N5B9neAJ3ENTEbrzY0t6ktTePuSB2T13ehal0E3FQBeU2MgsktFN2ggxUkecBouRzzivKxrhE+64vKp9RapOOjwnF6wIabuJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709477297; c=relaxed/simple;
	bh=AW50vfMTH4H13R2Y4NEy2OlprVZSjL9jtaEqBEImXpk=;
	h=To:Subject:From:Message-Id:Date; b=qKufV9xgQT8h28UvYsV07d7GIxvJUEt4pDDwR/emYES3+91JhtTptvCdFp0lWxXwSNCc/Nh/Aoo1Sx3oKlYB+uobNYbDVfQ8fUPMRj6dvue0MlOzBNalNzYNEH9lKdx2H5ywVv7W+WhfC91i+FdTz65Ch5XGGwMdmT6t0sAyFKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TAFVKvlX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TAFVKvlX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B8C3C433F1
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709477296;
	bh=AW50vfMTH4H13R2Y4NEy2OlprVZSjL9jtaEqBEImXpk=;
	h=To:Subject:From:Date:From;
	b=TAFVKvlX2gtZcIcqNiFUJ7mABPfOx+Ll8EpnN+LJ24DsR0ot4Rjcm7WjpXCw0uov9
	 Tro6AycuQHkkBrpdK118daaoX5lV/9JzK7Zpnql7LsIQF4S+XWmpYpK4tru5OqOljv
	 B/o7u2TiSnBklBvESxhoLBjgYbRk+vLm+6D6YN49NwGe/yp2Lr7g3zWB6F84FWzDSm
	 Ect/dJppG68CYQTHk4sOd7sBOD69t0odYArFhXaDnzFtP4VIDWuj3QFREynbshlEVK
	 hWFHdpTCpbCvlPUIy4oEadVPFTbBvrX8poRsxchSN/tdOVPHtQmAE/3EuK04I8Vb6J
	 8cmMG2NqbjnmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60C9DC48BF6
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170947729637.14290.10374083612922864970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc8b82eeb08ccd93d7d4268b88ad0e59ff900c663a574ea388418392a6ceb45d
Date: Sun, 03 Mar 2024 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709477296
