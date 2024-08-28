Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3513A15AACA
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724836554; cv=none; b=E2xaEJH9xtFAWiQHgbcQZ9wIPrv+MRCfZ9DpLA/7TzpgKTdR+VWnSWoP3luNSubs7r9y0oA1OwYI789bLNNgf5OPoWVuutmLW5ocQlvusWzpgcIpMutU0ACcPZI7rRnKadaXXtIKGXvLwO6FaxbAdQmu0/AtzkwW2lL8H3uJWCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724836554; c=relaxed/simple;
	bh=FxPqvUO/ztHJEMrJ8tqlukwklmQQLcx9tKRnokxBick=;
	h=To:Subject:From:Message-Id:Date; b=oTxTjw2QnRKjF3dHkar5NVGE11N8zCbAm0TAo/X4cyzIma/ksUAvnRRp7MjYAqhoTyHSkdbmZX9AFj8GHJTo78m7AvSJCeQnFOZVSOIaDegruVzRj7g6Lj7YlIQcO6oNvPNLodIpNZE9IPhg4NB/exfGAVSD6vE7SXj1blkoOCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DtRUulco; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DtRUulco"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A851CC8B415
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724836553;
	bh=FxPqvUO/ztHJEMrJ8tqlukwklmQQLcx9tKRnokxBick=;
	h=To:Subject:From:Date:From;
	b=DtRUulcoH9gDUp/f/cr7dBh7Naal9AjBNZ+sXLdRw7xn5KzlTDj5ThkligD0ZdJ0B
	 6KTL00E3C+sYd5rhLZjJAeJSd/2nKcg6rif+T1Wy27jEwr6gcnlCUozUQdIpYXyHx9
	 nQf8NFH3sLObkWZwc8/9W9M+O3q2BsTIbszBFDuEyD0r9DDEFmM7kv88Y/Il+XwPnn
	 IKEtudgdHapDUmO5TPiUi1EpyDRJaB8XCBLeitSLULAoGd5eJG5ZUYnFVCIxQg+ig9
	 WTlrzCgvl4wWNArxT4LBaJC73ZtUMQCP10ZBHB/Qk8zLqpirVubLppjurUeAkBRd6E
	 t5l/F5MXMaRJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F68C54757
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172483655362.24545.15597580550575872566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 347248e8006f505bc5649c8103b2aa21c8ad42857a2d4855c667039d409c1026
Date: Wed, 28 Aug 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724836553
