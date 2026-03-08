Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ECAF16FF37
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772985294; cv=none; b=c1hTLOyqKr2oGvzzNKoIMOxqmhEmlsE4vpZiEdpHvU52MKaveErfZ/6loKGnN1G+ZxZ2Ua4hiHnI+wQyxfOOp3lGlNW2inlk+of9I8CqLDIVsQ+05gDOQokUv/uZIgNLO7NrWiZEPWucJyjDOo5AXZCrd9KFcKJhdCyfUT/mCn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772985294; c=relaxed/simple;
	bh=p1dyHUG9X2PRfolRI4Z1K6WVcID+Fb/bDMEVohwD6W0=;
	h=To:Subject:From:Message-Id:Date; b=irDsohS4yeCg4LBgizy7/cO1H17WxU/CHPr3AtlVk+1uiHDgVPL1HzEvjBprPtWnUWHcUsmsSJuJ1rmugl/ujtXLo/3OYhbuk3TEmy2oPi99hB9+EZFmZ7kqoutQGYDOwOCsDVXeUWfNzFqXE7hl6/4n3hCGM88R7wmsSfeE3oQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6/+Xn6C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6/+Xn6C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3913C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772985293;
	bh=p1dyHUG9X2PRfolRI4Z1K6WVcID+Fb/bDMEVohwD6W0=;
	h=To:Subject:From:Date:From;
	b=C6/+Xn6CGnwntEBweDQXXS7Uils9C+IYBe842/QV5hIPAOKktaFDocUzS2naZXum4
	 c+gN24YTcx+mvD6Btk3VblxANi3uhR2sohrsrCfVbVadkchVZDbkaD+24ZoPbjMg+3
	 we7P/eVXm8KowCEi8sI0SHEhJrwu492JJpIBJ1EluOQXkiBnBvsUBUXmLdjMG+J761
	 IyCbDnjUIL4yiBcAwEu3BWjcQ2rsGkP6whPSVByedCPvFgK2SjKRdM4axnSvYteRh/
	 yPSOvdAEe2j2kwADM1a1r4TUb/ebGqgX9tTfI4kZt6Le7bRLpwx4B6oo+DPBkWPKF2
	 8BalHalonx9kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91283EA852E
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177298529358.10124.3042952239859289129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a0c98a11105000a8647bd0962497878182710e28726df981970085e42b35f1b
Date: Sun, 08 Mar 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772985293
