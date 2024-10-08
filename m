Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BA820B1EA
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728409554; cv=none; b=WiZfBqWXlm9+1fqFcEcpr8+4r2bvSdu3PoICXnXzRuIjJpHdHRsZ/Ijqjx/mMefz84Kk93KU2t5JgQBh+xRw+a3qsQ10d4ymYlELr7WFuKVvOOOeLd+xQTkpy16lvmzvcBkk8g7SuDKrWcR0/tVnP8GJETRs200ohLlJapGw7ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728409554; c=relaxed/simple;
	bh=Vd4iXgEtn+1sAMX3ZkxDRl8PtujCJWVI0SoEiOF9xZE=;
	h=To:Subject:From:Message-Id:Date; b=XYWlawB8kvZzxQzPKXYz+umTo5in26aAmR6UC6nAPTzQn4BqnXmm9zJnV+6WrRw2KLpa0mEBmYNctH0hKSaMjTh+t9ZtFAzD4EdJ62MLGEP408qnLgRdQ+Ar719nTI9JnsDzQFenh+33rhLzo0L37CNyqnowCKBfXd5hcURrg0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mIj82PQo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mIj82PQo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B84B6C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728409553;
	bh=Vd4iXgEtn+1sAMX3ZkxDRl8PtujCJWVI0SoEiOF9xZE=;
	h=To:Subject:From:Date:From;
	b=mIj82PQoSCyznllXymc3DSjpyOzFmXIRlyCQA12VpCyCKYj2WzvSALXY+yiSAD7kh
	 R15QwpCcQuEZDJMfWLnZRiSZ/U+Pfd7g0RyeuTqOs7Ix+W+EBldf2qVh7iMUkmwJ3W
	 9cfu4eqVBlDaeiaezaFfurXhG0gpK/oHoA6aFHBaR4eAzUsfz/F5kVarL4G3Xw3H3t
	 iQXIY+iAj7VOh3+rC9ScmrK+nzKSvGDqOrcAAAZNLNMUAuyj9wY6TQgKIO/fgRmK5+
	 m8EVTGpR5r/TKnST3Kg8PY7B0PZh6VcMTAcjVctsxD+RJ0loCZ7QPLPp3T/+vD0BcT
	 9Aw15rtJEhr1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C3CCEFC39
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172840955366.16191.11448387864997280352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fbcf2834743ec0847286bfc268cc7ad8bb0dc3a96c61dfb66d727013a530153
Date: Tue, 08 Oct 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728409553
