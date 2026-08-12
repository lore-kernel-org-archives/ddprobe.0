Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA553FE650
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786570234; cv=none; b=knoSJS3Ao+zMNvN3F/7fob4uX52891SujuEaVXU4DCrJTsdBSJWUZaxZhgo8Zi4SFLs91mrFIcOGBs+MJz5YlBCpve7mCXr1EWCHLbsIsuo97q/UkrN7iSgrzdGvy9c6IT7/P35r/41EAH5YnPtO0PVFRrvkIvHyStnbeo1Knz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786570234; c=relaxed/simple;
	bh=T3ZYfAaeRfxDOopnx4LlpjOnhwuth/K+1gSmKRNF65c=;
	h=To:Subject:From:Message-Id:Date; b=JCUWdviLdocFsq9zup+SKt0C+mPs2rMa+bXNyoIg3Eg5JjeLPWxMduKOF9jDGeSqrRftIz5xRA2hpwP7fDFBrK+nx7Midla2cKJ85u+KjEdmovaHgxYzX+yuWP+aIAtPqGlrOUvRYmP2pezClH30mX2yDW/oGpmNt7m/BaTuYkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gkW9rd08; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkW9rd08"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D277FC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786570233;
	bh=T3ZYfAaeRfxDOopnx4LlpjOnhwuth/K+1gSmKRNF65c=;
	h=To:Subject:From:Date:From;
	b=gkW9rd089rD5KkSK7LMyhI2HGeUcIUc+bFqdvax5cLu/bJbbc0iUztp2Qnm6qRRV1
	 +sYO7+pYh6DTiS6dWEMvkwe31l1/9FHPsgx+zWLvJO3RsAmNYl5NIpG7Zy5zAhxWtG
	 XQdy4JppIDp8LiwLOmNqf9O1KMu14fXVEdHGVfK2fPZa+8cKUyz7F3uDystHxc32TS
	 +sHET+DSh2NUkJqjx9j4a7CZSxaeN+TwUadqC56WvwwCSVYLKK+vV1gAfnCm+4EntO
	 ybp+e2ZYtdlChvrEVEenEBMMe3HvJU5oc1UxXYzInfYFSmUP1sjYMj6L13Y5V8jrl1
	 V/QzbWr4bXjxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCBEC5CFDB
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178657023370.9994.14962336503491469727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9f7c9834ae2e5feab76767e5165a06b476f63e633d2f3b18a2a53ec84578a36
Date: Wed, 12 Aug 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786570233
