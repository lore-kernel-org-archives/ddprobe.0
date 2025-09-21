Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C15F9C1
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758415794; cv=none; b=qvWWcUJcxrkSIZXe/s+rdF41HU1dh08oN/VBmtYDPhbgmUQuua6XvBFwT4d2Qp2bE+8miUyC5/r1++agwswM4UpvDGeEIC2rdYv44v+u3a8EKC3vlgElt/xPPbNpvC14TCg/0nS2/v9yeBUannte6w92bbYqKe4eRd1dMXuvOEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758415794; c=relaxed/simple;
	bh=uudL/0CPHlDw9M8dbGAEJe2UcoRVeaTPXth2Syc4Kgo=;
	h=To:Subject:From:Message-Id:Date; b=LTeev4ULicUIhBeT9tKfgiksfBZLToPacqwAnVcZUyOyW/hUe+F7YeA97ME32FvSCGT9/AoNTZ5mdtvjyDeF0f5MWmklEDz3joYKSZRenUItTysN/wjxT671EnhJGtOn0wjA17/40pp25icOUF0UYkqb8NCLt3rOjoeHlkxdde4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9GOlfYP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9GOlfYP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AF0C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758415793;
	bh=uudL/0CPHlDw9M8dbGAEJe2UcoRVeaTPXth2Syc4Kgo=;
	h=To:Subject:From:Date:From;
	b=R9GOlfYPJLoRfn0Oa6f1AYnYX7z51GIIBK3w8LnsWzDeTAA/+ITnIr8FostCOMWsk
	 c2CS6cOv5E8FRZTVtVYGo34viwyPnGK6I+ThPk36G5nkzsiET5viu59Eopuywmmgxj
	 jx2d5QJaOaIF7IR9Fb6Q2xg1+EB7hlw/Mjs+Uw6da8ztRxEVe1YSv2gilfySprF2TH
	 ihFXYmArnO4bWx2ZaiFz9jbP9NitkZQxz/blGpRWBsVdsBmXYonCEQ7wWO5YafaEyM
	 x839oOg8tfzHwrxI/rOJvd0PULdzU1OESCP3NnoD5RFNwUXSR8xlciF6tu4opRQmID
	 8GUECsELjMftg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9444FCAC5A5
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175841579357.10251.8570457496319962922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcd6ac29a1897b936320e5aa167785311d60c029ba39509a91be225963b9301d
Date: Sun, 21 Sep 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758415793
