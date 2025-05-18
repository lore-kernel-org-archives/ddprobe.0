Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB7538FA3
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747589394; cv=none; b=KBZH7cClQkuWmqWA/wzoTrC0eUNI7OBjSEVesNAByhxY+0W2CQs/5+XaHxHC1OzXqnE3biHkL3EO1apJ1DdQkfeKWhHtfQ7VBR0p+JYLf9157U/VrPc76lPU6bnsKbLHwLEojH3ejJpgldNwlQ1U53TQe/HWIF/GzactEOb/vJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747589394; c=relaxed/simple;
	bh=v2omnkeanuxDPOJquL4FLhLC8206RklU9M7cfR0nDnk=;
	h=To:Subject:From:Message-Id:Date; b=XCjDXlkCQcfFL7xL631l75KoAxPhrEtdNFvE3ipY7b2Kgl/rPqNBQZHvtuweGIaovqAuGwsngohsNamMm2RbQE49lZCyIKHQ5qNXrUGORP0AIyLvYgFX5oSmJuw7BDkuROLbODc1r9zytK7CTEWyyx7upQa5KAwVsn5axu37Hr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=leLAHGzZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="leLAHGzZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF12C4CEE9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747589393;
	bh=v2omnkeanuxDPOJquL4FLhLC8206RklU9M7cfR0nDnk=;
	h=To:Subject:From:Date:From;
	b=leLAHGzZ23yKA3mfUfoNIrGluNRj/jPUQsp2hTgJHkBzGajnNsKvRhX3eqtgTSZzZ
	 QhM75HstFr4UTP2e/kPKts2pVlh4OWTaimeL7I97Zx0hh9gCP51H5yBz8Ed6R0XY+p
	 EnUFvvbjLHNNaF4SN7ycSiWvCTa/rpQxg5vsirlPlU7793T9ZsVjrQAtda7dXrDk9L
	 gDehRKzNcLO4nxkjlD5u1KhWdkNN8emuaSSrXs9oAyKfUx29qyj9MVKbeNrXHvtSkp
	 0/lR75rR4G9GEl8U1czru4LXS6oNG2u5vMaaQ9sHcUy33zmWDIs8NxZP414XDFDfk+
	 apS/At0PeYn7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C9BC3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174758939357.13545.3459385813243678222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6c4cebb51184fc355e359d8b5f7d7293411437e3e208db3abe3861abf5c116e
Date: Sun, 18 May 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747589393
