Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC9B4DA559
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 15:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784647115; cv=none; b=TPUbfODlc6mrav4pM1q1mv4qfRNY5qwDdNMjZRTRcDJBfGva3GDuFEAu+lHxU3IRcF3ZvXUgJ4Re24u8mr9dWSIu+nnWJWmR+UMt7IH1zvVkjLefL1DiO7a9eh4ihXw/RYqK9jOUPhBu6vpnEOH6MFO3BLUDGTELsE0QxCibAFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784647115; c=relaxed/simple;
	bh=KMfLeGBcTvd6KjuRgCnZ/b0xe3q5RQ32xmJNpn/pjNM=;
	h=To:Subject:From:Message-Id:Date; b=hVhcA/KMJE2KZ5fT0pNKUmY8F6StkuATDIEC/hf+7v2Z+nzlyGnq23Tt2GsW/RUEpJXii1yet9V9rSWcrUR74xWZk+7JUWq9vlKEafxsLBS0R8CEYKimagQ+Aa6bGRuePPFgpml35ZomSwyJstKFozJJkZUYcao5GdmHuENPi9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+tG+d2y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+tG+d2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06BFC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 15:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784647113;
	bh=KMfLeGBcTvd6KjuRgCnZ/b0xe3q5RQ32xmJNpn/pjNM=;
	h=To:Subject:From:Date:From;
	b=g+tG+d2y27epvSERUSxh343SOwsxcdJmAeAZ4gV6h7EA2BYA0nZ0sRHCH+IsIjZ5T
	 xQyvvQ9jqIPodFmlUNDYXv80M54soNGZDYKbi4Xk6TIKKZc+xbDDxn0scsDAkAwyXW
	 4wjPXpL1QhYnh/LulGiOfNWFBjxxrb3sSh2G+pQ+cfuzjeTPXgNTzUShOHGs1D+Zgq
	 uVzp1LoXkZWTxp+DsIjqUggo0aC1pSXEhnj0GxSqcTTxrOdj52h/gFdlQi3WJBb82x
	 CDF+sWGvHbZYU9fAH+ktnR6r9ra3GTBgUPd6Gljcsj+ana86vs8yJFoCXugOsfgGai
	 KeFZcbpOWFLww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ED0C44529
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 15:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178464711368.1648.1331007599033719136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23a9723bbaf06668e37c6fa9f687282bbc12eb7e3d0f06f459353f43d1bd4575
Date: Tue, 21 Jul 2026 15:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784647113
