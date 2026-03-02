Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4A8311C36
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 18:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772475294; cv=none; b=FzjPtEJFUa+a+DCALqWx6SEXkZrB9evzUFD63+fgMOMIPDf6t6hfJd7K6wRXnn5kzqwNB3hUp5k+XqlnvDP9NxHnP2Zqbh2zOyMF2UHhq7cnW/znYHMwZp1JpYv0GkIq+yGyRByzLR358MrLfeNjVo+LACrR2KbFn9F1Un9VnQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772475294; c=relaxed/simple;
	bh=pJaJdxJCKrhx1RKhu0S+Ob6tHFi//wONJzQaoZSbflk=;
	h=To:Subject:From:Message-Id:Date; b=CP/lCoxBVkrH128fju2rJHtjypy5mxF2pIjFUg3r+couE0LuwekoCyG5vQxi4f9jdSkbryTfcmMBrggb2zBQLi5nCg6Fmt8hGUmomYc+sjIBVM+AJppQ2uPwqhOvN5pDXXltwQq/J6QRUUT6Pj4JG5uZI1jmV0/aVW/8YZJtICw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u9VDXr8m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9VDXr8m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC3A2C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772475294;
	bh=pJaJdxJCKrhx1RKhu0S+Ob6tHFi//wONJzQaoZSbflk=;
	h=To:Subject:From:Date:From;
	b=u9VDXr8mqW/FLQMSEdUzGsAX1OYQ2Tdo73mQsd4Hf5j7Q68xwYcEMLZPqxlg7xIb5
	 waaGfPLOqmIrdXjlwFzlcaRFwp931NnO5b/n+IktR/1xQLLqcr9VZ3CM+ngbrckQqD
	 ivXiS+mpxdbHR/DkI7WgUelpYL2MjbBGplsA80VNioHsgHo2M0YzJip+PEEqn1BgED
	 TZZ2l1khefLQ6sY2Z+kYbpY+HY06By06gNl67qBZugCSmc5HU7jWjLTBFdfmdXJ4QX
	 7qVqOxjlrbvdZIVGiPEueKMfI/GPTkrMx5C1sLmQlCnEPGPhdnYG96OlfHTckrJenx
	 PCezX4eO3fyhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B092CEB362B
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177247529368.1649.306040347381445792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee1b7e9f7dd8c1f0343a346fcf1871847b5aa322f93f91b96aff5561277d17fd
Date: Mon, 02 Mar 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772475293
