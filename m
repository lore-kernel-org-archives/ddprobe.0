Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C32219E0
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728807954; cv=none; b=VKB5LXVyJnd9kmQy7f17qy7eOLIwmL8tW+4UaJN+28K9l0ZVdWc5vGKdKvdt9ismdGrOa89KyPTCUk6Ukbrg2/mPy8Vuyik8IndfBQ8hR+FsHQtwOLB/rnoicqFn6NI8/+dUipeW+nRHBYvd48ZDx8a6+v1QVimGnfOdOHW/jzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728807954; c=relaxed/simple;
	bh=yyCNRSbx2yADuZy+2YR1pT9j1yc2gpchiIWEzKLx8IE=;
	h=To:Subject:From:Message-Id:Date; b=hI8sQqrKNNRzhrwfQz60NQhe/BRS/t8xG//vAkJhfsl4UHPrEhXJVNrXp4UMGHO6sR/vyzT/22o5rDzYL/BYwpLSjMH1eEz3XqsHzEIcF2TTcZoBlQDcVaErzpNMkWQYC8tRwdyUFzZjhJXcPuNRXI/HiTD4tN26VePY1yfanJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eYWF5e6M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eYWF5e6M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7747C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728807953;
	bh=yyCNRSbx2yADuZy+2YR1pT9j1yc2gpchiIWEzKLx8IE=;
	h=To:Subject:From:Date:From;
	b=eYWF5e6MPxEUkYo2901lfF/JnwPALFxj5XT+R+tMSkKbL69v+djI2RW+ShlYhmzV3
	 goZN8xUgRNjH6PvkC8VDDE0KuFUjDtTtsGmacQc0HPdiTCWe3aoCW0A26fQxvgxOYy
	 nwfgsYJgV45dxyidK1yzss3CRxfuo/QXGrJKIlpBUYz6tg/58caC3hFRo5EnJGnWqk
	 sSiym8RDI/m3tPcxy1TN2v4acm3odiicd9g4LHVNin4qrYtYglILc8AbU0qZwtz2g2
	 LrCzy8L2+1A1gWGQsJOgInuYDL4R2Y5vq9A2WiJeFAvfzHLsNrPRLUE9Xbi0SU0ykI
	 Vu1tAiUdXEHfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958B8CF2576
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172880795358.12869.8207741771827392476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d3107493b1aac35e70b922a928a8a1b16e3315c81b6749d30569e7fa8d8e0bd
Date: Sun, 13 Oct 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728807953
