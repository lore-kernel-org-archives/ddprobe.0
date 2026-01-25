Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1908E3EBF18
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769346234; cv=none; b=HMXTMBL7GdzHpV28eBbl1AnAiyw9WUOcnoEO7P3+INAzU9U/ybLLRMqX6bw0N28i6SezMj7D6PknV246ENvFUHvsXNWjF3v+qgtTfqaiZGJQvmSMYcLDkErMaGa6DE1iJEpW5S6lTR4ReLKnTTM7QbSWsuRopIYuydw9buYQ87Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769346234; c=relaxed/simple;
	bh=T9QSK4JQhQ2xeo5AdUdiwyXDUB8QWUauMxtBOenMLx0=;
	h=To:Subject:From:Message-Id:Date; b=ZECOQ7l4ckio3zBWOQZY4ZuLm1gSqnqmeh43qmE8zx8mqGzcvSDR9M/EL4rDcOOjqZoqa3fhvZQ3ALRmRHWS3YuBBSKJcTA9IEoqiW4hXMibWOsmwke7tgTM16yyZAL1IWEeGe12Z2L9ifu5m39sfutqOWmAFoRw9VqcHegeGLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvoSedQI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvoSedQI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75BBC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769346233;
	bh=T9QSK4JQhQ2xeo5AdUdiwyXDUB8QWUauMxtBOenMLx0=;
	h=To:Subject:From:Date:From;
	b=RvoSedQID2kHeqp/wEfsNXUGgtsFFf6bS+JZqCie69mcx0TrFxGE/t0on+Kvbc7dG
	 PLuq0MZOUNiyzo7v8wQfE4zWP7+qvAqS+thsoahbQUmNx1HNcbnMysM2uK2+lWVAHt
	 NXxB8CWSugOjPOdiKKqY72Tj5tSjFsecqZ+I0mZE30OK3C1l4maCMejIZiMWmofakZ
	 YdwhlH7AA6V5EoaeLoSVGj+Fjt70+MVfqL8E0Hy4JrrHwjcZn25tbK7p2KGl+IwQAz
	 P/dDWMvaC3VYJ8idJdrZ99FulcjZmoo/+rfZJd0bKf2XaNjQI9GOC1aRnfI/3Uoh6k
	 MHota5x5N4tWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9314BE63C90
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176934623359.905.5561091195952519182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d230ccbb9d7307d1870c96376c8531444204a424b55798aebcec7413c9201450
Date: Sun, 25 Jan 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769346233
