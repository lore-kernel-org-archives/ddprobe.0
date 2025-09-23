Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBF425DAFF
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758648594; cv=none; b=MDqChKjc6+iOx8NoJ2QYjJ4opaIudY4qQ0BR0/vEe+Y53HJvaIn72HXp0wp9ztpjDZMk5JdiIbQkQ+qnaU18XRpG8gytPYiPt8Eg+hGkcRc40Zg7wy1/5R5x/y3Rwqor29tWgZwpjzt3WI5VQ1CaeLxX65NNAxwOk8Y5H7pVZjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758648594; c=relaxed/simple;
	bh=tQBKHO5TL03j3PAHEVmVmtubQgrPfIvAolFakgWZfZc=;
	h=To:Subject:From:Message-Id:Date; b=grxlkXrGa6mebsvjwCx4oTZtiKU70wUkdqc71PfB6GWDVIseNkOS1G9L2MdCjBtI/XovDUuOFgZEEtF5NHm+p1+w4hQxA66bkkiiZyo3PTaRTK8xIWSTX7svFmi5QtjTebNpByBkaW+f/yxTXkrCtlP3k9cBlBe+U+yN9arAerQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNUMJNnV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNUMJNnV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EE8C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758648593;
	bh=tQBKHO5TL03j3PAHEVmVmtubQgrPfIvAolFakgWZfZc=;
	h=To:Subject:From:Date:From;
	b=CNUMJNnVDDvKU3ei9QCRaMoWD0/meMRXlnhivyRjUiZNzESzQJEEKqUV+rognHJt9
	 Vl8oIOmFIGO4jxgHNpybKLLdg9n/S6iZI6Z25VlDLJlv32IGy2/0jpbvP0CIZ2qCGp
	 Nz94BmrVzpvgv+QmD//1gjT2ZCTt5kf8b2LQkhizUKl4rvkaPEt+gpxLEuRJZZg1nr
	 goddWTjeNp3sHwakHhAS4L9M0N0pZkq7MftiIeu3ancrDv/91mXL3oelaqu0Wplgsd
	 eUOMIm+wKbt40NbfRco82La/GK4rEVv6e1rqMFg36jrulCfYTrqeirWhk3BQBtCZ7n
	 T16MmIEM3lgzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929A6CAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175864859359.25496.10050567640399694776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6f39db95c4fcd17d853fadf92445cb423cdc00fe9a04ee39e00282b4829e903
Date: Tue, 23 Sep 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758648593
