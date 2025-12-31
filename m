Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175FA3093CA
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767214434; cv=none; b=ckHCZvGxCrTQCUlC8XA033IHlHE+oGe38z3bj43/5PERVlWJclKR7Xb8R8k0BxYzOPSyCr5+MGuGlBgy6ANAtzaJfTQT378gKhLhQlAmcJMj3bTm2mB+QGNL9lZUwRckzkDYdEA692t4PbQCUEluWhBNWkYmNTKyLxNQT+XmMnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767214434; c=relaxed/simple;
	bh=X+f/iDTdS7wVfib9zPk6sZY8Kr8ZPMyn3weZJlk0aXw=;
	h=To:Subject:From:Message-Id:Date; b=s73Fp3jB3nC6OGPiwmyPZIi13P8qjeV+xYJ10LxBvqj3CjCwt65gq2HydHvIMSN1eq6N8LQWyRNdp0dYBC2VPXLMspm6nckvtN2QX8JiCeK5fYvs79zXEysTewn7R1R5z9+4lMV9rs012fT80seryylwWl4Oel1rJvPXNsn3bio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CymdXxXl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CymdXxXl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26C9C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767214433;
	bh=X+f/iDTdS7wVfib9zPk6sZY8Kr8ZPMyn3weZJlk0aXw=;
	h=To:Subject:From:Date:From;
	b=CymdXxXlnDn3Vk3I0QQqi62vJGDmcmhp/pCuG/ddgN8l2wgZVlfT8B6CqDndhQAf2
	 qZPV/VTSMBhKwMx2a4yE1CKNLbat6QEQkRkMYsDsO6b0iG7mlyVSTlLnW15p4yhqoh
	 ob1W0XTNroiHpJdXD5uWAIkxxJHUHGyzKWBHZ+bZkSqSIvggXqdQES63PpcONPpdCI
	 sR5XqjisE5C2KcZHHH+kz1s0+miYlakAfrk6hyMxV7isbnlWRBFKPxTqqgTm8d2tsH
	 z8w8p4VKbMufRsLhGBco7b0aXrHblORWAmKBIN4dCaCuCEqVYOmosrnAZ7qnWzeA/8
	 vIqjbgUTria8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95132EE6441
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176721443357.17585.10856568075873276154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43f65e6cac689c8a7cfcc69dd50bf66c55952ccbcca1122c68b97baa382bb641
Date: Wed, 31 Dec 2025 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767214433
