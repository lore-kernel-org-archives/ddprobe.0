Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6781413AA5D
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 21:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714425143; cv=none; b=du5cawzw2wAVTEu6Pr7DsjUm3bBcVrkIsUGY22waQZGFLZ6pYZs8czgJ9Aaid76XJWnQSmFmBsk1j3zaP7Q56PgSm0VgDy++cAJ0/06K95VbrkkrktmGfVONlu3qI2dgL/Gio0KGGahNCpASOBr+oO26uFpU7nTC3hlAsWCDOPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714425143; c=relaxed/simple;
	bh=hgyYFITeroDpkWAeG3FJHkIRUq8BDtezTS/8CIbne8Y=;
	h=To:Subject:From:Message-Id:Date; b=LYmMtgeTEXrZEJmouu+gxrr8hD46BOZZHeCAOSTa7isBq0viOVZfRdEyZL0ofPEpRAkJC8bf/LSvt1NCd0fDIDoSvdJwthVkcuD7hZamcZggeB6QLspxKCCtEgE0uXoQnQ7VRvHUDTJxG51hJYgA749ItddEPpzXrSJ3KY6EAMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQHVdDe6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQHVdDe6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6D19C113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 21:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714425142;
	bh=hgyYFITeroDpkWAeG3FJHkIRUq8BDtezTS/8CIbne8Y=;
	h=To:Subject:From:Date:From;
	b=cQHVdDe62j+MBx8AFFspCiOiZROdfuhj5Ooc1ohZ0SGEwXG6boNPMwrKaqFeTQgae
	 ZjF2iN+WSUOjfeXssUvPfMW1YLkbiZ22JdBnpzROrpKRZtcCW/oRdloCuat1FW+EDb
	 vNA8j0gybstqtr5m5tt+uhA2xpLNu19M1l/gkagk22gWEhYeJNz/n/ear6CGlz5EQL
	 wNORxOjQmwS17dPW2ojc/j41NBIWggGaSDVA4m4zv/RHxWODLHxbty/M+ON76JFIml
	 YeViV1ePM7Fx9sQl3H53IWtFluZlq/PqS57TKAKZhxHOBp1FbLnMkdi0+3dwuFnbU1
	 a/fXvv02g2odg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBB40C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 21:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171442514276.21697.8643680450561779620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66340062986d3239b15ab6ca65baab90ad291d70d7cc63a027127da043b8cbb1
Date: Mon, 29 Apr 2024 21:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714425142
