Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C37D23BCF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791759634; cv=none; b=OkwRzdWDbZt2CqdLkF7cxhoa+cMQZl9TF5x+xv5m7NIuwssHSXKbt0l3N/KbDC1yyVkK1Aspu8eaGeFdcUOq53F4V4dLnggLdP1ilw5q2t4P1ZjsZI0O9Hueif4mYMgSeem7+gz0jYOYMG1UtP1f9w5xf4tNd0gY/DHooAhNLIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791759634; c=relaxed/simple;
	bh=fGoufXyrcHdd3ySKzBneidH93m5oA2E9BvTAX83vFi8=;
	h=To:Subject:From:Message-Id:Date; b=FABJjcM+IYwp3r4o3tFF6Edvqc0UbP3ibKXJSIshcowaP5qfgTD35etqIhA4WFnon7fugkvmSVJgg8NTYaPCNpAx0a8nPWzmro9JXaODwBL33iol0ZGhts+9+6B7Wq78jvlkWJ9H6ntceEyt+dG2OPyPsiye+QNB0FB/+TkdMLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bHorfWB6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bHorfWB6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A4EC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791759633;
	bh=fGoufXyrcHdd3ySKzBneidH93m5oA2E9BvTAX83vFi8=;
	h=To:Subject:From:Date:From;
	b=bHorfWB6wlrCOGZxWX7QvKv1HphmeECOyXCwBuqgdt0ILGZJFWDdu1fFbZpwk7Z2p
	 dNObbQAC+qOB23P7gFBGnZt8zJ8Q50HirjjGZzQcbrdJbt5W923AXwR0mIGO5CFy/I
	 8xahbV93aYq4aABzvxegywTht+vKnYTBljaHaMsdSCcmOx0N5VuUwdjNVO8dI1uybJ
	 hvexqDgx4kMrJRNfp+3yszHMQD+2TNoHSFM10tPMzhK2zl6tEOckIOmQrz+I4MfNkS
	 jGZqz9d+roONJRck/TyL5yC8PT7quowhguaWVzUgn1PdIzt+YBXkW/OX+Pr+PYhZFH
	 1u09QwR8/8Sag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD2FCA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179175963368.26189.13324995439636625736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0c133072ea5390521acf9f1ce91ef2aaa797d6fafafe49b0e46f67ab7f7a339
Date: Sun, 11 Oct 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791759633
