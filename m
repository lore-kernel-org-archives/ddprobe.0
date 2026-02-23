Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315883074AE
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771862094; cv=none; b=I78czyc+xCVAcgP7wjnT2GEq02S5I4LYkRLSuoC3yDt5lgMmxzkj2MpIYF7cifM4/dm9WKdY7A/eFLmTOWTnoMVW9dNBSlFL/fR8yzuLOzOf/ulV7GmecVNMv/OgbgFdvU8D43ySal1m+BVv9s9GbMAQxteMwDHWG7fgjTNwvgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771862094; c=relaxed/simple;
	bh=m7xLv0q66NGdf2ra5fBxE3dufZmcPBfMb93QFBDp4U0=;
	h=To:Subject:From:Message-Id:Date; b=ZpG9gvbvRXbIkXUnQVRY7U4o2VPIPFPNCQh5rJXjPgCfqffzUDwNdVdo9h0YNyopLapcgwnr1MwR3+n+6V6nXYxTGAd1BGtFSFNf37HFgEb4GkmGdV2hg1EREQa7YvOT5Tp3xq6BzgHhXOoGszN39h3H3Ly+DQc2Qv+FDurW808=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvnbllxB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvnbllxB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC26C116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771862093;
	bh=m7xLv0q66NGdf2ra5fBxE3dufZmcPBfMb93QFBDp4U0=;
	h=To:Subject:From:Date:From;
	b=dvnbllxBYMEVclfjwYoOX73INxAL7RPfOfEv0dC/kJF+68XlYWMv7uAThGXlgg0y6
	 OXdKMKIFtMHp8IOnk1xq4oOEhL5HkI4nt1hYinPB7jWQiJduhT41cNFkWolGT1XGpg
	 EPTb+c+5CcmCR6bVUrYWNi1+hvaFNoWxYtEh599NHI2ILh953uUvH0TkGkoA5Qunb/
	 8G1Eb8TOp7IYaTWbTPhVKUZYg33nmCYQ3r7I7S52NIGaDAGXLeR0ctBWKVonOP4JI4
	 fUUQoGJkE5giNVDlL/HkzJG26NEYp7X9AkKhIRo1RRMpsITv6zdVjXCL+jjwCBcFI5
	 Lq5IRVgl5yKBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90260E98DE6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177186209358.17501.15427119497186204946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 907424b418f6f1bdf229eaf2fc9092e9a0c41123a2b51125c68d99cc35247d6d
Date: Mon, 23 Feb 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771862093
