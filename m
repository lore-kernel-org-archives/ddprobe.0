Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D41626C39E
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 22:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777588054; cv=none; b=YpxNaxd5Dq55Vhwwe5jpYvZKejPhjB7cguToowAWgDiU6ZuAupwh9x+0KHuE0FvmlklM6QVIoX3HJGXDlB9mn8ylST4et1D+nlObD3u9HkWRxt4c87ehbS8uAj2iBuxY3HEUqlZafyc+Aqk8GN3tcZULEpEPnAFloRDfs8bJycA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777588054; c=relaxed/simple;
	bh=kzc8MIs2FS1wSAMlvX7uvToDoj4zVWo9Zrym/3iGaqs=;
	h=To:Subject:From:Message-Id:Date; b=pfr1hTgw4M9UUashsk2agh9Apms55Q/cb7XEYZoAWj5KRAsl9dcAAULlHIWLe+5c2uuWCnDDBwPh7zo2R90CkwVnK9CA4Afjen6Mqr9yNfA5IjXATS6hrhUCixE4PH6YK3Bk4fY8PNf2Yd6ad7R4I7LpS5z8CZsKVJZQoRV0ItY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CRSEY6ux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CRSEY6ux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C29A5C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777588053;
	bh=kzc8MIs2FS1wSAMlvX7uvToDoj4zVWo9Zrym/3iGaqs=;
	h=To:Subject:From:Date:From;
	b=CRSEY6uxqRPLsbn5mwDj7Ky6ZtDqfSOUNE5kpH7yVUGmZJmX2tZc2jVcSpevCHVPh
	 HNUqX9o3NTxYLFaGTNpvyJqUn3X85F+iok50fu2pHUavl5hxdtoBWsYZUfr2BRQGz9
	 0jvvulNgt/pSlXR1SPvAWcxZC+cXWZ/8WWEeh7Fw1V9KPo78L10NrxoC5ehcB//EZa
	 5391x1zd6q4jqfPIAXaPbI0CotMN0neCZMbyahetzbw+vgwQ7d4cTG5CffiPASljDd
	 Lhr+Mkwdy4iVxXhPEy9jE61COcUzMFtOYMXhCW1QSxUAFDeyT94/URjectOqNP20sq
	 uEl9DRVYAV8mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09CCCD13D2
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 22:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177758805368.7896.18085591862830156205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2f32d7b907348581edbc812ad57f7cb0ab3b947b998304f092eba7eb0488624
Date: Thu, 30 Apr 2026 22:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777588053
