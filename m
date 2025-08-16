Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCC4225779
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755375596; cv=none; b=aCdWoqvzSvsU655Oj6jOBOyCWAziFHI+7DEB9Ui5HICWNHi1BEbJ1xCkPbQl305XKBjNoDH/Yu/t/PoQjltbWnlvjmkDK14FnB88Ux5sUaiCmTBSBUCW1oE+jis+923LNCCJkhoBZuxDKq+5SiKF0bAI6SVvtL4boe0fAbSsHgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755375596; c=relaxed/simple;
	bh=0d4XxJ9DzI2pJvxaQ4l1QVF2lUByvV95gKRqOcNk+Tw=;
	h=To:Subject:From:Message-Id:Date; b=trw3IBD/W2vttLmP631yaS0/kp8Ukt3XMePqJ3FHjOYS9yEOmbCTqshJM6rn5+l/6ujAcXr/w4ivzaRrWYClzHyzchcQeKra9mOa+IzcFsy/BQnNrq049tf2dk/TdRopRfm7WopPcR9CsXEGyt4AqM/7DkV6WCL4Ol/nKI461rM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hyE5x2Mc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hyE5x2Mc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4322C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755375593;
	bh=0d4XxJ9DzI2pJvxaQ4l1QVF2lUByvV95gKRqOcNk+Tw=;
	h=To:Subject:From:Date:From;
	b=hyE5x2Mc1tIx8GftyxTFzAQtOZbhCfBQ+47m56K7pPOBbS3vMinMRl9l5efoGcd8N
	 WCdErI9V0pUM2TTr9aqcVArnqm+o2+GjzEhzox6okHJvQ5/5fWUd/qG97MnAuc+uEP
	 h+Ef2LgVrU4+fX9At0Nu235kjENeZANcN7/7avPESx6VoZKXhv37lIw+WLCbaP6Hh/
	 dg3Z2ssLuFQ+nxoUEDbAoOyVy0MsGd7TpL4GnAlGRR9C3MaK1500nA/gPoyabBWbe1
	 3rN1hDw5wAX58S5CCXLVd3i4Bo5M1LlU7cw+/4DtL+suiH59HmY2R0RJUBJiO8d4VN
	 yBO/QMCgcwNcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924F2CA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175537559357.8464.12930484047784748393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1d514258d698d83c452f316ea9f5048f47e8fc0924b9ddeec7606709ca04b5d
Date: Sat, 16 Aug 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755375593
