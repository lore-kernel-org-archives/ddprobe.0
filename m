Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A21D3438BC
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787176834; cv=none; b=XRZFBh0d/cfSREiUW+76TR1NqDVga62BEv+CwkwwpWLDpSwrfuxN6fr1reUejRtKfkxIwjr6aXS+9yGdxbLwMVLscoo5czL2fS+myWsb0PCgLwSBWvonq/T85ooiyv8DZfvnUoLKkAy+3vRTQ6vB6arZICXAOBXVfA1i2yjuxWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787176834; c=relaxed/simple;
	bh=s9wH7JeK6P72UE9+kprkxAbOkqrgrz1UsznQEVhc5PY=;
	h=To:Subject:From:Message-Id:Date; b=K5KuxF0DcA+q4kx5RD/wJD04GB4fiZGnv+RoY6+TtNoJVcTA2C0HAulzHTiIsaB7yi2LjdDgB3ShLwIaR1jha26TFHLaQTssht8dByStWvXQTTgKMi8gl4VRg6iHLYvpZXlLntJF8vYFy/au/SY+BFkNq1cP5kfFD1S/pMGAxIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TMpmQgr+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TMpmQgr+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7A51C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787176833;
	bh=s9wH7JeK6P72UE9+kprkxAbOkqrgrz1UsznQEVhc5PY=;
	h=To:Subject:From:Date:From;
	b=TMpmQgr+cMD+wLAHE402h/aZGCTYqBf6MfyPiybBB/WgXQKLKvXXyOlMgDkz6EJGU
	 suYGQvOrDF9w9phXtcBuIN3nJz6dm4iXrZanmigFvCrgATTS0tHeYFTB39N0ILwdem
	 Yxi4DZXr96dHL2/Ql8iH3hK3tn8ER4eqhqe+fUPeKfzUXQmUxcqtBApaMdSwskMDPN
	 jXAZtNqa/EeoKoMUmKzraoaSjs5doll8ZybmxygDPhjMPBC6GkPF1HPTZFVJJ9NCvm
	 FLKNl9KNSIh9/EYM9Td1a8mXS6lGt4I7WLBiPbh0hOb5uZD0Kwy3rwBjFqQlGr8sjc
	 RYSAhIZjfvj3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B548FC5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178717683373.25957.9922158880805220356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 713233f1f3e686921c537a9703f6a025de29d74ca6cc5130eb3d92adf85e4fcb
Date: Wed, 19 Aug 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787176833
