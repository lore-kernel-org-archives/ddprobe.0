Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A91C8E6
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771544694; cv=none; b=ELxmMeRkznkAcRIAXr+Pg2mqMreaALu16tjC/RZngIsQtTMk2MSP5gFQl7Sx/HWjRPLPUohKcjxs/nPIs8wOJo4ojG0v2NAEExiILuxLWpeCt/N8xNhR9xa8urCMHo62FFj7VT+1zVn4uOhbrdWwqsF6RzSvGqqv9Nnyl1NHRW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771544694; c=relaxed/simple;
	bh=0mnbfF/mo1lOOpslTvaLVs6VTrDxVA+LclsSrjnucK0=;
	h=To:Subject:From:Message-Id:Date; b=V704FALwnJ3o2yEpYKe2kTWsOtZVcssiiwi+u+bJ9enLd4vQebkqWo1pAT93t0cpHvKDjGD3VU/qBQg27CBfCE6E08UncN/1XMgveBSMG1xSm9vg72zcFeBpUTIXx3S3QkRwwYOHoDajxx30BOD5xm9Bui+906QcRFt4S0bXM7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fcl+LpVp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fcl+LpVp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51B7C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771544693;
	bh=0mnbfF/mo1lOOpslTvaLVs6VTrDxVA+LclsSrjnucK0=;
	h=To:Subject:From:Date:From;
	b=fcl+LpVpfQ/UdLJn2aW3S8XAzUi95U9QTolVGuczD15/Ti+FMzwXJwPgZ6B4uYIiN
	 HFc1Dkd5/bt4xM3SCYkFUHPbJQvuWVgDZ6513hTIx0OYNPM5WzyXKd+0CzTJygCd3O
	 KwF8yzdjODrrIDfSYSgoS8L+TEoNtbDPu3duqfC4znc9TcG0xVsgRxOD1In+NqB+At
	 iTSX0uxjtBKiDHzzYPivikej1QsnSnnP1QGyKuIdnaOupTkHLxV9V1K687dzfIr/ca
	 xHpbR8TDo/HTdGckqeX5E3tvKj600+GIdT5yNa1gVA6hUXe00NQ8cxcPX6B2O9hnko
	 rGFnjdyta4Ujw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96869C531EA
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177154469360.13938.10983271448698783563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5cf1da4a1559d6ff5cbff18b5429373c52e2f9f8aedf26af89167fedde176bc
Date: Thu, 19 Feb 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771544693
