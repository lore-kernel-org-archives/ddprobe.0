Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362BC342CBA
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 19:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782156394; cv=none; b=qkqZkoJLnrSsNde8aUzLPHJbV0OkCV//uEjLgtGbAna1hLBOppSazn4gbcApvkQQPQ50jd6Sy5z7YMboEukibWM61z+MG+39+/daGIEasU9Yp2v77Ge93NfLmpG7sv/GsNDgrPJfH/87QPxxyP5QjxKP3mO2oh/tdzI8bllc5sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782156394; c=relaxed/simple;
	bh=3R3HeYONHs5J8QQn0e1Fh6/3ZOVOfffZyUrWxsJB8y4=;
	h=To:Subject:From:Message-Id:Date; b=T2wteX1UAWKmWQJiwVhDM+5RUlnlJGDYGoeTEk9OuJMvWKmYvPbE6VmnzxQchQCilX0VXzToaDInE2BFTX+TmVjzhVpvRcfkd8GFYYi5k9Xq85Ac6gTDQq9HywWqSugRrhR196wsmfDSvJVF3ShroE5R6oBJ/1VSdj91+dZW7PY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OjKc4hZO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OjKc4hZO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD76C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 19:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782156393;
	bh=3R3HeYONHs5J8QQn0e1Fh6/3ZOVOfffZyUrWxsJB8y4=;
	h=To:Subject:From:Date:From;
	b=OjKc4hZOANkZPv4s8t6FVe6q3Ejsl23ZDANlW7bDst7h3yuFzhgaN0852UdO3pFXx
	 CvsPZ3vFOPh81UA8VTr+cBaJv2GvxGNAB5Ot6NDPUk++Zy/UIz/ddeiXac48CbNwWi
	 U2U3l1inBFt/XBQPrIOx7EL1qQ9Gqbob2hLQho/7NIEvZTclFbCS3Sw6fq67szex4o
	 CXgVPVvZJuSYCSHLZdLzcYlpurUFfUBdvRvIk7UbRHbqv5yApPKiG9M7fAGAzkd9SK
	 58U4ITRUggmqP5unA9Vp9Aw/0bfL0z3aV8hJJST0b4Q9QjJN06fH39CYA8fGvMhbKr
	 WqE/h0ZT3uJCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B141BCD98F2
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 19:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178215639368.7685.11779618078569487343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38883c351a41124b5c70bc13f6c7d930e5f7a79b1d2889ada56e511d118c5c96
Date: Mon, 22 Jun 2026 19:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782156393
