Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CB91BD9C1
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734712554; cv=none; b=E6gNLXurgP+iFfEDZ8zIYdh16UwHIan8Gc7SaXTHak3/GCyYle0+DdBnabWq4jNsIYb7rfHSiQ9sdR25OgAR9cqb4+lowldtlOGQft/ODNAgI7HAsSawJs2RtZMfzqRFNkN+DTvLtvLFiWktEe9tKMcejrjT8aPyvwTleofJjiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734712554; c=relaxed/simple;
	bh=3jYgcAdo2Q2jdnq8c4qYdjG207jBz1up/1/bd4M1xyo=;
	h=To:Subject:From:Message-Id:Date; b=jOUg9YObkmRglCb/goteFEGdoCnCRMVXttdLIe50dLNyO1f8z3xuN5ijfLZNf0eIvPHIVQz11OwGoQidzui+ql6GKgTMv45QlAqy0h/7HoVUsf88N8XD/4eTHnKCjfMFP43TsPUPyr2CwM5DL8sQLlnknKA0WIWu73xAcuJf0t8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cTSvMp3j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cTSvMp3j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47C1C4CED3
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734712553;
	bh=3jYgcAdo2Q2jdnq8c4qYdjG207jBz1up/1/bd4M1xyo=;
	h=To:Subject:From:Date:From;
	b=cTSvMp3jp1OhT/Z7/NZCmhkL1FSeny6JfzYY0bX7f6XoEJUP53yScZSSkL8igPgoi
	 mvu7VQLY3DL8AZjy7miNm5QqPAszyzYqEzIedxDBuO/1cLC65ta0B2i62LPXmCdJ6w
	 YJoHHPI5uqqg8/HdcFT1TKestgJjFhoXod1/bL4+f/V5mBni1u09Fj5g9Oj2Q06JRC
	 rsnHONV0LAOZvHkqd79QlhtPTAdZlwuVPKKaOzdu1fVoyhdaCUphBel2aOFUaVnQDv
	 DqRu8h1Fsqyu3sDlJWBQNeXQQuty9/zdhN/doEpRHsAgJA9ZcAn3vFMmcU+EvOLYiz
	 oUHiGdX5n03Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94803E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173471255359.12860.10793911595219924442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b3deb0d741e17811995576471365c3264fcb44f9045fb8ca896c9a623d7e13c
Date: Fri, 20 Dec 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734712553
