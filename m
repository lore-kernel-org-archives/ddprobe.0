Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185E027AC2F
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754069395; cv=none; b=TEFYqH2tFVEi9cFEack7iT3IUl2pdZQlkKvlUtPxozUJvpW4UOvEKlTts1vczW4UTKrhz5sCmv/+NlhoxXluW9StQfMbKbFbmoRK66xoQnQBJj2ft1K4g7zhxfcNSHrKcYewNZ9p25UlwPdQ6pdNXx8M8iWc0XdQsw72Z2po3u8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754069395; c=relaxed/simple;
	bh=o//p23ekof/QcHplWCDgyqYVc4RRzMfQ3Rpo/p29yHs=;
	h=To:Subject:From:Message-Id:Date; b=Q99Jx4vE7s2eZGzIe7iSo4D9W83xvGDJWKDEZ6/mPvSITPCoG2KmmJ8tP3Ss/0BrKjIxG/T9Ve9/DqkcrQVFIq74QH/JaHJe8f4e0fXrLclm8+4Nwe/pJ8anx8pQFZAAgLGZo1xhJisWxrLNlh5FYK+N3GE4BVJOx4I8ODpmZ40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LPx8whAF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LPx8whAF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6FEC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754069393;
	bh=o//p23ekof/QcHplWCDgyqYVc4RRzMfQ3Rpo/p29yHs=;
	h=To:Subject:From:Date:From;
	b=LPx8whAFN1fNQpt/lEMNT6Ns8JJQwxAUAhSUtyUuyT74y9lU+GrgYiImRUQBxfERK
	 hWMu9RlHiHM6PnxX9PTbDnoqIKd2nTthe8tsws2mKtxvm0PrwAuhjvTbprG3xebjBC
	 QLF+MJSerAdopkdkJ3q0HjYtYBLaaM7c9YhLGou+4qKUoe1oyO7vraNux8Sil0iemJ
	 2vgSdv+pE7RhkLzzBBiS+3uGUsuAeJUSOFrP/+AjEcCiGGW1dh46K1CONAiqAfrNxq
	 pahvPcF0xuLvdL3MPOGdoqGDu6lVHv4cwqagVITacpMmKUbhYJeO99H3hRPHK1qVfY
	 PcpE6UopjhRhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91290C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175406939358.17069.9214722756083783679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82369df5d40658b99629d8300312a1a27d2c0947a2f1c924ad694a77717dd470
Date: Fri, 01 Aug 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754069393
