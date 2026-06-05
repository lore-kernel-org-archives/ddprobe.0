Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84A2B149C6F
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 16:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780676674; cv=none; b=qCNVFP+AvfIdGYx8WlAIc208dfMSLjVcbG8xc7pM9x3eXEs2MDqrkek+Vo3fM5+KceWCSNKlumN5FS+wWCh2J5CcfUURTU9zGoVqVnZlVxuEhnF3fwDsXQWN8hrE4nM1Jwzr25WS7SWdfXFwly6sd524q6SXDtuuRbucUhg25Mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780676674; c=relaxed/simple;
	bh=47jUIEGffwuC5fdRDhlvpzNXyJ6G6HJN2sR5a4m0rWk=;
	h=To:Subject:From:Message-Id:Date; b=ipQ8GMYo+ksKZSzXyaNrRbednxpXPnVcm8FmqwOnSk470tcYAPH04Nllo8SIPXDglwGMzhXJKuquBiTnzJO+6hBOFcWneeriwkKobOQsLEsYAgzexGfI4RJxWjJokiw6wsAtYhh6Yg9yhYpqg21KwSflRpUbPhE46ZBSSWOuFT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVROKcxp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVROKcxp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CF5C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 16:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780676673;
	bh=47jUIEGffwuC5fdRDhlvpzNXyJ6G6HJN2sR5a4m0rWk=;
	h=To:Subject:From:Date:From;
	b=nVROKcxp5dRdef4tFraQwWPJNBBoXi5a8PKUHUZg5s/1lgHaQMlfj8Pdgxr5YvaPA
	 bGbX9Q/vPhCHxtwDuRCDTkSwYiYwcSp8D9wT+gn1eOVIb4xo675UoB+usnbIsKkcFA
	 OeIdRi9dkKOH5v0WuYZ/63cWwRKwHTMISJLpi0ytd168A1lHnZuMpFKiQKcChon1T1
	 dnxoxyNQJxOsOd/51JEX4Q94jGRjAFhd4I6c3AaQEbxDLgdkejdxZxkupuznzlFlwq
	 d5TYcMwfFRiXemCT5YVo3Ylu937vz90+RidPJqt9IQnPwEgE5kfOHKEflnidIAT68G
	 NxJJwd/3RqgbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7DF6CD6E7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 16:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178067667374.23936.9067777443920088005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 529ea750f2be5e1c7e1532b35f38b6c4b5310a0aa4d06d2aa6cd0afed825d377
Date: Fri, 05 Jun 2026 16:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780676673
