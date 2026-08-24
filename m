Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594FC407569
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787567434; cv=none; b=UCzNRetTPGomVwe7mRGLYNx3RF4WOwNhwjCm4eIjzfw2ZBQ3l1FOgny1c9YB+c45kO2YCMhgQfB194Wksja7YKK1KNZHwrfx9rCIWfi3aq0ral/nKO6lRG0FXa08zdRM5RHGBOiOX6SwnwoADgaFxMp7SX00hdAOkrNQZY4Xtu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787567434; c=relaxed/simple;
	bh=1vlQyAzv8hjETpmJGF3JkAENeM5gbKxX3k0yhytpsCY=;
	h=To:Subject:From:Message-Id:Date; b=irthO/2S5YlfP7JrgGjJE/Z2JmcYRf/tUWabtJul9fn8OUxCXgXHEbJPjJaRPL3v94c4LsQvmrqapUhSkeZw5BrUN+6L5jd8IGghY2892JVmxK+N7CMO5dn+7qe7aT/QaKFLkqqmVs60ouBp23owLM55E40J8duLUY0ClcqUsZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RUKADEyY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RUKADEyY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04AEC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787567433;
	bh=1vlQyAzv8hjETpmJGF3JkAENeM5gbKxX3k0yhytpsCY=;
	h=To:Subject:From:Date:From;
	b=RUKADEyYyGLrpUyiF2lUk1IzTdOYfNNO60zXQAP7wF/SDLjIg8KyaBYqrrmd485r9
	 0C/Rq94fZ+AHXGhvlW2dRulJFZrL0HeCUJSZlUsPzfTA4bvsB9JWRjWCrJcUFNG2cT
	 fUmRGoGNe62b2asJQLUbzDLf/3/VTYLC4QIfwM37aIk9l59QLKzxTJHAbwI579Y8Tq
	 Jm+0anFer8+FWhmsaUjJnrUvOlELeO8ZcueFE4c7IfVMzcyNQuz7l7McA6GQuMt0b8
	 j+MoCX7/tFBuB9cDpT4mPGSyiiEGVMwdrz1YCpv+feDBZITsAkKaIrDGhaiNMISg/0
	 y7H3ncoTVFCIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8A2C5DF9C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178756743369.22642.4747060042744162898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a90219899ed8d418aeee078893b2721393de59545ae380d7343f70b763228e41
Date: Mon, 24 Aug 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787567433
