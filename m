Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1737B1799F
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760833794; cv=none; b=KwmSUs1z4Eymp+Jq/ZfYPkKmqlBI0haj0DdHG6kw5OnBpLhyFaqkS1W9gYyyra2ScuRfHsYZoeLQXiR5/uUrHHJrbCMsohgm2CSa3sDd3wiMe9igzcWmr6jvUWBT4/mSuHNUDXr8bLNg6TsmlrcaC3VZd1v3FjCjjRo+8i297Sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760833794; c=relaxed/simple;
	bh=YRNj3evCCq2CF1FewCxy6WEsCIePnbp9y1U2vzFX2c0=;
	h=To:Subject:From:Message-Id:Date; b=lvYCnMqX6IVK1c3PKt2KEBX7gMlFKFygf8TuNqrg0mAHdJbpSs/pi8Mbc/x4061kHrE1iXaT2pedF8uMISJy2rSzlnB8iylVDxQ6sd75ExaqERbPn9+WEd5fThrOkqHJNzB9qKzX/LspIvjJJK4/zOO70gM62FE5+IfOCmdZRfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kYITy+um; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kYITy+um"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EEEC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760833793;
	bh=YRNj3evCCq2CF1FewCxy6WEsCIePnbp9y1U2vzFX2c0=;
	h=To:Subject:From:Date:From;
	b=kYITy+umCRjn0JRzUA3MzKWzgG79lFj5wCQ3Yy0FRQhJ9FUn94vyN3Wi+Xk1CvOnk
	 +0V6TU7zd7aGjOcfVrOAIMmRdKcrcAvfgi2evUrnbPcP5/+sos+GSFoJ7cqdPW8Egf
	 9mGts37XKBTfY8rvwtu+OdE8a5mkXV7ok7IzdBU39LWjW8XPck/Wu5zO3GdwJ9W9mm
	 p6DdTIa2M3x1zXg0vuAMhpaU39564kc0FeeJ8dp2jnyxeLMGhUdgBp/QSAuxpcXSXA
	 sSYrdGmM26fzp+L2Utmn1pgcpN2h1fwz6b38GHcf9dazJ1bs7X2JPwYCrOO7YY8eAF
	 RUWdHlgVZMivQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9379FCCD193
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176083379358.3785.17390657166769772577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0366a64a361a5588bd96bea0b407a3dd632f0b688f6d656954407b721492fa8
Date: Sun, 19 Oct 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760833793
