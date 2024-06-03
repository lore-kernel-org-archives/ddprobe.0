Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6FD12F37C
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 14:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717425323; cv=none; b=NKFKT63/s1pSQz3w3kZeEQQE9Yxb/EGYoKzqMSa9ZyNLb3Dg4yEoXnsiox4R07z88MaUDCNfGl+RQIt3vVKPrHea1a0v5pd3zRt34x8VyRQHAj3xb2wtvzm+SDLOIPNyYRZ7YGJsPq1OpbBqKffxECbmUDsiZ7jT8YVmBWk2+Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717425323; c=relaxed/simple;
	bh=vB3ZMo0PgbHUBWgphiD8awgMx/lPnEoibbknCE6b+Sw=;
	h=To:Subject:From:Message-Id:Date; b=Wv4LiAczp/Y2T6ieQh1WRnA5eXYQsZ2Vv9byHFIobz/VFRmDyzoG4ZgbLbCYFx4xLA53JzXL6LL5DjFRt31dL00XzY2UjAo/4bhlK+PO0BIQ9qtY7Mpe1akfvvTDX3Qal/V+ibUHlALup6oj6gGvocpFqyEw2pGlYOGtp5kT6vA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/5lHTF0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/5lHTF0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A7DC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 14:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717425322;
	bh=vB3ZMo0PgbHUBWgphiD8awgMx/lPnEoibbknCE6b+Sw=;
	h=To:Subject:From:Date:From;
	b=T/5lHTF0ZbAef5GW71GBqWHtKvSn5ki4eKfIxMnL5DlUMCIc3gf+9TbxeP+JaX8X/
	 2ESGNmG7dvK/LlRaqexJaIcjqafL9kZkJuF2ej2DLv4G9FYlL04dyVzXmX1uv5In6G
	 u5k7YPK4YKRodgAwMCbdVTqMJTOZLRyLIlEgzVxAwjlo1CofuIroFG2FsWuqMWl6W1
	 e2CbFQoT+cqKZSOlzm+/s/gDCeXj6V7SGBGm0KE6p3m2VFBAoNPWN8jihhsyTIKk6G
	 z5+y2R4EIt82UYlyxJbICuOuXqVtKXM87uT4m7TGZwYQQTgvd6hMcSRa2+micqmOEh
	 qoFjkyKAj/Llw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF7B8C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 14:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171742532277.2841.3389269922400779152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c70c341ab72297a50ccdb76657542f7e46d301f1ab7a150f761ebd447ea29ce3
Date: Mon, 03 Jun 2024 14:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717425322
