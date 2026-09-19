Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4641E28B4E2
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789847434; cv=none; b=MleXOFnFQLbbjGtD2laoc6ElBQPkFpU3ho46N84S/4nz21kuxExzxpGHBOq7+KfOW4IG0hv7nVK/lNMUUlWHFjo1k5IAu7w+7L+M6yriT4jHJnnqRtTa9qcNWnagqwdoDJs1HCBF8zpJ14FO3Qqij4CYHcOz4fBF4QcwAQ+etYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789847434; c=relaxed/simple;
	bh=JQbUiIkUExmLMUc9wadHj2LiTWWqbN9TfbzZqGb06qg=;
	h=To:Subject:From:Message-Id:Date; b=auHnJukzQDvxL1pjgH4qCcyOyCkhDpEmDwBAo3GOQ6ZvO097ZYeDY4p+4ttxz857GVdQJEwRAh3EUPJ2wEzbQ+Qd2c+hU/zAbsSB2MBP3kFrcbudc00Op6+jRFaqneYqFyYvEtsTjwO0HO14oD9kasb0NENKj4EFxXb1TrXCwAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cq/S7h3a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cq/S7h3a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28A4C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789847433;
	bh=JQbUiIkUExmLMUc9wadHj2LiTWWqbN9TfbzZqGb06qg=;
	h=To:Subject:From:Date:From;
	b=cq/S7h3apCdY6xnMrAY7BwEjS6vcSbjzY4zfj4MVp3KYQq3LXt+WN5NoEqOwksJGe
	 c6pu/O1rZ3aWoPhZJ0gJip/+J9h803O2GRukGMcFun00DHRtDlk1RPALI6YjKsZoac
	 FOKTLN8uZ5HTQnJIMnfdv6QBBgK0KZvETrX2DaN0rVuUMjT0mDN7u9WV+YyUf7wsMq
	 k2HWo55U/OOO3Zr5Ngk1k+2O81mSL4D1mMOV8FFlgNd2PkIGzLQhMdhq276GqwlvX6
	 WVWENJP0a1VNCX77u3j12rhXjEdnybj2OyJNEqnLJZx1jsU38KUwWb5Tx7aegWvspf
	 0HxebFC502lRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF43EC982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178984743368.16235.9371945731236742540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5802724508781ddcaf883002c7fb9595f5b9b2c321fde45b7e06a3c48c58b656
Date: Sat, 19 Sep 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789847433
