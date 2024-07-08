Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487902B9D4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 11:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720437383; cv=none; b=K9DzJAy0dcbNeAtwbxtDfMy9sTr1qEu4VYp8ojR1XJyxWVMv+i42G1ec18mlHkyU///L3qxgINd+9VyCl1kOKYMepfoLJFTBeQn8KpLTq583nba1KTTTnQgNLCLWxMbBuCI4pD0U68xlsMO4RWuU8YU6zdeR6SR/60pD5AgvZRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720437383; c=relaxed/simple;
	bh=47VI/7g0bfxYSS2FVrtPjyoR6UbFIsgWPeROMBWhDWo=;
	h=To:Subject:From:Message-Id:Date; b=Au62xXpbaD5HCtWfxIVpz6/XS7R+EbYhZSdXqdLJ0alkjfiEIDvJ3xz49AmhCzlOXFxojsMYb7JZ+REYUJtyH7YKd8NkrDslxmA7+BezacwPMj1w5vQuULXJ3LNtiazJEbhUmcj8y04dZizXY3O3cscyi99aGEntqgFrK6bMD5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJNkp39l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJNkp39l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB51C4AF0A
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 11:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720437382;
	bh=47VI/7g0bfxYSS2FVrtPjyoR6UbFIsgWPeROMBWhDWo=;
	h=To:Subject:From:Date:From;
	b=dJNkp39lsCv+c7ILzXGdeBawNHfw7js0dbcejicD95PBjtPyF9MJuOshBr5Hh/6nF
	 g3CsPUgok7bNcH+sNW1E3PCNQVPPjHeeCqhfwo7xPT7OgbykL6Zfs+QAAd7brIiUiu
	 AOuwI6nEmbQ9H5JVnKOr2KRQxVjvPYwhjme5zzbSRhxQXkKudIUvrnoYo+hgLFnkeE
	 2dYCsgiWSqY89AVDrN7Cd9zTiZxpilGgIpiF5gx9op/BVwcZPWKFe5pHsRF11Mjym4
	 ZdwsIOSXdOGq0QFdnRPOqJ/mKQKV3NuJRHVS8Cl6dqt66tmLiFMV2DtE9xK+FhG6uF
	 0B+axim1lFCfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0326C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 11:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172043738277.4588.16783062959475646573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a2c796f483cdbd5f2122035247924a3e26d4dd217d2537c32e4f8568049e64f
Date: Mon, 08 Jul 2024 11:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720437382
