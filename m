Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7EF2253EC
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 15:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780328674; cv=none; b=avHpoHNlBcl3OCMsM0jD8GnddCJOMu8BITuueydThePahaMy5isLXVwmZDisfSPkD4/ptgpIkm51nLu2GJSN/nzBQAbGR6OYJqACB7xaj62SFEzVMF8/nlZBlC2Z33m3ICGTv4U2mKrG1+Pc8uqjZeGj/kLq11PCKTifTIFEUCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780328674; c=relaxed/simple;
	bh=tUVgUPaPXKLGRobuVBmZi252HsrANNCZRfUF71JL2I4=;
	h=To:Subject:From:Message-Id:Date; b=hSD7DkxR8/AIHD7JF1J38d43walWF0uYih98DCxYstdlfzjrgQijYPCNBZeLJFIl1MDr0PZ0meI0LWCX3jlSZqOz6zXY5+xjWkFnt9uHgcAU3jPbRtSezuefJgSm1Q2QzEg81TWavNB/LUhjmSk/AdUDOl+tDWhtxTGioY1dBCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lbJCzf4j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lbJCzf4j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF69C2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 15:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780328673;
	bh=tUVgUPaPXKLGRobuVBmZi252HsrANNCZRfUF71JL2I4=;
	h=To:Subject:From:Date:From;
	b=lbJCzf4jMe9kIUC+cayknyjqZbnZZtRQSaS7V1AEvWHbj9FaDvwgfqwk76HGRnxYR
	 mV4pcVj27yADXmNfwfZMt4x3h8JsKOmH0bs+TmL++KoqdsNcunIcBoRmo+t1eowwh7
	 RHMztSWhAuRl14eHX3VjSA0UyZEOxYNl+LLSroVjG+v/vDJjY3YqEYfnl7uA1koZ+L
	 4eCSd7oge3KdhwtUAGXT+b0nozScdiykR9plU+wTxtI6Ooni8eAAlP0lyO1le2cm0w
	 WF3xy/kxxX4/+JeAlXbp2JClSvZnq5Q54ZT8eztwEFCEJtY55J8AxjsX67teZ3pnmp
	 txFVgCGVRaz+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8A8FCD6E64
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 15:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178032867381.10849.1233362577206686648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e25b33b076b05a70ec283412ed8db6f61411e3175832c7897cf1c2fd8e4b1d7
Date: Mon, 01 Jun 2026 15:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780328673
