Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4872613CF9C
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746952794; cv=none; b=uLMHVlEqWR6rB9Ibyuu40I5kznkVFXmev/Ywtg5+MwGUQNeCjVotULrTHkCuyVy4vUQxsH36/psuqgTVPXARGf4Kosm+NeVoHQe/3Nj81hXpJl3x10zwzYMaOftf22YquzEAlGragy1l85BGkWMijfgib8x9ua6neXSYzOs8pG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746952794; c=relaxed/simple;
	bh=6FuF6Ki57HGUz2qc7huObB24XoSTAQmGIzyxzHVfpoI=;
	h=To:Subject:From:Message-Id:Date; b=ttuXyl/+ngQCXL7vtrZjdVlox50QFb+H50CvkWhMlPYCHt0X6xEjBuhhhXs66r/DoXR3OqA4Q1l9uGso7t5SqbfAdoS3+zO6qOui6+PNWcdnmM2D+oaNmLnxQfbaDaEu9oB47vlvohzr8IchSDiqPlCobniXx+K0r8vj+8J0gU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JzLTjEcd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JzLTjEcd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95A7C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746952793;
	bh=6FuF6Ki57HGUz2qc7huObB24XoSTAQmGIzyxzHVfpoI=;
	h=To:Subject:From:Date:From;
	b=JzLTjEcd5t/dV+6BSXrkXoHZ9oyJFTYDGhnUlGwTXD3kwVO/V6Wne3jscU+FBkVGL
	 7BSiR+pXCxCSES1d6ZEsQKZ4nngsnmlPR1vdgOLtU10FHcF3IZILTywkMUNaHesw9V
	 Q69AQ7LFq1SKh8fnLGTCW4LRb7+zidSF1VFkFqmNyyAnlOM3uh3VHeoVf+jZ+TcGaR
	 SdCNgZ3lzicl0ac8CqTpohiMqfmN83eiXcaTRbM7sCVGa1+UZoM+5k1ibxIpvYZp0T
	 2hDu5ZRDKm0kYH0yIK6YxSJgUQbBBXuuj65DeJvPq7rQgkPQd+e7XRRWxrsfNZivfb
	 0t51Vq8OWfGHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93444C3ABC5
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174695279358.14513.9803454942257479801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4979948e31b03c12741c9d16267233cf6c02746454e2bd3ba0ab20ad4e202776
Date: Sun, 11 May 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746952793
