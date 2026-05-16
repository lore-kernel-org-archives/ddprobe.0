Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB262C859
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 09:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778925034; cv=none; b=mUfPx862RQ4mUFr7nIj/Uptnw/u6uLePp8qwP2oB3MN/wpTMg0f+H8kknqgJBeUC3lW+AFxjyb9psENIfSZNiV7C9WIHAw64WOGnpHa8vwmVURpuJ5j+Vh+QSfBVv8q/xYBcZTVyk1gakF5W2bsBecjjKqpCE1QeSfkZoe7+Mo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778925034; c=relaxed/simple;
	bh=AekSR8xETO3tZdHQm7y1D/wy1QNI/6cNcD4W3jwNNQM=;
	h=To:Subject:From:Message-Id:Date; b=O+bZwW2WAbtfLeTNbOxih+oQ1WlmQ5+msMU3KojhUsTVSFjdBO/7b5bhHKtlrc4LLQVJQpbCpdlG2PAYL1L2RIIuApjT14C063Kospe61UdWSZmAXrIhmrE2j4phPAuCck6hE8WwlWvZVnvOVUDxVsJgpYkQci3IcwpYIQ1NHY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=De3xIqm1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="De3xIqm1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC2A2C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778925033;
	bh=AekSR8xETO3tZdHQm7y1D/wy1QNI/6cNcD4W3jwNNQM=;
	h=To:Subject:From:Date:From;
	b=De3xIqm1+DTHk5pRZKlxqZefLm5wdLFgMYBlQxxOPm2HEf0izIfOxFHcttHDGswge
	 SgVQ2Dnh6AnepklozHS49/BAm8qsFF0RsoeMsfIi1h33XbTD8pj7kmfhztgtF5q/5B
	 9pAUxjiA5UUp1rvKwysVue4cRtJXW140Fr6Hb/71DYAAM89B3FU3q23oymcfeSSdUK
	 W3ynSARpr09cvyyzhb21uhe4MvVmOgmHmnt+kIzyP4DVR5zi9f72L+gaI19jzyv39C
	 YJ7utYpY6srolEVDuQqjBF8YgjOkcmj1OIEQY7C9ROO/h11goA77ZjKlA4T5m0+KR2
	 r5lBPdmXkbSCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B400BCD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177892503371.13823.16514835053066348677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04dcb4d23c054b6df0afa36cf54c7ddadbd9f2b42d1780a007488edde89b4f64
Date: Sat, 16 May 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778925033
