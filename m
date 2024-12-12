Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2550D20ADFC
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733992554; cv=none; b=NtnDSuxKt5TB3Ce8YUWVbIvf520Zo2upZzMyi3Hzw5QYxIuQPzcHNnPTj9jP7E6RW98AloJol0tgl3eIAC+u6g/jPnyX4rhBVsbi+rTPWr1s+XqqvDVvnPjtk6oBs7h21rKzeZPnnp3vpt8QiB6xSlP2mUgyVVzoDfvMo4dPw/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733992554; c=relaxed/simple;
	bh=Xlot0Kb1rczoWLV9zW9njdHMwjXg8ZLe+e2LazyDmgw=;
	h=To:Subject:From:Message-Id:Date; b=reizbqGy7aBgzhIgHilAF7EfNfNxuFE3mQpkiSwzh7cRZVaDRYBJnCXJczTHhQlbqAtNKSiuBwLJlDuMZPCugXVOMXW8bwo7kn4iwAlAo91GqNE6aCh2hgTvgh91x8aHyT/nK392CJLP1dPAcXfkLFbz+F1BoaRy1bqgUZBYrYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDeZrYLm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDeZrYLm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DD9C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733992553;
	bh=Xlot0Kb1rczoWLV9zW9njdHMwjXg8ZLe+e2LazyDmgw=;
	h=To:Subject:From:Date:From;
	b=tDeZrYLmgl13Q8rLFzIq1BVmt/E0FAaRPxEsbbisia0BNRCNecHN02BF0/DTRgcVE
	 fMHMoUB48hgQoK6yNwQUweSQg6W3hJCFhgFoTkzN1l0iIyUZ1SAQ/5RsvocdifEvEJ
	 0TnYyrC6W3hPzb/xqWQRKyctSjUss7uWK15+4+m2+0Ygh90+x7IWySb7BXY+XMq5OW
	 ofQIWeu2Eua2y5doztLYBc+H58Wm+9ieXpbCTlkJVTRoXYjXN5uWMSyhJddW4mIMpD
	 /bn3WFCJNf2qgO8IFm4Pxjj5Bla63TZJCYLx4i40ak+MtWQ8vPQ9N0PVTXS/QgBOlc
	 RRCdmv7Xcdzrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AB9E77180
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173399255361.3927.13008026799830212009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9793be77e9a48cd69aa1b430ea96eab157e2de29a7c2e60942f4284ef87d9cf2
Date: Thu, 12 Dec 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733992553
