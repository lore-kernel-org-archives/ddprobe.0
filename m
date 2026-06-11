Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1470238887E
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 22:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781218594; cv=none; b=dU4ORkS2qRcaPdspyrexArIPYM8ORf7uTjOCOW8U70h0kpkkVKh3JRMUHdFpGBQRLj6T//0FShS/u2hBMbbd1z1jmwKZ8ZeX7vOS4cDoTbwMOgB3vLYA/nt0T1h5SxDeSVqKaYcFtA6zUwxb5u8s5AvmC+uoEdlYYWSJrKW8rhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781218594; c=relaxed/simple;
	bh=9X3H7toNgdEopyT/SqylIPhzoPARNX+a5sppKXoH1L4=;
	h=To:Subject:From:Message-Id:Date; b=iVHkvWjxQWTsKz35y487L/5EzP3N99AIGEFaCgC7uzkr1f6MpJUZLPK0EJfWVbbbOCBFvOY1f6QReVYrSCwsLr7Nsjvr6r9tKjmNQfN5hZwQcK0GZp6AVT0ZYuvCD04fedHRPVwMUQMZ0qn/jOt38yXpzGzqnq5PSpBFI98uMB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L8Rb5xTD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L8Rb5xTD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B7AC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 22:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781218593;
	bh=9X3H7toNgdEopyT/SqylIPhzoPARNX+a5sppKXoH1L4=;
	h=To:Subject:From:Date:From;
	b=L8Rb5xTDDiZcFwx4Yq+35vTepwDr1SLhrgfTX5pGOstc4TcbSBhq1BwpN1YxD+QHa
	 YdjdhN3E20wSYDJOAhCgZ6jBGLo7n9wImu6gOHI/o3NX6UvHisfeQxWzW8OUbJ/VVL
	 ur+g/CobTEtw7QhoWcIT4a8Jj44LzgXvT1sUvxu6052fR64ucSaeY1m3vd6SzKpVS+
	 bzlEvw+80yyRRYBRbyVspSG1wo9lL9bjhF7ohFXB7W4K6XXnkArvs+Ve5sBw6DRROb
	 tXvZEvrwXwrn1lGtldt0n4hSCrTj4vYy6BzfxR24GVRmcyVSu8It+/w4lpWE/UcIi4
	 jYOoV/6rkUyvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA64FCD98CC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 22:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178121859368.9241.6274618124241285799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b4057d8af19f82b1c4d1b5d04f551b87f6fa438fe419316700385e52eeb3e4e
Date: Thu, 11 Jun 2026 22:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781218593
