Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08C0423741
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748176794; cv=none; b=pGRTWVO+QnMamB+k5vFKjvBO/8PHF2mPwbMdYgjjdwOOydPIpbr42F0wNNF+skShGir3fMF/a0jt+yX95CsIgC9ZbdzBs5xExglNTpBcy21XfxqlaE2hhBtFj75H0KryT6nTX6xDL71G10Ehf4iVgwLObAfsvRFGlE4eWE3JeRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748176794; c=relaxed/simple;
	bh=7JmCxuquwzvRyWJ6H9FUKQEKiBuGhS8cN8lQAWhKR/U=;
	h=To:Subject:From:Message-Id:Date; b=AJRz+4W1fKIlnweALpwsDmjA+nZ81NRlLmtPI+7lUPVM92RdHl+i1dm3gVHFOdNl7DlE8PdYiUKdnBPA0jOkNHiFOuX6ujy4pwMTnIiE2EcyNCouUe/zy4Lw18g2eMglMs3c+kfGxvLXmMYedKVhkihXv+kZieKfxsQc+hjLjE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BbSsAfs/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BbSsAfs/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A775CC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748176793;
	bh=7JmCxuquwzvRyWJ6H9FUKQEKiBuGhS8cN8lQAWhKR/U=;
	h=To:Subject:From:Date:From;
	b=BbSsAfs/lBg9TlPA9RGrHKl/ItESW+bIiZ3oedF42+CV9aJhxNaTc0rzb01hERHWz
	 P3R3OEGLI2VcxeolM0pO/otrk9dj+WMBT9a8YTQ1NTb3XecxKiuiYKZotb4rVbFTSF
	 PSyhIT3EKhhmj3fPvcmwmg1Ph9VXfzhltuzIBNvA/McZE2guHcCSHqgjcYD9cgRM7l
	 +0EgSRYwwRxmCEXC+mtZY0KXHOflcNypDnUuLK/N+Mt3Fi4dpyKxeAOToywxjhtL3a
	 Si7itci4+R2RLyncTYKqUQHmCFmBTsI7jLAuGcc5mCNgTSAXpguG4bUy/55VwCW+we
	 CmxhsUMi6HffQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94048C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174817679357.10546.13945311479726068038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75038e2ca613d4822c88bd49fd912a363b1bf64847bbbdc8a195d9b000c908ca
Date: Sun, 25 May 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748176793
