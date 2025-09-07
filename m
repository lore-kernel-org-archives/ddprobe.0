Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 058A9285C9F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757266194; cv=none; b=ri+oHi/FoHw/vYG7dqMd+JB4MDL7mflfSDh6yM6etk6sOnsh7WpduP1Aby1RIGw6+3mds5HnoUgY7+q3YcEUB725EVA1QMo5M0+njHtteSJO8TcwOqz6Kef+43/cacL2YxtiZIJ+U23+BUu2KnDR9PBnGzONTfox7GynHUujBFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757266194; c=relaxed/simple;
	bh=Z9n/j9mTbBX62sLd0eveq697jRcEEvAt6JIFptrLf5U=;
	h=To:Subject:From:Message-Id:Date; b=CxcOM1f9zmaea3OTvgNPMtiMT6tbmfdU11U9Ncgq7RTiU/dzDn7tAUiodNan/XGf0p65FwDERaIcUu7u+DrMJ+XH8XpZ/AP+0k6u84xfy/ME9y8l6BkJOzFcZd6AtXNCukwp7IkfSmV8pA45J4DdJUamxMU2MOl89aGEQSMvMNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6J8xMvG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P6J8xMvG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E6CC4CEF5
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757266193;
	bh=Z9n/j9mTbBX62sLd0eveq697jRcEEvAt6JIFptrLf5U=;
	h=To:Subject:From:Date:From;
	b=P6J8xMvG6CaSrxd2t1WHBkZZ8lY1MnQvxmkdOtj9S0+H4j2xCuJ5wH+LBDMwHUm/P
	 n1lVsASw7/uXJH3JZ2re6SOc8oogCv9XKlIYXidcU+dTtx1bc4D7SUDcrrstYzwC0d
	 Dkck3aouI5XLoMv8vyWQopIk3fcyBFm28RbEwXDuOFG0hWV2UMm34sxXqzI+fvvJdz
	 i0AFxRscBUGPBbVPHDd6jVqTarTYtTPiyq3wJju6eZ03eKU6SR4PXb8tlnKTd2jkSD
	 YKPPa6F2zgIdQEc5QXxpQT3E9S4Ag2N2iCjvFCCATQcNDILFDMWyUWUb2w247piHDC
	 I/MBxJNTyx3EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92827CA101F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175726619358.18683.9368541038837889768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c35f564633efba21438652e2968d06a77aa00d487f61a3b04c1248b4b21404c8
Date: Sun, 07 Sep 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757266193
