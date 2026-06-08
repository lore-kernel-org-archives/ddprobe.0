Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322391E5B63
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 11:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780916674; cv=none; b=dNdpr/DlkqUa2NQBXl+T3y+M68blLtOZ6UgmG3yV3SgpO211qNAYFVqGY+8vkn288YtEYlGOIZEFKN+1XnmAw1PD8Hru+jzVLAWqOQ6Yi3c83REaR7PIAa3zezsAH8dY4di19i8Y6ZmyqdceD3wiVFCnyEvTaxS39BCJXey1nKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780916674; c=relaxed/simple;
	bh=ZQLwd0tGoR4GBnbaR5m6GntX+BhWBT0tB17jZT13pmE=;
	h=To:Subject:From:Message-Id:Date; b=bHbR0hlzOaBKlrjBBUnqklMJAJyv6XH1HGmJWIOUspihsRWKoysUixNOVG+f9Tui0Kf7mpgo1aWJylr/hfDkNYsNMT4JSkij7c7LcrJEQmCchmLhT6+3CID22uQofX94LoEWCtBLpBpLxR7QJInQwoObSauTSK9EOey+dQHUDlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nrVxfxpf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nrVxfxpf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C216EC2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 11:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780916673;
	bh=ZQLwd0tGoR4GBnbaR5m6GntX+BhWBT0tB17jZT13pmE=;
	h=To:Subject:From:Date:From;
	b=nrVxfxpfoR09NecnTuJHZLy1cngRWdoGLm3gi/9VjVDa5CkmMgga1AItYLhZCArjg
	 oBUGgE8dys2MY2I9gIu2RUvtrm1WI2WIH3VrX16lGDzN01MU3WRsbtdzMI8J/oDFUs
	 YZrl7bYS7RDrVdyTahYSpuXk4XftfDbojliWom8jpmXgrslBcEC3hOAkRUjuZiJIsU
	 L9v1Gop0JKfNQHvP/jqj5MeAJkQjKb1QHspcBJRGAbGmrIkiMoQQ0mEmM+9w5Z2ISC
	 oCEejox/IBKd/+toLxeKGW4jijlz4lbMssEzZKRB9j9Q2oh/uJwCnHoTqb53AvWelf
	 d1Y07RUvN+1gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FBDCD8C9D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 11:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178091667368.31272.4934980363836174190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1407c2f67b0bc4317b6d365821c8090f716643fcb1149abf86d2ca96722945d
Date: Mon, 08 Jun 2026 11:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780916673
