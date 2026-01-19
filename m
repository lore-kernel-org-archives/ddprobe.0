Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDF27322B63
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768840434; cv=none; b=ZG3JQ1w23PgnotUMpnN8Trlcp1Xz1sMF60V9/StULbShPg+mKLUTSg1viiI0g3LWUqQe8eOeh3hMq0fmBNGjgszn4oA1eaQF6taUCtb9lTFUG8/Lg9ETMMc9SsuQDnBUwYqvEJJH9zmxbxZ8N016h/O1LO892YotoQcMsTVMdUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768840434; c=relaxed/simple;
	bh=z/6P1IsgO1vmca9rwemv75YY/x50kWnzDrohFecIRaY=;
	h=To:Subject:From:Message-Id:Date; b=jumkinA6nYwnAjqFDohXHC2QietVmnGVJp2cmwIxc/vI4F0+yVD8vs5zejV0Aw1GXZBtDbaHQsM3PMzDEKwIafcxaZaFZBqGx3SHPaP1fIWwijXxoaBNqMJHzv3oa137YKwddV6jWpFqNTT7C2W8wssWbR6V37wcChPn8Svr7FM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gedw47gI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gedw47gI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6FFC116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768840433;
	bh=z/6P1IsgO1vmca9rwemv75YY/x50kWnzDrohFecIRaY=;
	h=To:Subject:From:Date:From;
	b=gedw47gIeTCs7C4+UzUruZjMO0feT46YbRW1ADDkdgDNUnqm29HfdhrX0rJ/3I/Rr
	 GYcnj0c6G80Uwrjm3tNvMrotawofwHyX6M9Ph34I2gqpcTjNAHKPJ0J/Xdjb6rwoas
	 yD9nY7Ys6X5Pid/GNgBfR96jbZQsYj/NCNAaKRdIYkghsg5vA9zIFgV7xbCrfOprrW
	 tXjEGPJml11pmv7u6ggJGQBBqLNB74tN4RwhQfWckk0LFE89ejx8G4HKZAk4JCaGDq
	 pXCSRDEkqISG2mNZlmHICwI8LO1+bsD443529jXV49EUTTZg84Sdrkp8s8iLKDwg2x
	 OYXcvvGSI2pbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9033AD29C40
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176884043358.2723.18095113186409143633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87493d51fb11cc3999ac3e5f8df1ff325ce732414190ee3d3d401c995b2a54b1
Date: Mon, 19 Jan 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768840433
