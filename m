Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED43D139598
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711662497; cv=none; b=Qd3y+WezDKOZbUq7+ZEDn6b8F0U7efN6XXMQ5wtTxPPnT3lmTAos4+uAoagq5wqsZsE5TUnzCqH/bivWIm0OHickVlNapdhIT/xb9DxogbPFB8T4ekePVdxNc7VVYno97bRBvddf9mGbmbhJeQvBnmTftDB2H2YrrWQEhHWMzeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711662497; c=relaxed/simple;
	bh=4owS4kBIt2xiEjJAx9D0T1RFquO9XbxVPN85pMsoV84=;
	h=To:Subject:From:Message-Id:Date; b=HnJV5PTI1Qk0UNYN8kqG56pwlwsfvOmLSsIwAnPoyD22r0CZqPF2Gjj0ren5RForxTcBbkg2ljNyqQG3SXl1A6uzRLnVxnnijZ9qnrSVEH9d/gACgAHcYS84ALFaanVjj8k3eXqHi2uTpv7REYalaFILqF4Sts1HeNAHz04iOYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mvj2diQC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mvj2diQC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F3F0C433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711662496;
	bh=4owS4kBIt2xiEjJAx9D0T1RFquO9XbxVPN85pMsoV84=;
	h=To:Subject:From:Date:From;
	b=mvj2diQC5WbbiBUwXyMI4jfuLu8ND1OyOw/Sw8qgsOxj8yFA7G1kKRn5zqew1lcOt
	 feRrvgdug7DVpTOklJuCnxgib6bF+p8GsncsIlDS4mZmE408QU0NqKj3I+9GXIJ+ft
	 hyaTjtOxSrt7W7aL8saxNY+C+MEIE1JH1t3/nXgs9bqkEJ1J7trWupi0mRYH8x7zlP
	 /cCzIr/4sdc42VIor/BjQlLu7Vv5MdiITfIQZU4ijzGR58u2gA56vYLGW2wC6fMTiX
	 fSEt4zLhhtIBEolWTu3CdaHUtCgM+wfrzYixRZwoVrtCECC5WuSay2Zz46upTHbYbe
	 ySuZNdf0vEReg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B926CD11DD
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171166249639.827.11931950986692933412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4b172cf00c7a4180c661807b335a67bd57bad80efccf898b7b9d56ef0bb12b7
Date: Thu, 28 Mar 2024 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711662496
