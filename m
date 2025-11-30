Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172BF1F12E9
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 19:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764531774; cv=none; b=U1FzlkX/zHIwEd3vUd4xCoAab5G5IbxL7OAjFdKqxANLqVLGna01sNnXp7nn5AWYzlLMfaTJxGVJIutLAErgCiVnFiHI4XBkPv3iCY2CEX3+Fd7eRfS0wMKBSjoZka6wqHkGauJjXGic+7BiZ/vgBzHm59aFgsbSuRI+fLyTa9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764531774; c=relaxed/simple;
	bh=Tt5JlW6CmuVIlQPheyjY0qzO8a29VlBeE7AtgqwP28g=;
	h=To:Subject:From:Message-Id:Date; b=ZzXEV2DGpp9vPBVYFQ+7LvOZbpuLFnN7eSBZ1+vMxM1OcwDUzLoV1S5BeBcpeqo9dV6ZzKdQmp0ACVoHP5aOGYV6XbmMRzKojt269Pnkr88pBZa0Ch9yCVBneDUPbmXmPzlPRYQdwRIe9NMBp2fuQdjD/LIrT85+T6tZgSJvO3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qnzbz/Iw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qnzbz/Iw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40F7C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 19:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764531773;
	bh=Tt5JlW6CmuVIlQPheyjY0qzO8a29VlBeE7AtgqwP28g=;
	h=To:Subject:From:Date:From;
	b=qnzbz/Iwqo821O9ij9xS5opGm6ygyAgCoMJpyNNu4AyIVU5UugIM2mxqUi5ATRjaE
	 wAZw3LXWsWmq9cYzdYWKNzx5JM8YN1yoZiTSUFqHNA/Sd9KF2OGgPBUHM2wz8V/q1/
	 6KP1oYERvrozcBZ81Kw1oJEgKZCtym2WapgO6eXnA+NXydlxSuhWCMKkvRcuihDMJd
	 lfIW6+bO5VWB1NHT5+uBEUmkcN0f5Wuet0pvGfEsLi1hF0OfO6r4nqtVSpBZwRTRtn
	 hk75ip8qcoc5S6k9PJLuQIo6Cvenq6YnBmWukFhuHpsNOHEY+LTktRvgEOh1+RMqi8
	 25U+PzVjrLYcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940E2CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 19:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176453177359.20748.8989409958222828568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89a9749524ee515224a3eeaeb1623b6c653578d3ee4873f505f74b32e0296740
Date: Sun, 30 Nov 2025 19:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764531773
