Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4911333F9
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746924594; cv=none; b=AQDQkplUFA1wmOvfYuYjHEhNsClBnzqEAMGMZlq94Oo04yMJw3NfrNoiHlDBK2TUW20F0eoNLrWjHtdpQIntFAPkjFLgi2E437UrlauSEAWBKr3p2wq4nwZ9gxKGUb5rZLFlv1+3yorpt/RFUidfQjtGDrXH465tfBisX5CzsP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746924594; c=relaxed/simple;
	bh=DkVblwwbSb3HX2I4ZyEmUnsb0PQRjfH47exUgFSREeY=;
	h=To:Subject:From:Message-Id:Date; b=a9H23rHZirwYnzeUSYNHF2klxLr+wgfDnB9e1KmWTO/C8pAQd6UdqeA7mWmQf0af5Iv4pTNXRRCFTLyyQ+k+HgbRi+RFNFRJuKAcv2AMMto5qiGVIGQ0ZTmMZPPLC9mCYSJAPfEsBLYisEKPf5SxRQVjBXhTkVY10tSefySxb9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCGJyyjh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCGJyyjh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA36AC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746924593;
	bh=DkVblwwbSb3HX2I4ZyEmUnsb0PQRjfH47exUgFSREeY=;
	h=To:Subject:From:Date:From;
	b=aCGJyyjhvEKY6qAQAIgZoTwnUMgfm/S43TRdpuuCqGOxaZnutcnPjBeK7w9cVFLo0
	 RlwUwaEwULIuC5Zj8TWPes7UaI85smS4//LIbY0mwoeXbD48bAMnybhAZkMm9yA6UI
	 Ao5nz/3v0oz9iABunqkQH95SLn+IkDkCs/Aw1Ikyil6/LgiGlKXBd1tCwkdL0TIMFd
	 3yU+T+IwVIKTvsTRjp6yFdJBAOj+whGRUCgpsXEAcvafcf/HFXB4heF84aViYUl8bK
	 xBIIXfO2e6vyJR89pKKwjHh8VOzJ0o1ihngyVUWePEIB0BW1AjbuIPlsVAGRW0IQvp
	 7MEmmSwj7N8JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C5BC3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174692459357.21978.14724238296184786073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 614ff5e3624dc0a078c678da902183e51d29fe04040f67c061e9e7e28b78d35b
Date: Sun, 11 May 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746924593
