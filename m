Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 445F242A86
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 05:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715577143; cv=none; b=GwoINTJjdxDNMy9loKk9SUnMRQtj4AeITuhcWIFkTagWfhe1Y1Zua5zmP+KOmrFSOEuCgwVXzrXF66RBWfMv3wh9BF0pbD7+MGAS4ZMBm6CAYZDiGsFTaesJEAK2DVaSXUM3+YS1JjgSNWPiPnl9CmZVHHdOn3Y/U5pw7QM20JU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715577143; c=relaxed/simple;
	bh=qDpTY2094URoQqQHvBxdigNtS6XBCITmYmOkAuLMfHo=;
	h=To:Subject:From:Message-Id:Date; b=cgS91TCPXlHp/rH87lvcsJd9GMNCPwJt2UIcM+yUfjJuAot8HUXJNR3VN+5xVpXO3TLObW1Qz1v3yy5UixrO4J1qszlmMX8id+TeIRZR1bErl1Kl4YSyYk9mE6QTaqEU98T7fsz90PpLziiFx/RC3mwcXXJMjHC9oUiz8P99BiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DtI2rrfy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DtI2rrfy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F80C113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 05:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715577142;
	bh=qDpTY2094URoQqQHvBxdigNtS6XBCITmYmOkAuLMfHo=;
	h=To:Subject:From:Date:From;
	b=DtI2rrfyC6i6HJC+wggWETyviCRXsFzl7I9EmiPdF9JNHnucON+T0RR82XwwW7uDG
	 dMJjOXvzODTCBq4prx0WTQG+HAXrUaqPf+ptzKTiX90WUM6PGuLIZDEKF1Qi0NZVlc
	 pthBfvJYVj++a8ST79wKCsDfuMbfa8aB7jjXjj833zyh8vt7+ppk5HRedE4Vdg4ync
	 d6f39KXitP6Oo+aWD9Iq+jK/Lfl1iWFxtge3Z+T6TcJyNy+S8Bmb6OdNfCPr/9u/VT
	 3CEGtoyen/IPZ9tAtvftZepwk0/n9LelUwe6xoSUcShFrv2XDCwPXg/TQtyhNWC6iZ
	 rP7a9RnfRuzyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4118C25B5F
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 05:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171557714279.16528.7327765922942649734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b2144a6d1beb9642a6929f6c260e6a47d4e077be19556b88381210c866875d4
Date: Mon, 13 May 2024 05:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715577142
