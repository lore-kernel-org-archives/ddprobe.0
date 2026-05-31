Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314E832B13C
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 11:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780225474; cv=none; b=cqGhLRcRAQNfgesJEyHXk6xbxU0aTp6cwHKSBdGTrwhmG2y9dkoItrLCrfvt1XywSi9VZz14T+dN7nKDysXz143rqFXbWwMRxY5CIILhZsYI0L2ciIDM5KZB3tJDAVMLiCKTdNcXpd11XVYD/pQzNDl24XWpVcPX9tw39U9PCXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780225474; c=relaxed/simple;
	bh=mSi/R3pLYot95qpbHnYpS8ZfMUGiyw1POFQVydzGE6c=;
	h=To:Subject:From:Message-Id:Date; b=tKg68bsvqOlWRv0Iqk7+pCzFGhaynug1eZuWssFi+xWvNcG3Msuhiu1afxPbfxEZ1JExKvybYXAhUF6usVWn7zWcg3nDOX4ZDjv2poL6W7km8GWLJBbB8G0n2Q0iw3K57M/KOxzGqYvKT2GK4vzGQVKZb59wusguc9bBLJjfBYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=emw4eduf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="emw4eduf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6F2DC2BCC4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 11:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780225473;
	bh=mSi/R3pLYot95qpbHnYpS8ZfMUGiyw1POFQVydzGE6c=;
	h=To:Subject:From:Date:From;
	b=emw4edufjZVQObGEKgXgTxa+eyw8IPPxydzp6WyMmtrvD2yFY2qWJb0t0Ix2Gdy9t
	 qdA414/DUxgp9UaliU4kyFz04U9WXwaFrS4yQp6E8Y43IXizLZg6JP2QNXsch2oi28
	 NZpxU6jJ0DLLtF8IO3KdEFDIWSL7fVODUPu2IiDb8Ds9qcUCgDkz+EGWordKy3UmTE
	 0uBd56qHrIGT3MtCs2qVYJUSiH0XsE4gOpxbzSEzQjkX5Yk4Qb/OeSbUIKpT8Yo3jc
	 62vS33eOFXIaHdFIIHRDIlyu34/2bsGuBvMi7VS9dNeYMNuN3RM485vUYZUzzE+MnO
	 zMYLxCquwWHgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BCFCD6E52
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 11:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178022547368.27077.13545169184780953991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0317554d60b1ac01b06e3108b6208c271d31ba021f9965b6f0a881b83043ba1c
Date: Sun, 31 May 2026 11:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780225473
