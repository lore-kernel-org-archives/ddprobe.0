Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1601F21D3D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771574094; cv=none; b=EbfWtRiJjgLrkxIstV7uqF87Md/7f8PK6l2kDUuBIg0Yf6ziHMyQLX+Yh+YQVsIM7mnZ9dQU97r+f+DJIXbBxSSPlwyIkiSdFnlURgxVTwjpB+C/AAvtHm+x8wKG+Pb8UOvW5QiKUrZncod+ZR47NvLuSXrFNQtWwm2zWKsDivk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771574094; c=relaxed/simple;
	bh=9x6ywtQH/jCMWRbVUUERRmUSmlyCY2lTBhIPx0WjnSA=;
	h=To:Subject:From:Message-Id:Date; b=D+F/SAnFMmLTfr6+qQfYg1sGXXYq7Y7tLxtODSEfpw1iLKhkPI171pWLJnyc2ql6NLWrVZcj3ePI4YzqqG42e80kMro9cP0DSA+oRwD5LFcd4HbeNGlLB/oWIeXMGa/Uwu29qpjWTCXr3c6v1KTtls1nVAp5sWOSCz2OiTyczJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXOBmH69; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXOBmH69"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EAEC116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771574093;
	bh=9x6ywtQH/jCMWRbVUUERRmUSmlyCY2lTBhIPx0WjnSA=;
	h=To:Subject:From:Date:From;
	b=hXOBmH69S/oEb7ag7guKFRHpl2QtXsCnaozTbHay1gHYbfSNpWjPHp3Ug2gouyfVB
	 BvCKHngx89HLI+UbCUS2P7bQf/G8jl476i9WPLdAMOYd3JKoWZZfW2xiv/iO5VOh0V
	 3U4i1amwSyDpkF4swgWmFfL1ADag1vfDW57zUKuqdHaZqHpJRMpwsonA+ZDFVFUnId
	 klxegWqQbkiQSkSfrYx0MuZme3kj5m+oWuNXRu8foBcF+t274QUCo8BElJNjsog0t1
	 yCUKbEjTP9OoLSvwMFsLb7m++vGS9Nl0tVIlMcOeLx7KHDcabDfRgIpJu+liLm56PT
	 YTJCUjVheNTww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93071C53216
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177157409359.9641.14680928893294999898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3624e44fe7605de90f882320f15a27572b30419bf067ffb5f56685113a3392f4
Date: Fri, 20 Feb 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771574093
