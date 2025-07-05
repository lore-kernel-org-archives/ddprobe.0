Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6DE2E371D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751719194; cv=none; b=IxTlJdKrjUjTliVvwoFGuScLq2srHdREwPvg5Ami32XqIetcOKqLijITLu0jEHUrt5aU0btuDE/hCjhkd8kxAboNFezg8rqCkMrFgPs69s5pBU66HxOiKMR8Q9g17Vby4lEHXnGlngJmbCtT6WODKHxsSUNWkpMt+m5/Ef7gFYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751719194; c=relaxed/simple;
	bh=uKW5EVrpSbnhbJ6c+1eRsZgLnCYSeWC+30Tav96Hg04=;
	h=To:Subject:From:Message-Id:Date; b=PjUnJEmMf3GKetxVzPlywv70HEO9iDI6vJxhTEfFx32ObSlzqHsJMEoD3Y/yhTd6P8cuwa9L7YtiJis0ZVjykim7vpFeFsk3QccAMCDFILHl6Cq06xxC1xMmZfnm4Ou0Shde/smZoRbNcNf1OLGoiTdqTtJ6V484VnHDtk6gDjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Em/KESB9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Em/KESB9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14E2C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751719193;
	bh=uKW5EVrpSbnhbJ6c+1eRsZgLnCYSeWC+30Tav96Hg04=;
	h=To:Subject:From:Date:From;
	b=Em/KESB9dUAYydHld9LqdNQC6yoYy3a/6FN91ZZQr5FxLx5ovTp7av9gz5qH6fx3R
	 r0lIFVbkkhmAwjJQ/J2k0ZdMAti6o21R2+tK6GBMV7GEDGnEfVnfMqePbz3Fw3JF8Y
	 gsBfMl6VYqR+NJLfE7+1LOzoDdSc+LF0aWUevDPsTL0/OBEd1c5mxC73V5JoDzrVC3
	 GCe9cPopDB7qQaf/BrA7wG0+QbBzI5+SAxes245bosoE6rw8xhpyn3T3Orsyu8VZq7
	 om2uBYUeWsOumjvCuCiyGjJfjU3/r6I/9/lh/KO+IXlCoFjKyR2iPUKRyhLvf5GXtA
	 +f4rlUWq7LmEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED24C8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175171919357.32355.13273830722089749517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ce8e997b2ae1689a4d66e96d603bf632faf525c1129768c656912ce5bdcac5b
Date: Sat, 05 Jul 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751719193
