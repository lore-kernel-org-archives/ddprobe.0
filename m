Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538ED3FE4
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748923794; cv=none; b=lkHBlWG3QrOGzCHOuNJ4J65RmvdTmOeD3VlUU4yLFnn/ouBUJi1ZTpHrnS69Zn9iqMpSc90Vp7Tx2cMsM26JSLFesEIvAF1+u5byGZt7NRoWpl89cB9oDult+lusacxUD7QdyJRr0lGT9EZagrC+ge9fwusCEQzlbk2FcwUpaBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748923794; c=relaxed/simple;
	bh=DPwZc1lU4yQGlnYTpqW4kO1A0AQ8hwDpr2mEqIqt3NA=;
	h=To:Subject:From:Message-Id:Date; b=XNzvJ3tNxxcUJxcKgXuvzWeEYkMEYaZVUjT0QUzo695DiWvapQNZRP+aB6gKTq+cFB83XNwjygFDcn+6gYJMQFKGH02pYFmbOQaR3Lki+HZdRqymZdFDWolB/ddno05xmmiXl8dZA2f8puffdX3aTOHDZ5FxxgnNTb940E+wKCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0do5dr5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0do5dr5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A397CC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748923793;
	bh=DPwZc1lU4yQGlnYTpqW4kO1A0AQ8hwDpr2mEqIqt3NA=;
	h=To:Subject:From:Date:From;
	b=M0do5dr5S8EgljRN1yY9wkSnzbwkzIl95wmMTrZ2Pe7/dDKZPHVwZgrzvJIKNCQBj
	 uePOl+fNhhpp774VE3LR8fG9uNwynbJw7+txhguvmqA+Zr49acM9vOYr7eZ55pTOlX
	 7KWrGmd2IrL446jrB3FLA+DmxzJImyykBIAmaLy/IpxPaRI0L4ZOgXUA+edlnhG1gD
	 fKGOOQJ3sAi1EIXrU7rWyZ97o2cFIVzV1Uq+8hSOBwRN6xpY82gT0wz4oUiidlhePO
	 ITrPLnVIuwDtRTcgh6rXoxeD/+PNr11+5tgJq3h9s+K4WFvSxnrOnGapBFtzDflI7u
	 ck9yxdUBjn4xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F82C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174892379358.26425.7731463015770480424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d3f80fd6bd67eccd1e03c89e4cf61f61061a0bffea812a521ea0e30ee80895d
Date: Tue, 03 Jun 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748923793
