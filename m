Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AA11D61BC
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 03:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765855974; cv=none; b=XtgymCK3d7KVzsfjMkB+K3jCrOJHCKKV/zUfUu12aq8LN7pDWg9wkvYcD862hLffWVbrQ2Bi5ym1l1thAXa3Og2FPcLT02I8VfnPZY1QC3hg1GwfAKWc0MFw30rLDawZxupYeN/iGBglQSsWdO1JY+KKD1Td789aj0FQ+e9ias8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765855974; c=relaxed/simple;
	bh=ZjXvlXpgy38zVp7f+V6q/XX5Dp1DN2hd526jijJxRBA=;
	h=To:Subject:From:Message-Id:Date; b=UQSZHh3ppW251H2sBqNtz1wcj6fE6OuiT/7Xgf1eDIx/FkzFoDV463Lv1YByZqjj8AUS0cto4vOj43fyU6A8HJljyeg6Efvt88HlmsTKYOhEb/iPhpzLu8fMUDAL7ShbSQnmwnmLOsYT7a4r+bIH2hl+cL9VUlLIsJGEwGhP5Fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EskXHHja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EskXHHja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49A0C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 03:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765855973;
	bh=ZjXvlXpgy38zVp7f+V6q/XX5Dp1DN2hd526jijJxRBA=;
	h=To:Subject:From:Date:From;
	b=EskXHHja6RVPfzlzb+dsCF2NCqPM1JyzpuV/Q4qjoqTKGl5zSDve6jdi+gUSSgFZI
	 LfDPx0WbgBzUMro1QUUO8ydI8govjzxIsSYtC2odIcmMzY6C2itohLoLYs4OPGyfbZ
	 DqWndzz/UNrx9jfn/NuLVhyLkVBAcSzS754svcgjLC9MqSMs0+G5suT3xSMvpc5uyY
	 zApAXIOKs/C0QmCtE+dwGew2c7vXFFc9w7jENwSQBfaCmoGpea5LZpfpiBxASzNcu+
	 I7BK5JqIB49mReoUPXRX9ZdDLGtqDJAV5WQX6+u62PP/XH2CznogyL5C6rHRVATU6H
	 gMiqYrlaVDbtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943DBD5B161
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 03:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176585597359.29795.15834378250475740096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 584dc150dbdd5631931a089640ba4c27fcf5ee7cf414e3938e3f2f54104b1370
Date: Tue, 16 Dec 2025 03:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765855973
