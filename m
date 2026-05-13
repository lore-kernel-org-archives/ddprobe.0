Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DBC38E8C1
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 07:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778656834; cv=none; b=SwWSpboAspHJ9ay481b8PkAaUZx/KjpyLBooYlfiwYoD2poWfYDRFbskQgur3b+BAWTFjVt3tG7hBkFg+j/Z1aSNEEmIzC1hJW/aatO6tuajOVYkht4VufmFMdnEsV9z/TYWX2IoSZsM4s7pl6E4Fnez9SE6s4cCKUS2iy2Qx/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778656834; c=relaxed/simple;
	bh=A8hDWp3klqkGyJWhh4OyPoSBU+x3lyJKjEA3zUxUb84=;
	h=To:Subject:From:Message-Id:Date; b=nAwiNVrv5kmstIM8bSu4cfJXs5r8Grc6JpQGfHmm2xzX4PlM+s/wWqMng90fRqEwBEmqLnCpJINOdK4HDjLkH81Frs8YUUHFmweN26Wsay68xtrdGPeUfb754oXF5KjcIq7Zm7wTLhUhuBfqCGoIcy3js6PrXrC/OQpU6BOTZXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tkk7jgTn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tkk7jgTn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA586C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778656833;
	bh=A8hDWp3klqkGyJWhh4OyPoSBU+x3lyJKjEA3zUxUb84=;
	h=To:Subject:From:Date:From;
	b=tkk7jgTn0IU2FTJRU7xjNQbob4++4J++6EuG5a8C+8yTqQ5UtmfpreTIDvo5pVgCQ
	 xMsmhfbyt8rthPLUKJTGDUUBn/cckH9mB1krgnQG+3U9JTlB3Mou2taOR3v1Srnc2b
	 yZkgRVvVDlpGlxZUzKQIdMwxGJu9M2sBwrN5hv12OBJV3t+qADnrarTGcqW1i8Cj1P
	 jNEcMjX79u+vle6iMJcNAJniekG6hs7/yXJmKmZnM4PxWi+NhJVnaqOXRrfPD0TqfY
	 Cyyjj1t9Hf0vDAeHDmWWA5OlucaVc1e2D4rMqbMDYQ88pvnAfW+zNtY1/fwnJrVa4O
	 r3eH6kLV55JgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB03ACD37B6
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177865683369.4031.15167573389265851040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e70276e8b50c9061a9a2ddc8e9714f66167403dca52dcecc1761564ad3ebf343
Date: Wed, 13 May 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778656833
