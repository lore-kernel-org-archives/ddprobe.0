Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5212D155CB3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762056594; cv=none; b=k/Joi3QIN9PYl1+p3rMRnQqQ9SXlw4aPxz6aNmc3CzN7cdFGjrasjCuaFRS2xWAULW2as07Ybv+ucKH3Z7QtLabbXbHyk3/1RJZt6TMuUgGO8gL6g5fWjeSJ33oAOvIlQ1bgzQQnki0f9+6i7R5zjfwlK/cXbR+mg6ed5+TJlxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762056594; c=relaxed/simple;
	bh=C+NOKTgCwHbZ0oX42j/WK3R3zE53+lCp+/9WUCVRaQo=;
	h=To:Subject:From:Message-Id:Date; b=YHgZI1TRinbZNxAqeHdGymzaxI6WM1s380DJFfeOTM0aoBMjaZULdDd/khKeR/E6GY/7+mKEGt5WTATyaSIcHE/+Pi20qKz8PhRvN3X7DbpvQ5T319rBJymtyBtV6UwiGhSeI6TOBYTRS1eJtP/1gpXYpPfgS8Oq4e+TawqQ0qU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n4++Xb8p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n4++Xb8p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE7FC116B1
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762056593;
	bh=C+NOKTgCwHbZ0oX42j/WK3R3zE53+lCp+/9WUCVRaQo=;
	h=To:Subject:From:Date:From;
	b=n4++Xb8pcQycXKvv1odgLezBLjakDd4pOgcyNih8o8z/egRE7DvP59fNud7dtNddu
	 vLH7fIxSkPxYwelQ8/F3SooajybNp8a4zZiGAd0ikiA9+yiXK6Z3v39dtPWrYgG1OT
	 LKdPFh2V3LicOqLJedn7O2pSYtyzbRLsfjvnCkP0gG5f4bRpQ7H9wp1DSb/xPQMPrs
	 fHzas/YJ/LzV9HD5NtyexEnInhxNy19BiA77K3Q0fQ7EafhKxfvi34xFFLJBrlBCCA
	 0y6SfCtha9aaevNW2GxBWS8sGGx1peV1DqemZj/9R9haUBxqtueld2yJMtXKJS3Zht
	 Uu3942RhKXtRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8974CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176205659367.10408.12736327241283941605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6d2637a544eda4d9698414fa95d438743d7504b2297d1a79d35cb140a8d772f
Date: Sun, 02 Nov 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762056593
