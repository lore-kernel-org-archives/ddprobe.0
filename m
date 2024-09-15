Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38744184E
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726397754; cv=none; b=rZ5+654BhTNK49NE7gpa9KPQx/6ktsFHuWR0uO85KsRksFwW3qmnu/+E8TL1suGkYUXOXrpbrpm9Pcii1Dm9VXOoNCWsACSpPAqq2tuf1GlGMaz26E/+MXh4Yyis03Ml8vXmlhAiZCblg8eQS5T4ko/vMDC2XoRVYcp1OQvMXsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726397754; c=relaxed/simple;
	bh=eGXrd+DNmoczJF0gVUfg6cpOt/svD1kicYRBrzvaTmk=;
	h=To:Subject:From:Message-Id:Date; b=IWQfvXqHZxJQ4vioa/b+FUDRPAo+2gb9Ar0C8eDPeum+ILHVlUT+4gEUtOGue6I61FxfYBmScQFo8DwrEO8gTe55ZYr7rQkF/FNVm6JZv/tiir/WKbf/XgacQaF6rMw/j12sp3Z3YfMhPaXV65mbA+EhoTgoENC+FziI8TAd3rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdfbF9af; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdfbF9af"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B35C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726397753;
	bh=eGXrd+DNmoczJF0gVUfg6cpOt/svD1kicYRBrzvaTmk=;
	h=To:Subject:From:Date:From;
	b=pdfbF9afn+bLO8YDBsM43cqJvMcKZzBc2lK2qCTGin0u8TmRfML+GhZKREgf32rrp
	 jdZrFXezGbjuEvERQ3EWqR+sYYUcY/273OmLv1n+wT/4RfYjmefTytztsuRaegQuG7
	 vsYiXMWdb/4scolwVFlHJmu27dRarMUwvj2D3MEZ50UBZNbugAcpCpzrM/BMrKW9mL
	 bJNFg6/V4yjGBLM2IO3FV9ZMYNkbAbf6MQGFxdkoKdx7YBBhdLirgCykZW2iwc1dq9
	 ZGxCsVyXkwOve+duem0i8ARrKGUQG2DjX2BLTVav0sS5vov+KPhgW7xd8FF/FDQuuW
	 NCw6lTOdQIUdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925ECC35FE4
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172639775359.24570.17433758993870571788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6ebdfaffb30abe50c7d044e4dff3811b6127fd69f6e0e8958746ea7e3bec3ec
Date: Sun, 15 Sep 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726397753
