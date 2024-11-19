Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3876013E03E
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732051554; cv=none; b=tOLDcInd0VHJiyJUZ4XTyAiLWbDaPAIk7Tyqu7/GHfWS5OEuN16d1T/LP5pvPAMMU6K/DTRNNAXFqgo4DCLdsJhdD0ToU4ijeL8kjO/GwmdFDcgxKy54JXuTfxBrOb0L5FAobGWqdWHYt+cFeCPXy84svVMfXwL/FTxANV+rTgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732051554; c=relaxed/simple;
	bh=VMXy7xHQ6NBsbfr57TWvb3KNAYnEf2TlNaDQVm+ZHSg=;
	h=To:Subject:From:Message-Id:Date; b=KPVv3SSr6HVjAPsTV6RcZwhGtxLdGaOS9hX7qS6uPnvGvuYvwt8EuDJsIScbdTSk4KZh2Aa63TU6BRmGJSNrPYDLGLpAdOqZQDRpJa/PYSftYmSotaL/41unTPsrGd3wCSeTlzMUtVWflJLLAwR20cZNCh1vHtXQHa83ushpsVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hteIhk0F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hteIhk0F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64F8C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732051553;
	bh=VMXy7xHQ6NBsbfr57TWvb3KNAYnEf2TlNaDQVm+ZHSg=;
	h=To:Subject:From:Date:From;
	b=hteIhk0FyU+RnfkKXdF2qGcxZhuLet4GxLMhGR10nWLm4dUSJudrIAtwmGhuOUE+4
	 FkEqi0/DkdAQrGRUXKHMxfd/1x1bf45Qcd/LuVVtm4Uc1cfPTarBTvYpkK2cqcf8xi
	 A9F+0JaroDBGKf7lZDIni9lVuQEVfetWZQRoCwecCZ5m6qrJ5YDew2NsyTOGiTsusO
	 OjqEsEgiB5zHLWBFvZPzBqxbiQYzNuLbkO3OGPnDW/0kSzO5O7ugV9i93Iue89HB9u
	 2AqsWah6HnK4wBTxHXu4f+NFh0vFPnannJrTk8XodfD7xDToKXj9nKzaQz1d3B2+Ih
	 DpsUdD5cP1zGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FCCD6C29B
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173205155359.22170.12390138334408278969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5d9bdf16143380f6507fd4ee402d40136a97a4fa4738bdd497a6f3035f67fff
Date: Tue, 19 Nov 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732051553
