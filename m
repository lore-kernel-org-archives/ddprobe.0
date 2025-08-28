Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFFB230BD9
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756363194; cv=none; b=eLAqFvZJdRFasnaDT/1MYuNuyJexJKWuzbjIKTwQ7Zy290OX6WVm5xduME1fAlsMGFROuhQr36GWHf7CRYFsohKXVVFznH5Dk8e+3VeEg9T6IwtPIVRFtv6WRWSuwGn57JH9zYfKpMLmjWlfi1qZCiA1i9EJd5CQ6pk2TnMI7C4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756363194; c=relaxed/simple;
	bh=zegnm3kr60x3KlBMX1PpFyhIXwBs7ebNWSEmnMwPQyg=;
	h=To:Subject:From:Message-Id:Date; b=I2jedbiqY0SM8UNqV7guUXNzDOhxDV4NFyO/m35z0E7MH01X36zh8qkiHOeeaGbT32ome71hHkPHhA6sF8NMwZAoYuRXa2/iZt6lmLuLez+lz6kQ2WFQqOpZtOdHZHgehTGKjmQ/F4u4GpLO8lBBM7GQcziglUl0Zf97Kvofo0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRtY1Zc/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRtY1Zc/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A066FC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756363193;
	bh=zegnm3kr60x3KlBMX1PpFyhIXwBs7ebNWSEmnMwPQyg=;
	h=To:Subject:From:Date:From;
	b=jRtY1Zc/YzHLBKxqaI2ZwXcYpT9uhCppd5a55SfGe5y5n2wOJoDl9ECg24q2uDo/h
	 f8gZfwQNgsqVjkcQTnQELmJUk9o3PL09B8TAGaYffX0VQ0xUZr1Gux2I8cQxlLRhiZ
	 Ng7JPY5rttRPzGlNq9RePvWC6KJ9+N7VlyIFbmq0+4WqDx10OOM70ddN6F31DhHODp
	 EyU6s6B0+2WOWHbQCQPcliU/rRuztpoRCoZwZReX6WVRofAzBskmctkQsBOzVqBx9v
	 nJjDE4lv6gUHYtg5Z7HSA22URWFV9UGDx/SvqttqCiySX3am3ZDSu8MTDz2juaxCkC
	 0TSP1BnXjoSRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA95CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175636319357.12970.70496608839589144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88dfb3e5305bd8fc65ff93e4b506199e215ac17c7f89e0948737a39f26b1e2bc
Date: Thu, 28 Aug 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756363193
