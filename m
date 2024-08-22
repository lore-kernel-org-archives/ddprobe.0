Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEAA12B64
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724291754; cv=none; b=uQwyM6pGJIe7AmXECpdvKnacXhzCpfYSGTFbjbEP4y71S4kkiJ6kWU4NpW2b+dvJ150GiGExHaak7zww8CTYKYq8VxUNVeDrN5+EQnFgV1K4D3rjyy7FjHW8tF3n//W8W+ta7dMxNvEUOO3d3jZfBBxHmTSXf3UHiSjsc48XDLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724291754; c=relaxed/simple;
	bh=qFaldNjwzLzq9UH033HzbdHbAmYqko3qXGZxYOyRVZo=;
	h=To:Subject:From:Message-Id:Date; b=ovW842ad4hTNnqGRymC083tMR7PuIZX4OzlIhUi79xJLX/b7AcAA4Ilh+R2uKawL6n+6V2ERd/fx0Q9isLXmskdoZAWLqE13/vTo5pMNNYm4UCtGbxk626SPG/7+YP+MGhabVkYK4U+tmXUOHCwJtCItOqfYq++GNIq0vWIrbJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isic6NQG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isic6NQG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74F0C32781
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724291753;
	bh=qFaldNjwzLzq9UH033HzbdHbAmYqko3qXGZxYOyRVZo=;
	h=To:Subject:From:Date:From;
	b=isic6NQGDDVBXKrK8ZKV93WsWOXhXr0JvTXtRrd/SaK1FGIvaoqaUd6idL+99lKlF
	 eKlNP0Wf5LNIR+e42KibIwJdgHryDRkJMIbOM0Wm53Fm+Tgfu7wltIJhaLVLiNrv7f
	 5FtBolhnrK30kkKtvKXWbnExsVqdBtMznfMSaTNsVhVKgAIDvvDyrRKJE30cEXe9Rw
	 LNwVm0GdizcOUh6ss7urvluYxgnFUOunWx4hTooSmileF2+P6tkG2xexT7uX11h+nU
	 1M+9jauF46oIWwhf6wdGfRidezQLIku2Ku3SgUFNJhGdwsouQp7LNNtCeZTtf6EaHo
	 tm4CpTm7F2Hhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99696C52D7C
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172429175362.24603.4308712100343750713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27da5ceee5d5eda936f99e29ac0591976fa738864248701a924216d95932a240
Date: Thu, 22 Aug 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724291753
