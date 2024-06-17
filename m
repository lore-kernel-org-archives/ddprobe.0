Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A4029D19
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 03:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718595503; cv=none; b=aeG48nOGR3MCwrLEXsUFVUxd/PxLSbe6jNhK5DjepZqHBwY7a49N1UdtNlSSZvIe7E7a4LczjRXJ/92gwpds5/9mfi+ai6fDH8ZpCDh4KrK+ldEIWbf4aZNrzyKKy+S5idg/+mLBWnjWTCx5A1W7bHCDp+/mWxaBeBvS5mBfpnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718595503; c=relaxed/simple;
	bh=S+9QKYE4juoxfaTsD+4IoHC2YLtGxOHFTcc9ws0AMwA=;
	h=To:Subject:From:Message-Id:Date; b=BJaiux4+B7oUpa3ZSgI872Cw5Xvf2Zp2+o6nmk3t2/9ZKTQOB1mnIvKaW4W2ndQ4XYGGguymCqLDoY9Qs8HTTiqxUHWwRJHCa2eUS2UPAeY1BbD/qkgxKCftU6g/mRdMLuOa7iq8q1NHMwmq6WHuE8U8mDyS9WqHrQQMgBuY+AE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cM+wfQ+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cM+wfQ+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D476CC3277B
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 03:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718595502;
	bh=S+9QKYE4juoxfaTsD+4IoHC2YLtGxOHFTcc9ws0AMwA=;
	h=To:Subject:From:Date:From;
	b=cM+wfQ+iwr3C4W6GAr5vhVA5yeze5icZ48NCIHwV9UzbVLcARkVz791xzINdmw8uz
	 2zS3ZirDxcWxhcoOLRUmTf1CgjWaQcn0kqNqvLRiQ6AnrCQfQrOXphyLinS2DzUpz/
	 F7LYMnKvCViuFFiFtCep788yfR7ETtn1v1546WjnZtvIrvf8xoC7vM7KeornB0r9dw
	 R2gBXDijiUmMeGa1dlT2AbG6rSQd3fiGceHNp8jwreUW70ynIWELyM2m6gKzlBcEyt
	 lqtjuOLBtdXJSLY2sB0Rq8YSdMEaZm79KgmpywkiR0JHJqVr7DSAeR6i8Gs3Du0H1Z
	 CDv8XtfQF6TpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB52C27C77
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 03:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171859550276.6469.14050715791639318591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5c74d2fe1fba65fbe3fea60dde66be2fd173fa5f5dbade9b04725bae142fb27
Date: Mon, 17 Jun 2024 03:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718595502
