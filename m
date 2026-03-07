Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09549377579
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772914494; cv=none; b=iViPJbJpOBpkR2VLyHmpA6y70JevaE3DuSeDvwnPgInsn40jKVsPE03tAArGYR7eQwmIA8jMfjmNViD/Q0Pnea+kxz3UOB4s0uoGbyp4diks+fFT6E7kvieppnBE3JoRm72QlfxKhwVeRmudH6Yj1Ogo3Hgtytmpwj/m0atM7Bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772914494; c=relaxed/simple;
	bh=a7T73Z5ofFc0iemb4rthL175s45ntzRR56z4Hzjx6PE=;
	h=To:Subject:From:Message-Id:Date; b=D7qr+BsQJwMG0VENcCNEvnTSS3AQQQ25oJcHyAr2HL4m1Tx5m4+toiJRRqH22ZA4gXxP+ybanVW0DWKN+vIitdbo2btfBF5+PNTPSheZULSxFKI1w6IiKWkf3xDkfH8CQk84oE1HTwxIla8iRRNZOic5UEW0B5O3jyBfMTO//f8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srTlWaaA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srTlWaaA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F27C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772914493;
	bh=a7T73Z5ofFc0iemb4rthL175s45ntzRR56z4Hzjx6PE=;
	h=To:Subject:From:Date:From;
	b=srTlWaaAVoanSM5wKE0hy3oLr2r5xFedSUBRSeuErNMv6brvbtK6/p2hKtercovfe
	 E/F9226pbrOrK3F/WSj1teDkbCAc+vJbXVSG1FCwn9flNnZUXbUvzqIqxEPfdn6IW6
	 q9nRLZ0YoEmWcqIL6F+1o2xg3KHIR2KGqvQl3wFGfSKTiJg11Ues6UqhGoruujI7VP
	 0XkaQxtTgBNWNAc9XoyG8Sev6boPuP1zDMgSdVJIk0afq1AKZIYr23ixGf5x1VQpC1
	 jNHwtUrVJ7wN2dJ5symgk375uWFyzREO29pReHWImNu1TKjb5RTslaF/kXqR1esnYd
	 ELtWgQ3EdfRkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F620F55104
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177291449357.11523.10149412936442226603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d89958a4f6a0188af96f36ded985abb596fcc4059899081973db067bbf29f35
Date: Sat, 07 Mar 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772914493
