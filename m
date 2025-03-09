Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A681E32B3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 21:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741555734; cv=none; b=ljWWrgvfi6cqAvGBaFTyXZN0D1+plemk9mWqbFE7sfg59jfdlIdQIT5kodjBzySr9rIHnJXp//ho/aJl0lr1FLQhH7pLqNm7OfP+tikcL4popL/C5QT+3/6sPNLnPZkjHDGTyUJU1/T0iYMVt76o4vlry/kFwdURH3LVck/oNtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741555734; c=relaxed/simple;
	bh=vDwprmB/rKptJDwoftXkn/9lGHu3NVLQncoT1AVsEdM=;
	h=To:Subject:From:Message-Id:Date; b=lUgcWASVYkSSeEfJy8dsZ4xJfn51PQN9OrYzMGxBAJj3EKkyqPShOUub59U/aoIhuTTyso1dv3dheGWcLH5nMiaB0xZFxT9XmLBtrPQgUObV5Oj29UBR2WHYWemd3ruJNjNDAnw5P20d/4TGhT0oC2BFQgFyLlKWS6qqNKoBRy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPHlX71y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPHlX71y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0883C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 21:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741555733;
	bh=vDwprmB/rKptJDwoftXkn/9lGHu3NVLQncoT1AVsEdM=;
	h=To:Subject:From:Date:From;
	b=DPHlX71yCK7qBk/zG5fiSkYtVXXrRqQAqNaZoB1X+1xPCGNzBbocuOB3VHsIFftkQ
	 DzobY02vEXQxBnvD09pkQq0wbSU+HU+x8I7qtPxPTWHZL0kF2Scm6kfDChki2PsYwF
	 HVuHkH+hCGrqFvQle8/y9L7zZ5n2hRVKw0l0vZMM352Et8AmqynAKgm5/qlhN74Uku
	 O5F3plTgG3bQtmqISY6VYMU6GCFr9cRqF5fpppFmMkFK9WvkDGBHyudhlViGmoHrUp
	 UzRhbwKBgbO5OyykYxHFHJdkqSkiNA6YsvRDYVPcuiC1cOjphh4x7qIp0MN1pACE7W
	 jtQkFZYJ25rAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FBADC28B28
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 21:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174155573361.10953.9314622691915987851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf0caf449da6fa546c23d8d79d5fa0a047231ecaaa32fa1f4f9fdf2600587cec
Date: Sun, 09 Mar 2025 21:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741555733
