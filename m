Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9F31CEE9B
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732622154; cv=none; b=LYv8QEAptDd/D49rEI7+dYy7dJaftCIa3GGcQ3ZuTSIOTtKnP5hLWJk9lPGSKzXX6BBTSYr5AEZbi20yh4KagOCf2cqksNPvpRNceGN8ZVttcpO6qWcrstCM5wQR+xefYeq2Ziy1BdsHPSK0x3RaVrc2P1jhIIt4MM7baUUGc2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732622154; c=relaxed/simple;
	bh=im4N6Ka7Mx9svAJavUZgHcwCrDosw/GoNdEOAo0eeYw=;
	h=To:Subject:From:Message-Id:Date; b=GmLguSfNLuaxmhi3wwISs/Zscb4FEkUdAA5N33JHmPUNPQaFtVmPoWxlgDm/flSf9t4wZUfA5WLDeR5pCWrICJZeQsWhrLlAaBsonuXO88QUXmEGDgKCnH7/BZXRozoQp7EHceioL8ER7M8S5v+sJxmS0fbUoZ9ZHti2jpOIRJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=huiJsHhR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="huiJsHhR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A590AC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732622153;
	bh=im4N6Ka7Mx9svAJavUZgHcwCrDosw/GoNdEOAo0eeYw=;
	h=To:Subject:From:Date:From;
	b=huiJsHhR4KoRt3fKmNaZxOdzOpoIjFh/jAZkPdxfWS4qy3h5ZUpUnHMd/91Fc7Wyl
	 3GDXTWylWrH2GdSjvaCigsfVyjnfM4NDkKe8Vl/U5/qnwYsWI5nWchQ9tCFRIfBa3x
	 AVrvoJIDTZsiQ+2s4fGEQWqt1Rx9coZQ98/Qa2zTHyJtzz2etgREjGVys1RRwGy5R8
	 3ZINbobsSHgbDKoY536SdwaQZg2cD2Kfk6C+e4TanFdeC+OSoMPw7MeCxe3IX+oWOy
	 WGV21oGgXDqCVD1Ux0j+HRfE7GnhymQSJcNF3EaScYnatUdxHsU3nIoQLITyGvRzN6
	 oj3mUjSyPR+Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDBBD3B986
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173262215358.27415.9980721945008080634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3722a2a06ca49e22ea65cc35a8a882ec468cb85640a8a9fd15906e2db3ea388e
Date: Tue, 26 Nov 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732622153
