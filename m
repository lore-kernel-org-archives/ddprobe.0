Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3581C1DD540
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728320154; cv=none; b=IlMdkoIbiGfRJlxRzkqXQ276mMx6FHdImrr8asGo48U/AhBI4jRenVbirBpEfxZwp8lU1i07hZpqHBc6vgD16D6V+j0DQX2lD7r59v6gRVlVhqnAnA5s7RG/JQQDQ+hpaWndTTwORKli4m16trDTxntrgJeVl46kWskItPGsA8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728320154; c=relaxed/simple;
	bh=tvQP7H8SMQ+FvDYoTMZwecD+3YLSdzwc7pHfSMxMePc=;
	h=To:Subject:From:Message-Id:Date; b=ew/rvRgPep1lCHxaVqfdNU+2NMg7tl3yxejPTmjB/iauDQK5vlnHLi3KUn2X+9rtRoX0H6NXJhwOP3z0tuWZxEPOx19e8jtRy3GUpw8ss+Z4b9AImZnkUNYMZTGKdC3X9+JGNQQwP75+Kvz3NOGybXE71j0uiNYVt4js3doIfag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sce/Eju4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sce/Eju4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A702AC4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728320153;
	bh=tvQP7H8SMQ+FvDYoTMZwecD+3YLSdzwc7pHfSMxMePc=;
	h=To:Subject:From:Date:From;
	b=sce/Eju4akKxkrJdT5CkstTKp6TQeCeKZlni+A0V2WvR2bKBBe/gjeS1NSfz5LLyT
	 bL/T0+ou8mGQbjBPkHQTZBrlSdirPSWjuw6DITvev/nvZZAOBwFPOH8qVpM1swAyyF
	 WA6uJQUSgKWpIxONOVB6zXO9u0IBCZvBYHOs1jFONdjRllEJZ2tdHGczE+201EzhLN
	 7C8h7zrRxvxjyOi61b/s4pMnfmotq1miA2widYk24WGlIMOpETBe1NwphG4Y5LqMl2
	 Q/RgNt/4mSQNYjLgHiYL1R6ytJP1VzUVy7R5Bt6gqvpp3MzFWPKAVQIDRuyCSlIVuU
	 vvF3cpRGL2i4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97619CFB44D
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172832015360.8240.11134506306050790501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72f0e4aa41e365c98007113cc659e68745b006b845673298d68e2b24ea3c6263
Date: Mon, 07 Oct 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728320153
