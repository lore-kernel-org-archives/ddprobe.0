Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1105F311C15
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774033494; cv=none; b=Bp3ZeGGSW0FHX1GurpnAVWteO+I21LYTL/E5lGAuXEmxNexZ5IkErlvkXIWdI9r5T894aKooPHtBLjoxEWyQ87hiH2URa5GCFSZFZt/bCKxA0n9yH0KZWTub0Pd6um6s6q7jFOk3ox+9TJJDjnod7EhdF0bUNCgPHtR/f2joOzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774033494; c=relaxed/simple;
	bh=zXAC/Vm0cDR0ZQwIXih6sNp0uNUwEU2+YCWivLsrMTc=;
	h=To:Subject:From:Message-Id:Date; b=DPSaYxwVxRGEOD7hjfAqPEf9twRvXSZj3bSe0ttDs9GtT7+DP+rqvv4XldbNZlW8uHzCG/FV8v4gzWy47MzOjiwnFV0UoTICVoflAbyvR9/vCisFanHlw/aJsneMTBvip0g/bR4HmmDxC3PO5tJAuPiNkfNyGevYsSER7cxoMic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Stb5C4CE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Stb5C4CE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F65C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774033493;
	bh=zXAC/Vm0cDR0ZQwIXih6sNp0uNUwEU2+YCWivLsrMTc=;
	h=To:Subject:From:Date:From;
	b=Stb5C4CELHHx03zvfLDqPMI4Ka0H2/t+FRaX65/WfZQB0ihGNhup6448JLCQbe4DY
	 jrxvTxdK88B1VGo5gS3Zmb9FsZVqSo4NFgJYywrCZ2aJHP9hhKWMaaKJXokZhXA4QU
	 lTO5q/f2lHtAjODiCaJpeWeCcPzHDmMZrpfhcgWdL7eP635DwoOumQd1Lp7xxtqU0y
	 CxzTFLheaFeBiQuMbFpA1JwWYe8dSQrfM81DsdtbpqFg5pJJw7IgJ3vUGtz+9XMByp
	 tYh5fNsXhbOPNMQsYSrJILmQI/jyJfaCg68hgYa/neiI8NeO2mKQNsC4EhEQXrTMvJ
	 ou61H/M7ONGCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947C41099B35
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177403349357.9914.8424950505126235413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d93cf2302dbdaaede3ce2b9813dd08ed239ffba76d5393c6dd5ec4f794686b7
Date: Fri, 20 Mar 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774033493
