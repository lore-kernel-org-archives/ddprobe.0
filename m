Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65876383A0
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 04:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715745743; cv=none; b=uKOgc4zlgc8iibuNKZXRN1RTlPqnYIuGmk9+Ya4w56S6j5fXWNqKHOAX73hSJXS5ABAXWBWrWwjqBZ3oyyA70Aog8LqVaiAgfJ9YdWD0oyqu4i7BLXeNhB8xRtdIyr2TJgOBV4Tn/I6YWLzH1WQxv540FVHcGPHIhs4EKk+iMr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715745743; c=relaxed/simple;
	bh=cK8FbUbxmfcvdwf7BhXP1SDoHFHOPiYLVMiNHXdEwMU=;
	h=To:Subject:From:Message-Id:Date; b=MiI+kj/xA9R1twp6Qq8hPJojMisGz6aI8aIKnNa0AoJfQorXNVSDfQHV1xKEYYbBU4cgsG7deRKnrhFJmshCAFLk2ErdWfwuRQvyEP4HgrE12od+mXGbcbGyaMUMygArKgBoQbQU29WklHNzHRV7BkFx9R0HNY203jA1Ea7ILmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tEL6y6mh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tEL6y6mh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC9CDC32781
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 04:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715745743;
	bh=cK8FbUbxmfcvdwf7BhXP1SDoHFHOPiYLVMiNHXdEwMU=;
	h=To:Subject:From:Date:From;
	b=tEL6y6mhGb6XBzTJEwWTSMIQcJJpPjWOMitO7w32utkMRxgAqKtqdgoN0HKS85F4L
	 3eNyiQtHiWpUxA6zSInn6E1Sf0JMTD1iFq+y2EAvTRmb8ILrXpIWdyn6KSYgYTH2ex
	 zC3/PnC7ccDBvS2AzB056/4d33lPgSHLxi06ud2ZRPeHevzN1b+gJ5DLIsTrdecrte
	 DpN8XOtni2Ddy+vLS+irbnS0Sxq58/I9CMjKEQweD5+3mumMMST82XGNN5fH9WBsYa
	 PPBMso7F3PXwTuVH6gGbLpEYBp2UMilBWJBZ2G/34suitekyMLHgQuPGnvDHLsuXQJ
	 liBc/7rOITr1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBF36C25B77
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 04:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171574574289.13243.12074836924933242729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b05620d414bcfd0f5c30e2d069b17cc5aedba44118b3f6f580315dc23c13134
Date: Wed, 15 May 2024 04:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715745742
