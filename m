Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CE118F2C3
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735038954; cv=none; b=DWEFk+eAFT5QDxoyaordBJhhvKCE1hkLBUwDl3DodZPu7uvX8uLHWccWfVpGLmLv6NPb0K4GpaG7EzLcJMa41q7nNP5WM/Fzppv8Rk+rRZD8l15Y3pMG5mPE/sGTKzAMbbZlAQASaju3skkLj4Y9MHrNsf541ucwLSricMHyhPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735038954; c=relaxed/simple;
	bh=dStfPvz/5cK67vbpt5pSQkFn3JrOea/IJz37cz9C0lc=;
	h=To:Subject:From:Message-Id:Date; b=c2w2Tq3tUwYr13LKYJLAa+99YXzbG4dZFsfDMxRamiueer9hGioQcjbHnqtFWhWB3gJ12c522mGoR6qqihRKZBlxCDeQqFwZIHgJ4yQdUKxxKPKBjfDOID/nU0ssgjhf/aJrihWcu+C76kMo7Cx91kEWpjE8SRufO4NkRy0bBTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nv6tb4lk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nv6tb4lk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD7AEC4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735038953;
	bh=dStfPvz/5cK67vbpt5pSQkFn3JrOea/IJz37cz9C0lc=;
	h=To:Subject:From:Date:From;
	b=Nv6tb4lk1wINeBGVMHCnFIjDfuBIz9kNPqAU+Nn/qLh5cnRLnEUsXgButNSnH58AN
	 e/NEpz5IfRidnpoKed9nRv9KlrwFIq6h9ooWwx5+5YT10Frk2yZz1bv8G5tXRgGoiB
	 zsXrlqeN1qoGGSfBwmzwSYxkm2IGkh6az+OsO3K20Mw9eneDAdlEvStXZFBUlRbBKV
	 BbzEm9LorNaHesvY7QOEt1ZyAiU+eGAPNpgukOBKLfwzJdVkiyWESCBncycfYtL80F
	 dKVoxXqmdSq6YRvTs6p2NPkd2C5YGp1cb/YyQVsEYVY6dXlFqhUeovK5ZDtWHla571
	 0hvneJnCpARPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A90E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173503895363.10574.6542903859628057013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfc9939dca6145e79a86c8fab75dde96ad1f3aeef4033eec233e1155f5b48494
Date: Tue, 24 Dec 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735038953
