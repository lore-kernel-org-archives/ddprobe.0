Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1F3131E2D
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 18:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753295995; cv=none; b=MSufq9MAtrm7nVe1PFwpYWR+kGFm7zY2d/tjGv+4YlTSeTkj8orWVaJ4I47fi/WRYsXC/17ia49sgSnZ+0SZ33uIcSM60zuAG1BN2lVCIqrPYBwUoW4sZhZhzxg6yc/S8fIcBSMILTqDdqAo0rDB/qChpPnf64aKqvc5oe5MER4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753295995; c=relaxed/simple;
	bh=SlS/1mSnJWNZLf9zAPKOkp6h37FhwN0UG2MOVUWrgwA=;
	h=To:Subject:From:Message-Id:Date; b=TokO2a0tIkHwSC/+wyvfqiulUm94lA3Imsw26SZQG8gOmMPEUIn22p64G9r7uzDNygyWmN7QuAofPL8kuKzGFg9G+A5pSGWKF0VBslL5sLLnF7S3SqSMeEqAqTGjoYTo6YYzWzwWDR7JAm1j3ES/fFmJoGv+iIeuHKE6ods6EDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lUcPQBkK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lUcPQBkK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CF9C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753295994;
	bh=SlS/1mSnJWNZLf9zAPKOkp6h37FhwN0UG2MOVUWrgwA=;
	h=To:Subject:From:Date:From;
	b=lUcPQBkKOGvdsfJUP5YxKKfRYsF5gwRaJgZiViUkn5IVjxUOEzCem/p10OoN6B8vQ
	 7vjKkJSjXJGCEhcYBzUy+E0TU48BG+ShcvxJY4NdNTI5LEkF5HOxNuaWaQqzFu2v5n
	 ra5SIbn/ZaqzDIEcGwit+jYKsSMa81+c9zNeOtAA44dUtsNNr0kUplJ5Pr1/sNPN37
	 UpdGHIjXtuzS1Muo8Oft16Z116XIbx2mVeAeLRat8sAhdf+w3g2dci/d4xkKXO+2uv
	 /ekXpIcgaHfY4N6Ts/r+hPPe7YC992OsxpxhstITdcHuXCfZoIfCyZco4HRVchufVk
	 Y6sdblmSGonVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F601C83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175329599358.23085.5008983858082715212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbf1dfe558e759054cbe300fad31c825ef1b095a53c6b130566a582bdc2622d7
Date: Wed, 23 Jul 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753295993
