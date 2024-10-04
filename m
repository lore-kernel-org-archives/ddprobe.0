Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4230B13CFA5
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 09:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728032755; cv=none; b=Ww4I/lMVd7oYPHc1X8ES4nhB26NI4jfHE1i9Lsb97fhCGsqqZmsrAT7wG7Ir6R3etsvyxbYnnwgVQYj4sout+yriNX6LbWjiDggLClxxAuMYbM/Vrgj3k3k+/rnUHme/vFBS2AsgLOYdqCXUEe+nELQWuuJ0Zg54JBA0oaCD+XQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728032755; c=relaxed/simple;
	bh=k9ifUqkgYPoX/PDLka8P4o/bxIPqWt5Q2565A0m5z4E=;
	h=To:Subject:From:Message-Id:Date; b=oI+MD/ci9EWJrddJltyOS34++nkylbbfVccdRP6vM0tfXb4WorSgkPEutpquiMyvUfJaGs30VJFVPTwMkaDWS7JjlijWZrgtPsF6pFk66JVGqUMz5AEDRIoQkrryuqwolBv0P78d0soPylaUfOW0ghv4joXrhY0JUHcr9pczyRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VluX1KXd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VluX1KXd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4499C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728032754;
	bh=k9ifUqkgYPoX/PDLka8P4o/bxIPqWt5Q2565A0m5z4E=;
	h=To:Subject:From:Date:From;
	b=VluX1KXdaqtxIDZlQhDx1Y+C3mu3Jpzy+qezXP84iTXO15Gt9ee+LL5HLLBU1y4iQ
	 kKEGOtPisEtwd2AMGz5gg/db+pusvR9PstEKjV9DbztctEKS732qY7UaSigld7HiSb
	 TY2y8QZSpn7tbwwakiUQT9uRWJfgBPF83uAcw1aar6qADK3ERGj4dfZzVF2zQ3KYvp
	 2BhBNBDgk8FPvEiyXHpJMgwvmCbAUTsDOnzHhP7CIBowza6Vtjnf2jI638OQ8wQy8j
	 Rm4aqNF3Bh5mcDYjgk/ZHKbXKe23Tnb/X4et+nYxhrC8DSp6pywgdpUwwYZmAJWc19
	 PC/bR4UiswNUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1781CFA74C
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172803275362.2730.15164026988228433204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f276c7e0b512cad0f2449c6b54e19ade4e7ff819284e0e58227e9af16695f2bc
Date: Fri, 04 Oct 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728032753
